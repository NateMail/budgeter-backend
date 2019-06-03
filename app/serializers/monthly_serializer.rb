class MonthlySerializer < ActiveModel::Serializer
  attributes :id, :income, :deposited
end
