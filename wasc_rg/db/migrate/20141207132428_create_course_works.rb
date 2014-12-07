class CreateCourseWorks < ActiveRecord::Migration
  def change
    create_table :course_works do |t|
      t.string :name
      t.references :course, index: true

      t.timestamps
    end
  end
end
