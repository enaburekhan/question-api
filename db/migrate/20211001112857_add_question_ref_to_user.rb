class AddQuestionRefToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :question, foreign_key: true
  end
end
