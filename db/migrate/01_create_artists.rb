class CreateArtists < ActiveRecord::Migration[5.2]
  
  def up #define the code to execute when the migration is run 
  end 
  
  def down #define the code to execute when the migration is rolled back
  end 
  # instead of using up or down methods you can do 
  def change #primary way of writing migrations
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end  

end
