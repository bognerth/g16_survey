class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :lecture_id
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_id
      t.integer :page_id

      t.timestamps
    end
  end
end
