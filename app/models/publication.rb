# frozen_string_literal: true

# == Schema Information
#
# Table name: publications
#
#  id               :bigint           not null, primary key
#  publication_year :integer
#  title            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Publication < ApplicationRecord
  has_many :publishings, as: :publishable, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :publication_year, presence: true
end
