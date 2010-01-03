class CreateEmails < ActiveRecord::Migration
  def self.up
    create_table :emails do |t|
      t.belongs_to :address
      t.belongs_to :template
      t.boolean :sentmail, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :emails
  end
end
