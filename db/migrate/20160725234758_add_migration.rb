class AddMigration < ActiveRecord::Migration
  def change
  	add_column :locations, :max_slots, :integer
  	add_column :locations, :address, :string
  	add_column :locations, :name, :string
  end
end
