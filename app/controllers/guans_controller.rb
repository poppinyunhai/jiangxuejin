class GuansController < ApplicationController
  # before_filter :find_shen
  def new
    @shen = params[:fellowship]
    @guan = Guan.new
  end

  def create
    @shenqing = Shenqing.create(params[:shenqing])
    @guan = Guan.create()
    @shen.each do |f|
      @guan = Guan.create(:fellowship_id => f)
    end
  end

  # def find_shen
  #   @shen = params[:fellowship]
  # end
end
