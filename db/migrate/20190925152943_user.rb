class User < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t| 
     t.string :name
     t.string :color
     t.string :current_location
    end 
  end
end
