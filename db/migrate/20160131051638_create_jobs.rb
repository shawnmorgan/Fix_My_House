class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title, :job_address, :job_contact_name, :job_contact_phone
      t.text :job_description
      t.timestamps
    end
  end
end
