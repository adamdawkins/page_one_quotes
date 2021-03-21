# frozen_string_literal: true

# == Schema Information
#
# Table name: quotes
#
#  id             :bigint           not null, primary key
#  number         :integer
#  text           :text
#  work_title     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  author_id      :bigint           not null
#  publication_id :bigint
#
# Indexes
#
#  index_quotes_on_author_id       (author_id)
#  index_quotes_on_number          (number)
#  index_quotes_on_publication_id  (publication_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (publication_id => publications.id)
#
class Quote < ApplicationRecord
  belongs_to :author
  belongs_to :publication, optional: true

  validates :text, presence: true, uniqueness: true
  validates :work_title, presence: true, uniqueness: true
end
