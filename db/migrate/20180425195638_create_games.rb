class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :room_id
      t.integer :scoreboard_id

      t.timestamps
    end
  end
end
