class HackathonSerializer < ActiveModel::Serializer
  attributes :id, :host, :state, :free, :description, :date, :img, :url
  has_many :users
end
