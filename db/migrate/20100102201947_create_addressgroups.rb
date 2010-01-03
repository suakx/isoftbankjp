class CreateAddressgroups < ActiveRecord::Migration
  def self.up
    create_table :addressgroups do |t|
      t.belongs_to :address
      t.belongs_to :group

      t.timestamps
    end
  end

  def self.down
    drop_table :addressgroups
  end
end
