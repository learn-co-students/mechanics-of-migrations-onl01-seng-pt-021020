class CreateArtists < ActiveRecord::Migration[5.2]
  def up
  end

  def down
  end

  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end 
  end

end

#On the left we've given the data type we'd like to cast the column as, and on the right, we've given the name we'd like to give the column. The only thing that we're missing is the primary key. Active Record will generate that column for us, and for each row added, a key will be auto-incremented.

#This lesson was originally created with gem versions that support Rails 5.2, so we need to make have our CreateArtist migration inherit from ActiveRecord::Migration[5.2].