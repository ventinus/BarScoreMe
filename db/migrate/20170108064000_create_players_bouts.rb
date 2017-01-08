class CreatePlayersBouts < ActiveRecord::Migration[5.0]
  def change
    create_table :players_bouts do |t|
      t.belongs_to :players, index: true
      t.belongs_to :bouts, index: true
    end
  end
end
