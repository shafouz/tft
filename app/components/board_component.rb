# frozen_string_literal: true

class BoardComponent < ApplicationComponent
  def initialize(champions: {})
    @champions = champions
  end
end
