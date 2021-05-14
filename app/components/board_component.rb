# frozen_string_literal: true

class BoardComponent < ApplicationComponent
  def initialize(champions: {})
    # 0 > x <= 7
    # 0 > y <= 3
    # champion = { [x,y] => champion_name }
    @champions = champions
  end
end
