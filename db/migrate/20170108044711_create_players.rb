class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :username,           null: false, default: ""

      t.timestamps null: false
    end

    add_index :players, :username, unique: true
  end
end
