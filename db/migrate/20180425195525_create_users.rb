class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :ranking
      t.integer :games_played
      t.integer :games_won

      t.timestamps
    end
  end
end
