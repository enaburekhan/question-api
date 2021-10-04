class RemoveQuestionRefFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_reference :users, :question, null: false, foreign_key: true
  end
end
