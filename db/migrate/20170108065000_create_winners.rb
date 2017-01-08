class CreateWinners < ActiveRecord::Migration[5.0]
  def change
    create_table :winners do |t|
      t.belongs_to :contest, index: true
      t.belongs_to :player, index: true
    end
  end
end
