# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  has_many :quotes, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true, uniqueness: { scope: :first_name }
end
