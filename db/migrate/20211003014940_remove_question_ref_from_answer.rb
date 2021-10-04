class RemoveQuestionRefFromAnswer < ActiveRecord::Migration[6.1]
  def change
    remove_reference :answers, :question, null: false, foreign_key: true
  end
end
