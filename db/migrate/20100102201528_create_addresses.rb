class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :lastname
      t.string :firstname
      t.string :nickname
      t.string :address
      t.belongs_to :salutation, :default => 1
      t.date :birthday
      t.boolean :deleted, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
