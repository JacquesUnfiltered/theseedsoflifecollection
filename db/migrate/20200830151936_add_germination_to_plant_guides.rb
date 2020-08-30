class AddGerminationToPlantGuides < ActiveRecord::Migration[6.0]
  def change
    add_column :plant_guides, :germination, :string
  end
end
