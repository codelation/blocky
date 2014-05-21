# This migration comes from blocky (originally 20140520212037)
class AddPagePathToContentBlocks < ActiveRecord::Migration
  def change
    add_column :blocky_content_blocks, :page_path, :string
    remove_column :blocky_content_blocks, :controller
    remove_column :blocky_content_blocks, :action
  end
end
