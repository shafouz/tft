class ChampionDetailsComponentPreview < ViewComponent::Preview #ApplicationComponent
  def default
    render(ChampionDetailsComponent.new(champion: Champion.find_by_name("Heimerdinger")))
  end
end
