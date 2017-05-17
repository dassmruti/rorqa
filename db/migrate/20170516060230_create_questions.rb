class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.references :dashboard, foreign_key: true

      t.timestamps
    end
  end
end
