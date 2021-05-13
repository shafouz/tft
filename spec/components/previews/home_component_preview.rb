class HomeComponentPreview < ViewComponent::Preview
  def with_default_title
    render(HomeComponent.new(title: "cool").with_content("lalallalala"))
  end
end
