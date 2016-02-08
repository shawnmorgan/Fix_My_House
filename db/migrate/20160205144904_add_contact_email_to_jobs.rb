class AddContactEmailToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_contact_email, :string
  end
end
