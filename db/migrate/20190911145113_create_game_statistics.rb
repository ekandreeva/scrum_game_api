class CreateGameStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :game_statistics do |t|
      t.integer :number_of_cards
      t.integer :number_of_attempts
      t.integer :number_of_removed_cards
      t.datetime :finish_time
      t.belongs_to :user

      t.timestamps
    end
  end
end
