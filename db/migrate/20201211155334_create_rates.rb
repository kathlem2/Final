class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|
      t.integer :loves
      t.integer :likes
      t.string :song

      t.timestamps
    end
  end
end
