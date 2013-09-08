class MeetsController < ApplicationController
  def index
    @meet = Meet.last
  end
end
