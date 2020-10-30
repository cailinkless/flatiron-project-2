class AddCrewmembersToPrograms < ActiveRecord::Migration
    def change
      add_column :programs, :crew_members, :string 
    end
end