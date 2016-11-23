class CreateSubgroups < ActiveRecord::Migration
  def change
    create_table :subgroups do |t|
      t.string :name
      t.integer :parent_group_id

      t.timestamps null: false
    end
  end
end
