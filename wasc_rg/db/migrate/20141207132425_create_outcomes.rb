class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.string :objective_letter
      t.string :description
      t.references :program, index: true

      t.timestamps
    end
  end
end
