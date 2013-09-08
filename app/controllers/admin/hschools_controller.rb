class Admin::HschoolsController < Admin::ApplicationController
  def new
    @hschool = Hschool.new
  end

  def create
    @hschool = Hschool.create(params[:hschool])
    redirect_to admin_hschools_path
  end

  def index
    @hschool = Hschool.all
  end

  def edit
    @hschool = Hschool.find(params[:id])
  end

  def update
    @hschool = Hschool.find(params[:id])
    @hschool.update_attributes(params[:hschool])
    redirect_to admin_hschools_path
  end

  def destroy
    @hschool = Hschool.find(params[:id])
    @hschool.destroy
    redirect_to admin_hschools_path
  end
end
