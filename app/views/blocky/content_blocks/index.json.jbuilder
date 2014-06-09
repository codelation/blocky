json.content_blocks @content_blocks do |content_block|
  json.id content_block.id

  json.content   content_block.content
  json.name      content_block.name
  json.page_path content_block.page_path

  json.created_at content_block.created_at
  json.updated_at content_block.updated_at
end
