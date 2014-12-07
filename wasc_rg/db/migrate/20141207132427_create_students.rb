class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :full_name
      t.string :last_name
      t.string :first_name
      t.string :username
      t.string :grade_basis
      t.string :academic_lev
      t.string :availability
      t.references :course, index: true
      t.references :program, index: true

      t.timestamps
    end
  end
end
