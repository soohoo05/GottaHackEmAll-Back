class HackathonSerializer < ActiveModel::Serializer
  attributes :id, :host, :state, :free, :description, :date, :img
  has_many :users
end
