# Rails view helper for rendering Blocky content inside view templates.
module BlockyHelper
  # Render a Blocky content block with the given content key.
  # @param content_key [String]
  def blocky(content_key, &block)
    content_block = Blocky::ContentBlock.where(content_key: content_key).first_or_initialize

    if content_block.new_record?
      content_block.content = capture(&block) if block_given?
      content_block.save
    end

    Rails.cache.fetch(content_block, skip_digest: true) do
      raw(content_block.content)
    end
  end
end
