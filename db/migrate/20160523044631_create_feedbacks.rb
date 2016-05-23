class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.datetime :feedback_date
      t.text :comment
      t.integer :score
      t.references :booking, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
