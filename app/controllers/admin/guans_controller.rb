class Admin::GuansController < Admin::ApplicationController
  def index
    @shenqing = Shenqing.all
  end
end
