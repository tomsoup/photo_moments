class Image < ActiveRecord::Base
  belongs_to :user

  # Picture is the type string in Image model
  mount_uploader :picture, PictureUploader
  validate :picture_size

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
