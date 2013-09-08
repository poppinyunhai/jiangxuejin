class Admin::ShenqingsController < Admin::ApplicationController
  def index
    @shenqing = Shenqing.all
  end

  def show
    @shenqing = Shenqing.find(params[:id])
  end

  def destroy
    @shenqing = Shenqing.find(params[:id])
    @shenqing.destroy
    redirect_to admin_shenqings_path
  end
end
