class BillSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :due

  has_one :user
end
