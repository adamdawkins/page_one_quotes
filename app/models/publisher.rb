# frozen_string_literal: true

# == Schema Information
#
# Table name: publishers
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Publisher < ApplicationRecord
  has_many :publishings, dependent: :destroy
  has_many :publications, through: :publishings

  validates :name, presence: true
end
