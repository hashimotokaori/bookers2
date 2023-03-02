class Book < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :profile_image
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
  
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}
end