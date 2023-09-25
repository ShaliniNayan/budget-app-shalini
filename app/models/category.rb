class Category < ApplicationRecord
  has_many :category_expenses, dependent: :destroy
  has_many :expenses, through: :category_expenses
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  validates :name, presence: true
  validates :icon, presence: true
end
