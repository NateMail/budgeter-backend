# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :monthly
  has_many :bills

  validates_length_of :monthly, maximum: 1
end
