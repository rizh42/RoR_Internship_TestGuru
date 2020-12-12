class User < ApplicationRecord
  def search_by_level(_level)
    Test.joins('INNER JOIN user_tests ON user_tests.test_id = tests.id')
        .where(tests: { level: test_lvl }, user_tests: { user_id: id })
  end
end
