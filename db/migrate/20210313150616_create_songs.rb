class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.text :lyrics
      t.text :description
      t.string :artist
      t.string :album
      t.string :cover
      t.integer :duration
      t.integer :year
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
