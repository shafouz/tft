# frozen_string_literal: true
include ChampionsHelper

class ChampionListComponent < ApplicationComponent
  attr_accessor :champions

  def initialize(champions:)
    @champions = champions
  end
end
