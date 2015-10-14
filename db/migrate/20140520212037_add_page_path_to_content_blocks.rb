class AddPagePathToContentBlocks < ActiveRecord::Migration
  def change
    add_column :blocky_content_blocks, :page_path, :string
    remove_column :blocky_content_blocks, :controller, :string
    remove_column :blocky_content_blocks, :action, :string
  end
end
