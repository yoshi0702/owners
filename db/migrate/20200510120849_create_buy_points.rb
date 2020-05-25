class CreateBuyPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :buy_points do |t|
    	t.integer :supporter_id, null: false
		t.string :purchase_point, null: false
		# t.string :purchase_confirmation_date, null: false
		# t.string :payment_confirmation_date, null: false
		t.boolean :deposit_status, null: false

      t.timestamps
    end
  end
end
