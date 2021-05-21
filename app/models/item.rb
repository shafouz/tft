class Item < ApplicationRecord
  def self.find_by_id(item)
    Item.where("details -> 'id' @> ?", item.to_json)[0]
  end
end
