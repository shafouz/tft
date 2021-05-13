class HexComponentPreview < ViewComponent::Preview #ApplicationComponent
  def default
    render(HexComponent.new)
  end
end
