class AddTeacherToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :isTeacher, :boolean
  end
end
