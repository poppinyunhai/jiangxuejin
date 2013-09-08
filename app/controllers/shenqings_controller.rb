class ShenqingsController < ApplicationController
  before_filter :find_shen
  def new
    @shenqing = Shenqing.new
    @newshen = @shen.join(',')
  end

  def create
    @shenqing = Shenqing.new(params[:shenqing])
    @shenqing.save
    @shen = @shen.split(',')
    @shen.each do |s|
      @guan = Guan.create(:fellowship_id => s.to_i, :shenqing_id => @shenqing.id )
    end
    if @guan.save
      redirect_to successt_path
    else
      redirect_to errort_path
    end
  end

  def destroy
    @shenqing = Shenqing.find(:id)
    @shenqing.destroy
    redirect_to admin_shenqings_path
  end

  def find_shen
    @shen = params[:fellowship]
  end
end
