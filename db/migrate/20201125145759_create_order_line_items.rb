class CreateOrderLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_line_items do |t|
      t.belongs_to :order,    foreign_key: true
      t.belongs_to :item,     foreign_key: true
      t.integer :quantity,    default: 1

      t.timestamps
    end
  end
end
