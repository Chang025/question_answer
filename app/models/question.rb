class Question < ApplicationRecord
  belongs_to :category
  has_many :options, dependent: :destroy
  delegate :name, to: :category, prefix: true
  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true
end
