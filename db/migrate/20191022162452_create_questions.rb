class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.string :category
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
