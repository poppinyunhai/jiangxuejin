class HschoolsController < ApplicationController

  def index
    @q = Hschool.search(params[:q])
    @people = @q.result(distinct: true)
  end
  def search
    index
    render :index
  end
end
