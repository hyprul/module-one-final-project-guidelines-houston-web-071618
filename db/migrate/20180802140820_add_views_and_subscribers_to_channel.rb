class AddViewsAndSubscribersToChannel < ActiveRecord::Migration[5.0]
  def change
  	add_column :channels, :views, :float
  	add_column :channels, :subscribers, :float
  end
end
