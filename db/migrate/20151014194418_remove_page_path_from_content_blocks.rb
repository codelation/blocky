class RemovePagePathFromContentBlocks < ActiveRecord::Migration
  def change
    remove_column :blocky_content_blocks, :page_path, :string
  end
end
