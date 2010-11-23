class AddColumnCityToParties < ActiveRecord::Migration
  def self.up
    add_column :parties, :city, :string
  end

  def self.down
    remove_column :parties, :city
  end
end
