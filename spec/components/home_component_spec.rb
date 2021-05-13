require "rails_helper"

RSpec.describe HomeComponent, type: :component do
  it "finds class" do
    expect(
      render_inline(described_class.new(title: "value")).css("div").to_html
    ).to include(
      'class="value"'
    )
  end

  it "finds header" do
    render_inline(described_class.new(title: "test")) {|c| 
      c.header(title: "My header") { "Cool Header" }
    }

    expect(rendered_component).to have_text "My header"
    expect(rendered_component).to have_text "Cool Header"
    expect(rendered_component).to have_css "ul.flex"
    expect(rendered_component).to have_css "ul.h-10"
    expect(rendered_component).to have_css "div.flex"
    expect(rendered_component).to have_css "a.ml-3"
  end
end
