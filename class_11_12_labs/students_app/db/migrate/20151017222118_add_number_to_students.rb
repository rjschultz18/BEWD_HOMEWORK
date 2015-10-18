class AddNumberToStudents < ActiveRecord::Migration
  def change
    add_column :students, :number, :string
  end
end
