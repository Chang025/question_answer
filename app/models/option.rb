class Option < ApplicationRecord
  attr_accessor :dependent_question
  belongs_to :question, optional: true
  delegate :name, to: :question, prefix: true
end