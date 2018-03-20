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

RSpec.describe Book, type: :model do
  context 'validations' do
    it 'should have valid factory' do
      p = FactoryBot.build(:book)
      expect(p).to be_valid
    end
  end
end
