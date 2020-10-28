class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.text :statement,        null: false
      t.text :answer,           null: false
      t.integer :grade_id,      null: false

      t.timestamps
    end
  end
end
