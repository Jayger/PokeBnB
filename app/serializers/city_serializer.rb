class CitySerializer < ActiveModel::Serializer
    attributes :id, :name, :region, :img_url
  
    has_many :homes
end