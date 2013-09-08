class Fellowship < ActiveRecord::Base
  attr_accessible :lei, :name, :num
  has_many :guans
  has_many :shenqings, :through => :guans
end
