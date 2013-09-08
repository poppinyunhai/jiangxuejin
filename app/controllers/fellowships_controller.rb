class FellowshipsController < ApplicationController
  def index
    @fellowship = Fellowship.all
  end
end
