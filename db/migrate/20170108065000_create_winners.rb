class CreateWinners < ActiveRecord::Migration[5.0]
  def change
    create_table :winners do |t|
      t.belongs_to :contests, index: true
      t.belongs_to :players, index: true
    end
  end
end
