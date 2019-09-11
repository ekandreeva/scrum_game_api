class CreateGameStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :game_statistics do |t|

      t.timestamps
    end
  end
end
