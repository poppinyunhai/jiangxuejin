class MengsController < ApplicationController
  def new
    @meng = Meng.new
  end

  def create
    @meng = Meng.create(params[:meng])
    if @meng.save
      redirect_to success_path
    else
      redirect_to error_path
    end
  end
end
