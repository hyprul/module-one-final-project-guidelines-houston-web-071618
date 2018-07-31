class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.integer :user_id
      t.integer :playlist_id
      end
    end
  end