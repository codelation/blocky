module BlockyHelper

  def blocky(block_name, options={})
    controller_name = options[:global] ? nil : controller.controller_name
    action_name     = options[:global] ? nil : controller.action_name

    content_block = Blocky::ContentBlock.where({
      controller: controller_name,
      action: action_name,
      name: block_name
    }).first_or_create

    Rails.cache.fetch(content_block, skip_digest: options[:global]) do
      raw(content_block.content)
    end
  end

end
