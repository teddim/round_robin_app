def create_tournament(options={})
  defaults = {name: "The Best Tourney"}

  Tournament.create!(defaults.merge(options))
end

def create_team(options={})
  defaults = {name: "Team 1"}

  Team.create!(defaults.merge(options))
end
