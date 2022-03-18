class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :supplier_id, :supplier
  
end
