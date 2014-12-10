class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.references :course_work, index: true
      t.references :student, index: true
      t.string :value

      t.timestamps
    end
  end
end
