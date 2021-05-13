# frozen_string_literal: true

class HomeComponent < ApplicationComponent

  renders_one :header, HeaderComponent

  def initialize(title:)
    @title = title
  end

end
