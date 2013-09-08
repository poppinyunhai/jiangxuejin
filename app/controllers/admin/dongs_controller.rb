class Admin::DongsController < Admin::ApplicationController
  def new
    @dong = Dong.new
  end

  def create
    @dong = Dong.create(params[:dong])
    redirect_to admin_dongs_path
  end

  def index
    @dong = Dong.last
  end

  def edit
    @dong = Dong.find(params[:id])
  end

  def update
    @dong = Dong.find(params[:id])
    @dong.update_attributes(params[:dong])
    redirect_to admin_dongs_path
  end
end
