class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :id, :username, :img
  has_many :hackathons
end
