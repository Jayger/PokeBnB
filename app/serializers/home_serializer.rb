class HomeSerializer < ActiveModel::Serializer
    attributes :id, :name, :rating, :address, :img_url, :price
    belongs_to :city
end