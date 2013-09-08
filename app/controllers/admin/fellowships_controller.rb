class Admin::FellowshipsController < Admin::ApplicationController
  def new
    @fellowship = Fellowship.new
  end

  def create
    @fellowship = Fellowship.create(params[:fellowship])
    redirect_to admin_fellowships_path
  end

  def index
    @fellowship = Fellowship.page(params[:page]).per(30).order("id DESC")
  end

  def edit
    @fellowship = Fellowship.find(params[:id])
  end

  def update
    @fellowship = Fellowship.find(params[:id])
    @fellowship.update_attributes(params[:fellowship])
    redirect_to admin_fellowships_path
  end

  def destroy
    @fellowship = Fellowship.find(params[:id])
    @fellowship.destroy
    redirect_to admin_fellowships_path
  end
end
