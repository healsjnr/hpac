class CreateContent < ActiveRecord::Migration
  def up
    create_table :contents do |t|
      t.string :page
      t.string :title
      t.text :content
      t.timestamps
    end
  end

  def down
    drop_table :content
  end
end
