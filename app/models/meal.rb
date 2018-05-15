class Meal < ApplicationRecord
  belongs_to :user

  validates :name, presence: :true
  validates :description, presence: :true
  validates :price, presence: :true
  validates :date, presence: :true
  validates :stock, presence: :true

  #validates :photo presence true
  #validates :calorie presence true

end
