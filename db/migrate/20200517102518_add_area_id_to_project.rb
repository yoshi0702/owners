class AddAreaIdToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :area_id, :integer
  end
end
