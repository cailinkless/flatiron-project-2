class CreatePrograms < ActiveRecord::Migration[4.2]
    def change
      create_table :programs do |t|
        t.string :title
        t.string :playwright
        t.string :dates #different way of storing these?
        t.string :company
        t.string :director
        #how should actors/roles work????
      end
    end
  end