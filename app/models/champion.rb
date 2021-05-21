class Champion < ApplicationRecord
  def self.find_by_name(name)
    Champion.where("details -> 'name' @> ?", name.to_json)[0]
  end

  def traits
    traits = []
    details["traits"].each do |trait|
      traits << Trait.find_by_key(trait)["details"]
    end
    traits
  end
end
