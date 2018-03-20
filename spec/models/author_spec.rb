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
    it 'should have valid factory' do
      p = FactoryBot.build(:author)
      expect(p).to be_valid
    end
  end
end
