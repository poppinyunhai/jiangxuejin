class DongsController < ApplicationController
  def index
    @dong = Dong.last
  end
end
