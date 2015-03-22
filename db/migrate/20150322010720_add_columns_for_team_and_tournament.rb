class AddColumnsForTeamAndTournament < ActiveRecord::Migration
  def change
    add_column :matches, :team_id, :integer
    add_column :matches, :tournament_id, :integer
  end
end
