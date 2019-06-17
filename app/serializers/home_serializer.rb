class HomeSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :address, :img_url, :price
    belongs_to :city
end