class AddColumnStateToParties < ActiveRecord::Migration
  def self.up
    add_column :parties, :state, :string
  end

  def self.down
    remove_column :parties, :state
  end
end
