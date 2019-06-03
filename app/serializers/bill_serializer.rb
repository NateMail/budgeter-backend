class BillSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :due
end
