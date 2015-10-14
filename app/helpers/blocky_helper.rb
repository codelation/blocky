module BlockyHelper
  def blocky(block_name, &block)
    content_block = Blocky::ContentBlock.where(name: block_name).first_or_initialize

    if content_block.new_record?
      content_block.content = capture(&block) if block_given?
      content_block.save
    end

    Rails.cache.fetch(content_block, skip_digest: true) do
      raw(content_block.content)
    end
  end
end
