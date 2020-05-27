class AddMultipleChoiceToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column(:questions, :a, :string)
    add_column(:questions, :b, :string)
    add_column(:questions, :c, :string)
  end
end
