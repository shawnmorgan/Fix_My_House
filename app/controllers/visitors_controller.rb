class VisitorsController < ApplicationController

    def show
       @job = Job.find(params[:id])  
       @comment = Comment.find(params[:id])
    end
end
