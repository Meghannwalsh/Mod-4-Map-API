class User < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t| 
     t.string :name
     t.integer :password
     t.string :color
     t.string :current_location
     t.string :password
    end 
  end
end
