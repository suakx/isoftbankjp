class Email < ActiveRecord::Base
  belongs_to :address
  belongs_to :template
end
