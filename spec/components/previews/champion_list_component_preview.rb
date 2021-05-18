class ChampionListComponentPreview < ViewComponent::Preview #ApplicationComponent
  def default
    render(ChampionListComponent.new(champions: "Lux"))
  end
end
