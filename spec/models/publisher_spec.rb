# == Schema Information
#
# Table name: publishers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Publisher, type: :model do
  context 'validations' do
    it 'should have valid factory' do
      p = FactoryBot.build(:publisher)
      expect(p).to be_valid
    end
  end
end
