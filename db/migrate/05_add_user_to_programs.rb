class AddUserToPrograms < ActiveRecord::Migration
    def change
      add_reference :programs, :user
    end
end