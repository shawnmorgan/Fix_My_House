class Job < ActiveRecord::Base
  #extend ::Geocoder::Model::ActiveRecord
  belongs_to :user 
  has_many :comments

  validates :user_id, presence: true
  validates :job_title, presence: true
  validates :job_address, presence: true
  validates :job_contact_name, presence: true
  validates :job_contact_phone, presence: true
  validates :job_contact_email, presence: true
  #validates :job_request_date, presence: true
  validates :job_description, presence: true
  
 geocoded_by :job_address
 after_validation :geocode

  scope :sorted, lambda { order('created_at DESC') }
  
  mount_uploader :picture, PictureUploader
  validate :picture_size
  
  private
  
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "Should be less than 5MB")
    end
  end

end