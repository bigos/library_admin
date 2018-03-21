# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'byebug'
require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'fails on non-unique email' do
      u1 = create(:user)
      u2 = build(:user)
      expect(u1.email).to eql(u2.email)
      expect(u2).not_to be_valid
    end

    it 'fails on no email' do
      u = build(:user)
      u.email = nil
      expect(u).not_to be_valid
      expect(u.errors
               .messages[:email]
               .include?("can't be blank")).to be true
    end
  end
end
