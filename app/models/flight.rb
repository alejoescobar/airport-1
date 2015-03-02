class Flight < ActiveRecord::Base
  belongs_to :airline
  has_one :departure, dependent: :destroy
  has_one :arrival, dependent: :destroy
  validates :number, presence: true

  accepts_nested_attributes_for :arrival, :departure
end
