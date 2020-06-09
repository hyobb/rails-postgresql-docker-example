class HomeController < ApplicationController
  def index
    @message = "Dynamic page"

    @employments = Employment.all
  end
end
