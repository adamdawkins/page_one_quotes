class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.integer :number, index: true
      t.text :text
      t.string :work_title
      t.belongs_to :author, null: false, foreign_key: true
      t.belongs_to :publication, null: true, foreign_key: true

      t.timestamps
    end
  end
end
