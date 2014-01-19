class RefactorContent < ActiveRecord::Migration
  def change
    add_column :contents, :content_id, :string    
  end
end
