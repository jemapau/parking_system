class AddExitDateToParkRecords < ActiveRecord::Migration
  def change
    add_column :park_records, :exit_date, :datetime
  end
end
