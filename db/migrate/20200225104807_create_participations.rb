class CreateParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :participations do |t|
      t.text :review_content
      t.float :rating
      t.date :date
      t.boolean :interested
      t.references :users, null: false, foreign_key: true
      t.references :exhibitions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
