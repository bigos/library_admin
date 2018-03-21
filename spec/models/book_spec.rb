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

require 'rails_helper'
require 'byebug'

RSpec.describe Book, type: :model do
  context 'validations' do
    it 'fails on no title' do
      b = build(:book, title: nil)
      expect(b).not_to be_valid
    end

    it 'fails on no author' do
      b = build(:book, author: nil)
      expect(b).not_to be_valid
    end

    it 'fails on the same author and title' do
      b1 = build(:book)
      expect(b1).to be_valid
      b1.save

      b2 = build(:book, author_id: b1.author_id, title: b1.title)
      expect(b2).not_to be_valid

      b3 = build(:book, title: 'Most Unique')
      expect(b3).to be_valid
    end
  end
end
