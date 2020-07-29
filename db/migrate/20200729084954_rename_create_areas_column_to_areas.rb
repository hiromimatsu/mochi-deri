class RenameCreateAreasColumnToAreas < ActiveRecord::Migration[6.0]
  def change
    rename_column :areas, :CreateAreas, :area
  end
end
