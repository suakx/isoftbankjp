class Address < ActiveRecord::Base
  belongs_to :salutation
  has_many :emails
  has_many :addressgroups
  has_many :groups, :through => :addressgroups

  def salutation
    case self.salutation_id
    when 1
      "#{self.lastname}#{self.firstname}さん"
    when 2
      "#{self.lastname}#{self.firstname}様"
    when 3
      "#{self.lastname}#{self.firstname}殿"
    when 4
      "#{self.lastname}#{self.firstname}先生"
    when 5
      "#{self.lastname}#{self.firstname}教授"
    when 6
      "#{self.lastname}#{self.firstname}"
    when 7
      "#{self.lastname}さん"
    when 8
      "#{self.lastname}様"
    when 9              
      "#{self.lastname}殿"
    when 10             
      "#{self.lastname}先生"
    when 11             
      "#{self.lastname}教授"
    when 12             
      "#{self.lastname}"
    when 13
      "#{self.firstname}さん"
    when 14
      "#{self.firstname}様"
    when 15
      "#{self.firstname}殿"
    when 16
      "#{self.firstname}"
    when 17
      "#{self.nickname}さん"
    when 18             
      "#{self.nickname}様"
    when 19             
      "#{self.nickname}殿"
    when 20             
      "#{self.nickname}"
    when 21
      "Mr. #{self.firstname} #{self.lastname}"
    when 22                               
      "Ms. #{self.firstname} #{self.lastname}"
    when 23                               
      "Mr. #{self.lastname}"
    when 24                               
      "Ms. #{self.lastname}"
    end
  end
end
