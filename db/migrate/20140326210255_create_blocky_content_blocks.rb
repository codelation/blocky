class CreateBlockyContentBlocks < ActiveRecord::Migration
  def change
    create_table :blocky_content_blocks do |t|
      t.string :controller
      t.string :action
      t.string :name
      t.text   :content

      t.timestamps
    end
  end
end
