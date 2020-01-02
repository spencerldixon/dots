class Experiment < ApplicationRecord
  belongs_to :track

  has_many :dots

  has_rich_text :methodology
end
