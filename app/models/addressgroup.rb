class Addressgroup < ActiveRecord::Base
  belongs_to :group
  belongs_to :address
end
