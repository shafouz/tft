class ChampionListComponentPreview < ViewComponent::Preview #ApplicationComponent
  def default
    render(ChampionListComponent.new(champions: Champion.find_by_name(name: "Lux").champion["name"]))
  end
end
