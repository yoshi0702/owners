class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
    	t.integer :project_id
		t.string :prefecture_name, null: false
      	t.timestamps
    end
  end
end
