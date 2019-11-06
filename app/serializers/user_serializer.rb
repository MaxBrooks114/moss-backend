class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :age
  has_many :concerts
  has_many :venues
  has_many :reviews
  has_many :locations
  attribute :home do |user|
    {
      city: user.home.city
    }
  end
end
