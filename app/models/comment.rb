class Comment < ActiveRecord::Base
  belongs_to :job
  belongs_to :user

  validates :body, presence: true
  
  scope :sorted, lambda { order('created_at DESC') }

end
