class DeviseCreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      ## Database authenticatable
      t.string :username,           null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.timestamps null: false
    end

    add_index :players, :username,                unique: true
  end
end
