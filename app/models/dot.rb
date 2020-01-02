class Dot < ApplicationRecord
  belongs_to :experiment
  belongs_to :metric
end
