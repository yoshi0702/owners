class RemoveAreaFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :area, :string
  end
end
