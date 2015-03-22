require "rails_helper"

describe Team do
  describe "associations" do
    describe "#matches" do
      it "returns all associated matches" do
        team = create_team
        team2 = create_team(name: 'Team 2')
        match = Match.create!(round: 1, tournament_id: create_tournament.id, team_id: team.id, opponent_id: team2.id)

        expect(team.matches).to eq [match]
      end
    end

    describe "#tournaments" do
      it "return all tournaments with associated matches" do
        team = create_team
        team2 = create_team(name: 'Team 2')
        tournament = create_tournament(options={name:"Another Tourney"})
        match = Match.create!(round: 1, tournament_id: tournament.id, team_id: team.id, opponent_id: team2.id)

        expect(team.tournaments).to eq [tournament]
      end
    end
  end
end
