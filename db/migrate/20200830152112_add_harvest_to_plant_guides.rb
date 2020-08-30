class AddHarvestToPlantGuides < ActiveRecord::Migration[6.0]
  def change
    add_column :plant_guides, :harvest, :string
  end
end
