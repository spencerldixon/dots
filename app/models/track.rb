class Track < ApplicationRecord
  belongs_to :user

  has_many :experiments
  has_many :metrics
  has_many :dots, through: :metrics

  has_rich_text :description
end
