class AddDescription < ActiveRecord::Migration
  def up
    add_column :buildings, :description, :text
  end
  def down
    remove_column :buildings, :description
  end
end
