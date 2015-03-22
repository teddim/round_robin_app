require 'rails_helper'

describe Match do
  describe "associations" do
    it "responds to team" do
      expect(Match.new).to respond_to(:team)
    end

    it "responds to tournament" do
      expect(Match.new).to respond_to(:tournament)
    end
  end
end
