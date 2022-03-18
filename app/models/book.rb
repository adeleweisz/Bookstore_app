class Book < ApplicationRecord
  # def supplier
  #   suppler = Supplier.find_by(id:supplier_id)
  # end
  belongs_to :supplier
end
