class CreateCourseOutcomes < ActiveRecord::Migration
  def change
    create_table :course_outcomes do |t|
      t.references :course_work, index: true
      t.references :outcome, index: true

      t.timestamps
    end
  end
end
