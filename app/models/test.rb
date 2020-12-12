class Test < ApplicationRecord
  def self.find_by_category(category)
    joins('INNER JOIN categories ON categories.id = tests.category_id')
    .where(categories: { title: category_title } ).order(:title :desc).pluck(:title)
  end
end
