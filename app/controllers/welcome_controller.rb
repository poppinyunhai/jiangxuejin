class WelcomeController < ApplicationController
  def index
    @q = Hschool.search(params[:q])
    @fellowship = Fellowship.page(params[:page]).per(10).order("id DESC")
    @meet = Meet.first
    @dong = Dong.last
  end
end
