class CreateSupportProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :support_projects do |t|
		t.integer :supporter_id, null: false
		t.integer :project_id, null: false
	    t.timestamps
    end
  end
end
