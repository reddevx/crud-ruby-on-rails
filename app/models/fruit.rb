class Fruit < ApplicationRecord
  validates :name, :color, presence: true
  def index; end
end
