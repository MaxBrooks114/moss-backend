class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :age
  has_many :venues
  has_many :reviews
  has_many :locations
  has_many :concerts
  attribute :home do |user|
    {
      city: user.home.city
    }
  end
end
