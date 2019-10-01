class User < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t| 
     t.string :name
     t.integer :password
     t.string :color
     t.float :lat
     t.float :lng
     t.string :password
    end 
  end
end
