class Admin::LiansController < Admin::ApplicationController
  def new
    @lian = Lian.new
  end

  def create
    @lian = Lian.create(params[:lian])
    redirect_to admin_lians_path
  end

  def destroy
    @lian = Lian.find(params[:id])
    @lian.destroy
    redirect_to admin_lians_path
  end

  def index
    @lian = Lian.all
  end

  def edit
    @lian = Lian.find(params[:id])
  end

  def update
    @lian = Lian.find(params[:id])
    @lian.update_attributes(params[:lian])
    redirect_to admin_lians_path
  end
end
