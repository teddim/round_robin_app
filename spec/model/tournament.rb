require "rails_helper"

describe Tournament do
  describe "associations" do
    describe "#matches" do
      it "returns all associated matches" do
        tournament = create_tournament
        tournament2 = create_tournament(name: 'Tournament 2')
        match = Match.create!(round: 1, team_id: create_team.id, tournament_id: tournament.id, opponent_id: tournament2.id)

        expect(tournament.matches).to eq [match]
      end
    end

    describe "#teams" do
      it "return all teams with associated matches" do
        tournament = create_tournament
        tournament2 = create_tournament(name: 'Tournament 2')
        team = create_team(options={name:"Another Tourney"})
        match = Match.create!(round: 1, team_id: team.id, tournament_id: tournament.id, opponent_id: tournament2.id)

        expect(tournament.teams).to eq [team]
      end
    end
  end
end
