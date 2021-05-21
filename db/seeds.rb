items = Seedable.new("items").file
champions = Seedable.new("champions").file
traits = Seedable.new("traits").file

# seed #
items.each do |item|
  Item.create(details: item)
end

champions.each do |champion|
  Champion.create(details: champion)
end

traits.each do |trait|
  Trait.create(details: trait)
end
