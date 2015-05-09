class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :last
      t.string :first
      t.string :postion
      t.string :phone
      t.string :email
      t.integer :team, :null => false, :references => [:teams, :id]

      t.timestamps null: false
    end
  end
end
