class AddStateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_state, :string
  end
end
