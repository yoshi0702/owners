class CreatePointHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :point_histories do |t|
    	t.integer :supporter_id, null: false
		t.integer :project_id, null: true
		t.string :point, null: false
      	t.timestamps
    end
  end
end
