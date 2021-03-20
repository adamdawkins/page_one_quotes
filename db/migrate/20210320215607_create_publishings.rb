class CreatePublishings < ActiveRecord::Migration[6.1]
  def change
    create_table :publishings do |t|
      t.belongs_to :publishable, polymorphic: true, null: false
      t.belongs_to :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
