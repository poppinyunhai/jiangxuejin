class Meng < ActiveRecord::Base
  attr_accessible :company, :email, :li, :name, :phone, :qq, :zhi
  validates_presence_of :company, :name, :email, :phone, :qq, :zhi
end
