class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_id
      t.number :order_amt

      t.timestamps
    end
  end
end
