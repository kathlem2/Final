class CreatePresentations < ActiveRecord::Migration[6.0]
  def change
    create_table :presentations do |t|
      t.integer :group_id
      t.string :topic

      t.timestamps
    end
  end
end
