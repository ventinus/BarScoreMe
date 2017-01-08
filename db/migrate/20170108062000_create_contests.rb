class CreateContests < ActiveRecord::Migration[5.0]
  def change
    create_table :contests do |t|
      t.belongs_to :bouts, index: true
    end
  end
end
