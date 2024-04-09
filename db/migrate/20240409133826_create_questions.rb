class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :name, null: false # 問題名
      t.text :content, null: false # 出題内容
      t.integer :answer_time, null: false # 回答時間（秒）
      t.integer :points, null: false # 獲得ポイント
      t.string :correct_answer, null: false # 正答

      t.timestamps
    end
    add_index :questions, :name, unique: true
  end
end
