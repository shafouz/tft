# frozen_string_literal: true

class HexComponent < ApplicationComponent
  attr_accessor :champion

  def initialize(champion:)
    @champion = champion ||= "empty"
  end

  def format_name(champion:)
    champion.split(" ").join("_").camelize
  end
end
