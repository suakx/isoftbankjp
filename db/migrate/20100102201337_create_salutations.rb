class CreateSalutations < ActiveRecord::Migration
  def self.up
    create_table :salutations do |t|
      t.string :pattern

      t.timestamps
    end
  end

  def self.down
    drop_table :salutations
  end
end
