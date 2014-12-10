class CreateCourseWorks < ActiveRecord::Migration
  def change
    create_table :course_works do |t|
      t.string :name
      t.string :max_points
      t.references :course, index: true

      t.timestamps
    end
  end
end
