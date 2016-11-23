class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :schedule_id
      t.datetime :service_date
      t.text :notes
      t.string :item_order

      t.timestamps null: false
    end
  end
end
