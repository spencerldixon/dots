class Metric < ApplicationRecord
  belongs_to :track

  has_many :dots

  def to_series
    {
      name: self.name,
      data: self.dots.map { |dot| {x: dot.created_at, y: dot.value} }
    }
  end
end
