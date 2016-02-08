class CommentsController < ApplicationController

  def create
    @job = Job.find(params[:job_id])
    @comment = @job.comments.create(params[:comment].permit(:commenter, :body))
    
    redirect_to job_path(@job)
  end
    
    
    
end
