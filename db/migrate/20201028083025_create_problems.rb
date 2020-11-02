class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.string :title,          null: false
      t.text :statement,        null: false
      t.text :answer,           null: false
      t.integer :grade_id,      numericality: { other_than: 1 } 

      t.timestamps
    end
  end
end
