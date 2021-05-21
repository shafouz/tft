# frozen_string_literal: true
include ViewsHelper

class HexComponent < ApplicationComponent
  attr_accessor :champion

  def initialize(champion:)
    @champion = champion ||= "empty"
  end
end
