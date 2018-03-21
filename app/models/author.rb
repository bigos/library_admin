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

class Author < ActiveRecord::Base
  belongs_to :publisher
  has_many :books

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :publisher_id, presence: true
end
