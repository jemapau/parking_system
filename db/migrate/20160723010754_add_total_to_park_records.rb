class AddTotalToParkRecords < ActiveRecord::Migration
  def change
    add_column :park_records, :total, :float
  end
end
