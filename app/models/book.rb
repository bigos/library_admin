# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_books_on_author_id  (author_id)
#

class Book < ActiveRecord::Base
  belongs_to :author

  validates :title, length: { minimum: 1 }
  validates :author_id, presence: true
  validates :title, uniqueness: { scope: :author }

  # example custom validation
  # validate :book_and_author_unique
  # def book_and_author_unique
  #   unless Book.where(author_id: author_id)
  #             .where(title: title)
  #             .count
  #             .zero?
  #     errors.add(:title, 'must be unique for the author')
  #   end
  # end
end
