class HexComponentPreview < ViewComponent::Preview #ApplicationComponent
  def default
    render(HexComponent.new(champion: "Lux"))
  end
end
