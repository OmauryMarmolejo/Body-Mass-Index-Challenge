class Consult < ApplicationRecord
  belongs_to :user
  validates_presence_of :height, :mass
end
