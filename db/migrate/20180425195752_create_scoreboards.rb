class CreateScoreboards < ActiveRecord::Migration[5.1]
  def change
    create_table :scoreboards do |t|
      t.integer :room_id

      t.timestamps
    end
  end
end
