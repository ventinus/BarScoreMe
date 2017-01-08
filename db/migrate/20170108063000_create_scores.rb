class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.belongs_to :contest, index: true
      t.belongs_to :player, index: true
      t.string :value, null: false
    end
  end
end
