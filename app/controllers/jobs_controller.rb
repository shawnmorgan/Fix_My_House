class JobsController < ApplicationController

    def index
       # @jobs = Job.all
       @jobs = Job.where(user_id: current_user.id)
    end

    def show
       @job = Job.find(params[:id]) 
       #@comments = @job.comments
       #@comments = Comment.where(job_id: @job.id)
       #@comment = @job.comments.build
       @hash = Gmaps4rails.build_markers(@job) do |job, marker|
            marker.lat job.latitude
            marker.lng job.longitude
end
    end
    
    def new
        @job = Job.new
    end
    
    def create
        @job = Job.new(job_params)
        # @job.user = User.find(2)
        @job.user_id = current_user.id
        
        if @job.save
            flash[:success] = "Your Job was created successfully!"
            redirect_to jobs_path
            
        else
            render :new
        end
    
    end
    
    def edit
        @job = Job.find(params[:id])
    end
    
    def update 
        @job = Job.find(params[:id])
        if @job.update(job_params)
            flash[:success] = "Your Job was udpated successfully!"   
            redirect_to jobs_path(@job)
        else
        render :edit
        end
    end
    
    private
    
        def job_params
           params.require(:job).permit(:job_title, :job_address, :job_description, :job_contact_name, :job_contact_phone, :job_contact_email, :job_request_date, :picture)
        end
    
    
    
    
end
