class Shenqing < ActiveRecord::Base
  attr_accessible :ability, :abilitya, :abilityb, :adept, :bir, :cert, :certa, :certb, :email, :hobby, :htime, :htimea, :htimeb, :lang, :langa, :langb, :learn, :learna, :learnb, :learnc, :name, :phone, :pro, :proa, :prob, :proc, :record, :recorda, :recordb, :recordc, :school, :schoola, :schoolb, :schoolc, :sex, :shen, :tell, :time, :timea, :timeb, :timec, :level, :jtime, :jtimea, :jtimeb, :project, :projecta, :projectb, :award, :awarda, :awardb, :remark, :remarka, :remarkb
  has_many :guans
  has_many :fellowships, :through => :guans
end
