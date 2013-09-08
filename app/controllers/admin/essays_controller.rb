class Admin::EssaysController < ApplicationController
  def create
    render :text => params[:fellowship].to_s
  end
end
