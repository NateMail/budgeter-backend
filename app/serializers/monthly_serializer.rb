class MonthlySerializer < ActiveModel::Serializer
  attributes :id, :income, :deposited
  has_one :user
end
