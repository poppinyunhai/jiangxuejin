class Admin::JoinsController < Admin::ApplicationController
  def new
    @join = Join.new
  end

  def create
    @join = Join.create(params[:join])
    redirect_to admin_joins_path
  end

  def index
    @join = Join.last
  end

  def edit
    @join = Join.find(params[:id])
  end

  def update
    @join = Join.find(params[:id])
    @join.update_attributes(params[:join])
    redirect_to admin_joins_path
  end
end
