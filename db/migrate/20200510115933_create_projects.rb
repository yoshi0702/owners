class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
    	t.integer :owner_id, null: false
		t.string :number_of_supporters, null: false
		t.string :project_title, null: false
		t.string :summary_sentence, null: false
		t.string :area, null: false
		t.string :advertising_image_id, null: false
		t.text :text, null: false
		t.boolean :publication_status, null: false
		t.string :post_period, null: false
		t.string :target_amount, null: false
		t.string :total_support, null: false
		t.timestamps
    end
  end
end
