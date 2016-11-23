class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :author
      t.string :composer
      t.string :media_link
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
