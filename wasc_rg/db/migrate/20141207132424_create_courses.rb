class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_num
      t.string :course_title
      t.integer :units
      t.references :program, index: true
      t.references :teacher, index: true
      t.references :semester, index: true

      t.timestamps
    end
  end
end
