class CreateBlockyContentBlocks < ActiveRecord::Migration
  def change
    create_table :blocky_content_blocks do |t|
      t.string :content_key, index: true
      t.text   :content
      t.string :description # Optional description for the content block

      t.timestamps
    end
  end
end
