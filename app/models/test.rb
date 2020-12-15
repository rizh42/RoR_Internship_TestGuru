class Test < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :user_tests, dependent: :destroy
  has_many :passing_users, through: :user_tests
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :category

  def self.names_by_category(category)
    joins('INNER JOIN categories ON categories.id = tests.category_id')
    .where(categories: { title: category } ).order(:title :desc).pluck(:title)
  end
end
