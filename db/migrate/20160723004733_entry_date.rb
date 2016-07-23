class EntryDate < ActiveRecord::Migration
  def self.up
  	rename_column :park_records, :date_details, :entry_date
  end
end
