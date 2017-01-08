class CreatePlayersBouts < ActiveRecord::Migration[5.0]
  def change
    create_table :players_bouts do |t|
      t.belongs_to :player, index: true
      t.belongs_to :bout, index: true
    end
  end
end
