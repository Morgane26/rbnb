class Meal < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user, dependent: :destroy
  has_many :orders, dependent: :destroy
  # has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: :true
  validates :description, presence: :true
  validates :price, presence: :true
  validates :date, presence: :true
  validates :stock, presence: :true
  #validates :photo presence true
  #validates :calorie presence true

end
