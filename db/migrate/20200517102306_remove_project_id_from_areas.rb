class RemoveProjectIdFromAreas < ActiveRecord::Migration[5.2]
  def change
    remove_column :areas, :project_id, :integer
  end
end
