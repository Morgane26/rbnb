class Order < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :quantity, presence: :true






end
