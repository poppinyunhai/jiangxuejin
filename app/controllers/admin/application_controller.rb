class Admin::ApplicationController < ApplicationController
  layout 'admin'
  before_filter :admin
  def admin
    if signed_in? == false
      redirect_to root_path
    end  
  end
end