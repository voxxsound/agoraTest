class AddColumnZipToParties < ActiveRecord::Migration
  def self.up
    add_column :parties, :zip, :string
  end

  def self.down
    remove_column :parties, :zip
  end
end
