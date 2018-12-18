class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :id, :username
  has_many :hackathons
end
