class Admin::AboutsController < Admin::ApplicationController
  def new
    @about = About.new
  end

  def create
    @about = About.create(params[:about])
    redirect_to admin_abouts_path
  end

  def index
    @about = About.last
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    @about.update_attributes(params[:about])
    redirect_to admin_abouts_path
  end
end
