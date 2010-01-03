class AddSalutation < ActiveRecord::Migration
  def self.up
    Salutation.delete_all
    Salutation.create(:pattern => '(性名)さん')
    Salutation.create(:pattern => '(性名)様')
    Salutation.create(:pattern => '(性名)殿')
    Salutation.create(:pattern => '(性名)先生')
    Salutation.create(:pattern => '(性名)教授')
    Salutation.create(:pattern => '(性名)')
    Salutation.create(:pattern => '(性)さん')
    Salutation.create(:pattern => '(性)様')
    Salutation.create(:pattern => '(性)殿')
    Salutation.create(:pattern => '(性)先生')
    Salutation.create(:pattern => '(性)教授')
    Salutation.create(:pattern => '(性)')
    Salutation.create(:pattern => '(名)さん')
    Salutation.create(:pattern => '(名)様')
    Salutation.create(:pattern => '(名)殿')
    Salutation.create(:pattern => '(名)')
    Salutation.create(:pattern => '(ニックネーム)さん')
    Salutation.create(:pattern => '(ニックネーム)様')
    Salutation.create(:pattern => '(ニックネーム)殿')
    Salutation.create(:pattern => '(ニックネーム)')
    Salutation.create(:pattern => 'Mr. (名 性)')
    Salutation.create(:pattern => 'Ms. (名 性)')
    Salutation.create(:pattern => 'Mr. (性)')
    Salutation.create(:pattern => 'Ms. (性)')
  end

  def self.down
  end
end
