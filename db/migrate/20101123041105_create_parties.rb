class CreateParties < ActiveRecord::Migration
  def self.up
    create_table :parties do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :parties
  end
end
