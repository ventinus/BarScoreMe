class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.belongs_to :contests, index: true
      t.belongs_to :players, index: true
      t.string :value, null: false
    end
  end
end
