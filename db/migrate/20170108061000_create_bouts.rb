class CreateBouts < ActiveRecord::Migration[5.0]
  def change
    create_table :bouts do |t|
      t.timestamps null: false
    end
  end
end
