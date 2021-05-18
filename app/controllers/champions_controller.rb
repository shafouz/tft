class ChampionsController < ApplicationController
  def champions
    @champions = Champion.all
  end
end
