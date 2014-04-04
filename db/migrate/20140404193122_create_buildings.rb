class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :street_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
