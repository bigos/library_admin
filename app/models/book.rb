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
end
