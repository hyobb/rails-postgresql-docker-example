class HomeController < ApplicationController
  def index
    @message = "Dynamic page"

    @employments = Employment.all
  end

  def write_resume
    ::IncrementResumeCountWorker.perform_async(params[:employment_id])
    redirect_to root_path
  end
end
