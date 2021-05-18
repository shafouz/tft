class HeaderComponentPreview < ViewComponent::Preview #ApplicationComponent
  def default
    render(HeaderComponent.new(title: "TFT"))
  end
end
