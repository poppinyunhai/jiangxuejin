class Guan < ActiveRecord::Base
  attr_accessible :fellowship_id, :shenqing_id
  belongs_to :fellowship
  belongs_to :shenqing
end
