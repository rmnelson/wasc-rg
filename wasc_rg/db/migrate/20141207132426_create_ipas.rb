class CreateIpas < ActiveRecord::Migration
  def change
    create_table :ipas do |t|
      t.string :letter
      t.references :outcome, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
