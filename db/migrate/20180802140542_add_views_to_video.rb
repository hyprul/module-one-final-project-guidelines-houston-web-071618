class AddViewsToVideo < ActiveRecord::Migration[5.0]
  def change
  	add_column :videos, :views, :float
  end
end