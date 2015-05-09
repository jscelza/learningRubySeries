class AddTeamFkToPlayers < ActiveRecord::Migration
  def change
    add_foreign_key :players, :teams
  end
end
