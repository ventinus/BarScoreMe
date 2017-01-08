class CreateBoutsGames < ActiveRecord::Migration[5.0]
  def change
    create_table :bouts_games do |t|
      t.belongs_to :bouts, index: true
      t.belongs_to :games, index: true
    end
  end
end
