class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :presentation_id
      t.integer :ranking
      t.text :comment

      t.timestamps
    end
  end
end
