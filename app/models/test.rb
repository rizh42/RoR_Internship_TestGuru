class Test < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :category

  has_many :questions, dependent: :destroy
  has_many :user_tests, dependent: :destroy
  has_many :passing_users, through: :user_tests

  def self.names_by_category(category)
    Test.joins(:category).where(
      categories: { title: category }
    ).order(title: :desc).pluck(:title)
  end
end
