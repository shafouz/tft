class Trait < ApplicationRecord
  def self.find_by_key(key)
    Trait.where("details -> 'key' @> ?", key.to_json)[0]
  end
end
