class Group < ActiveRecord::Base
  has_many :addressgroups
  has_many :addresses, :through => :addressgroups
end
