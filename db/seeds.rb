# items: {id:, name:, description:, isUnique:, isShadow:, shadowPenalty:, shadowBonus:}
#

# find file pash # 
items_path = Rails.root.join("app/assets/images/set5/items.json").to_s 
champions_path = Rails.root.join("app/assets/images/set5/champions.json").to_s 
traits_path = Rails.root.join("app/assets/images/set5/traits.json").to_s 

# read json #
items = File.open(items_path) {|file| JSON.load(file)}
champions = File.open(champions_path) {|file| JSON.load(file)}
traits = File.open(traits_path) {|file| JSON.load(file)}

# find keys #
def find_keys(array)
  results = []
  array.each do |el|
    results << el.keys
  end
  results = results.flatten.uniq
end

# create columns #
def create_columns(keys)
end

# seed #
items.each do |item|
  Item.create(item)
end

champions.each do |champion|
  Champion.create(champion)
end

traits.each do |trait|
  Trait.create(trait)
end

