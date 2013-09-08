class Meet < ActiveRecord::Base
  attr_accessible :content, :avatar
  has_attached_file :avatar
end
