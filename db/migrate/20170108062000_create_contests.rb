class CreateContests < ActiveRecord::Migration[5.0]
  def change
    create_table :contests do |t|
      t.belongs_to :bout, index: true
      t.belongs_to :game, index: true
    end
  end
end
