class AddPerformersToPrograms < ActiveRecord::Migration
    def change
      add_column :programs, :performers, :string 
    end
end