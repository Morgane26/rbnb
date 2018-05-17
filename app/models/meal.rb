class Meal < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :name, presence: :true
  validates :description, presence: :true
  validates :price, presence: :true
  validates :date, presence: :true
  validates :stock, presence: :true

  #validates :photo presence true
  #validates :calorie presence true

end
