items = Seedable.new("items").file
champions = Seedable.new("champions").file
traits = Seedable.new("traits").file

# seed #
items.each do |item|
  Item.create(item: item)
end

champions.each do |champion|
  Champion.create(champion: champion)
end

traits.each do |trait|
  Trait.create(trait: trait)
end
