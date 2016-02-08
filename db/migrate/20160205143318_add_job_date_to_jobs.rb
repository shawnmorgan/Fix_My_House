class AddJobDateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_request_date, :string
  end
end
