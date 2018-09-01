class InitialSchemea < ActiveRecord::Migration[5.2]
  def change
    create_table :media_files do |t|
      t.string :name
      t.string :media_file
      t.text   :comment
      t.integer :image_id
      t.timestamps
    end

   	create_table :categories do |t|
      t.string :name
      t.timestamps
    end

   	create_table :images do |t|
      t.string :name
      t.string :image_file
      t.timestamps
    end

   	create_table :playlists do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    create_join_table :media_files, :categories do |t|
      t.index :media_file_id
      t.index :category_id
      t.timestamps
    end

    create_join_table :playlists, :media_files do |t|
      t.index :playlist_id
      t.index :media_file_id
      t.integer :sequence
      t.timestamps
    end
  end
end
