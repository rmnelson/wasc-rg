class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.references :corse_work, index: true
      t.references :student, index: true
      t.integer :value

      t.timestamps
    end
  end
end
