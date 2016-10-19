class GrowllersController < ApplicationController
  def index
    @growllers = Growller.all
  end
end
