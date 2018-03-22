# == Schema Information
#
# Table name: authors
#
#  id           :integer          not null, primary key
#  first_name   :string(255)
#  middle_names :string(255)
#  last_name    :string(255)
#  publisher_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_authors_on_publisher_id  (publisher_id)
#
# Foreign Keys
#
#  fk_rails_...  (publisher_id => publishers.id)
#

require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'validations' do
    it 'fails on no first_name' do
      b = build(:author, first_name: nil)
      expect(b).not_to be_valid
    end

    it 'works no middle_names' do
      b = build(:author, middle_names: nil)
      expect(b).to be_valid
    end

    it 'fails on no last_name' do
      b = build(:author, last_name: nil)
      expect(b).not_to be_valid
    end

    it 'fails on no publisher_id' do
      b = build(:author, publisher_id: nil)
      expect(b).not_to be_valid
    end
  end
end
