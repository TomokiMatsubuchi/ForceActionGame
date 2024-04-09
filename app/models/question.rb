# == Schema Information
#
# Table name: questions
#
#  id             :bigint           not null, primary key
#  answer_time    :integer          not null
#  content        :text(65535)      not null
#  correct_answer :string(255)      not null
#  name           :string(255)      not null
#  points         :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_questions_on_name  (name) UNIQUE
#
class Question < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :content, presence: true
  validates :answer_time, presence: true, numericality: { greater_than: 0 }
  validates :points, presence: true, numericality: { greater_than: 0 }
  validates :correct_answer, presence: true
end
