class Admin::MeetsController < Admin::ApplicationController
  def new
    @meet = Meet.new
  end

  def create
    @meet = Meet.create(params[:meet])
    redirect_to admin_meets_path
  end

  def index
    @meet = Meet.all
  end

  def edit
    @meet = Meet.find(params[:id])
  end

  def update
    @meet = Meet.find(params[:id])
    @meet.update_attributes(params[:meet])
    redirect_to admin_meets_path
  end
end
