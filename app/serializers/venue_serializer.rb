class VenueSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :capacity
end
