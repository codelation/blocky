module BlockyHelper

  def blocky(block_name, options={}, &block)
    ap request.path
    page_path = options[:global] ? nil : request.path

    content_block = Blocky::ContentBlock.where({
      page_path: page_path,
      name: block_name
    }).first_or_initialize

    if content_block.new_record?
      if block_given?
        content_block.content = capture(&block)
      end
      content_block.save
    end

    Rails.cache.fetch(content_block, skip_digest: options[:global]) do
      raw(content_block.content)
    end
  end

end
