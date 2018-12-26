class Hackathon < ApplicationRecord
  has_many :hackathonlists
  has_many :users, through: :hackathonlists
  validates :host, presence: true
  validates :state, presence: true
  validates :url, presence:true
  validates :img, presence:true
end
