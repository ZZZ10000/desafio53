class Documentary < ApplicationRecord
  validates :name, :synopsis, :director, presence: true
end
