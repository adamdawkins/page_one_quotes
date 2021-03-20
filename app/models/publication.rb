# frozen_string_literal: true

# == Schema Information
#
# Table name: publications
#
#  id         :bigint           not null, primary key
#  title      :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Publication < ApplicationRecord
  has_many :publishings, as: :publishable, dependent: :destroy
  has_many :publishers, through: :publishings

  validates :title, presence: true, uniqueness: true
  validates :year, presence: true
end
