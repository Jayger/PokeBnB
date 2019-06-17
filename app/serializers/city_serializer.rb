class CitySerializer < ActiveModel::Serializer
    attributes :id, :name, :population, :description, :region, :img_url
  
    has_many :homes
end