class AddJobIdAndUserIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :job_id, :integer
  end
end
