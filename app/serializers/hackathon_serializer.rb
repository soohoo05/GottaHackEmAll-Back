class HackathonSerializer < ActiveModel::Serializer
  attributes :id, :host, :state, :free, :description, :date
  has_many :users
end
