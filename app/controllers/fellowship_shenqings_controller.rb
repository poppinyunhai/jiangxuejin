class FellowshipShenqingsController < ApplicationController
  before_filter :find_shen
  def new
    @shenqing = Shenqing.new
  end

  def create
    @shenqing = Shenqing.new(params[:shenqing])
    @shenqing.save
    @guan = Guan.create(:fellowship_id => @shen )
  end

  def find_shen
    @shen = params[:fellowship]
  end
end
