class Admin::MengsController < Admin::ApplicationController
  def index
    @meng = Meng.page(params[:page]).per(30).order("id DESC")
  end

  def destroy
    @meng = Meng.find(params[:id])
    @meng.destroy
    redirect_to admin_mengs_path
  end
end
