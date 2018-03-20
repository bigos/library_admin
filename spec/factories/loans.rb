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

FactoryBot.define do
  factory :loan do
    book nil
    return_date "2018-03-20"
  end
end
