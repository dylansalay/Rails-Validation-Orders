class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
        t.integer :account_id
        t.string :product_name
        t.integer :quantity
        t.date :shipment_date

        t.timestamps
    end
  end
end
