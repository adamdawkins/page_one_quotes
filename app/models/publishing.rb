# == Schema Information
#
# Table name: publishings
#
#  id               :bigint           not null, primary key
#  publishable_type :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  publishable_id   :bigint           not null
#  publisher_id     :bigint           not null
#
# Indexes
#
#  index_publishings_on_publishable   (publishable_type,publishable_id)
#  index_publishings_on_publisher_id  (publisher_id)
#
# Foreign Keys
#
#  fk_rails_...  (publisher_id => publishers.id)
#
class Publishing < ApplicationRecord
  belongs_to :publishable, polymorphic: true
  belongs_to :publisher
end
