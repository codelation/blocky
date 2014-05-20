module BlockyHelper

  def blocky(block_name, options={})
    page_path = options[:global] ? nil : request.fullpath

    content_block = Blocky::ContentBlock.where({
      page_path: page_path,
      name: block_name
    }).first_or_create

    Rails.cache.fetch(content_block, skip_digest: options[:global]) do
      raw(content_block.content)
    end
  end

end
