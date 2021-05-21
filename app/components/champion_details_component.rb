# frozen_string_literal: true

class ChampionDetailsComponent < ApplicationComponent
  def initialize(champion:)
    @champion = champion
  end
end
