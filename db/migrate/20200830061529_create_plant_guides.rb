class CreatePlantGuides < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_guides do |t|
      t.string :name
      t.string :science_title
      t.string :image
      t.string :season
      t.string :sun
      t.string :water
      t.string :depth
      t.string :distance
      t.string :ph
      t.text :tips
      t.text :benefits

      t.timestamps
    end
  end
end
