class PlantGuide < ApplicationRecord

  def self.search(search_term)
    if Rails.env.production?
      PlantGuide.where("name ilike ?", "%#{search_term}%")
    else
      PlantGuide.where("name LIKE ?", "%#{search_term}%")
    end
  end

end
