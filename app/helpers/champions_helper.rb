module ChampionsHelper
  def champion_image_tag(champion:, classes: nil)
    image_tag("set5/champions/TFT5_#{format_name(champion)}", class: classes)
  end

  def champion_image_path(champion:)
    image_path("set5/champions/TFT5_#{format_name(champion)}")
  end

  def format_name(champion)
    return champion.split("'").join("").humanize if champion.include?("'")
    champion.split(" ").join("_").camelize
  end
end
