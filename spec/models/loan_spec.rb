# == Schema Information
#
# Table name: loans
#
#  id          :integer          not null, primary key
#  book_id     :integer
#  return_date :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_loans_on_book_id  (book_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#

require 'rails_helper'

RSpec.describe Loan, type: :model do
  context 'validations' do
    it 'should have valid factory' do
      p = FactoryBot.build(:loan)
      expect(p).to be_valid
    end
  end
end
