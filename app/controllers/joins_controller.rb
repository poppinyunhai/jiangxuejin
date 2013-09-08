class JoinsController < ApplicationController
  def index
    @join = Join.last
  end
end
