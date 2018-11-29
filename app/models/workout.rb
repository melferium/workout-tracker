class Workout < ApplicationRecord
  belongs_to :user
  has_many :exercises, dependent: :destroy

  accepts_mested_attributes_for :exercises, allow_destroy: true
end
