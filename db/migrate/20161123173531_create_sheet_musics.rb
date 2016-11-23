class CreateSheetMusics < ActiveRecord::Migration
  def change
    create_table :sheet_musics do |t|
      t.integer :group_id
      t.integer :song_id
      t.string :file_path
      t.string :format

      t.timestamps null: false
    end
  end
end
