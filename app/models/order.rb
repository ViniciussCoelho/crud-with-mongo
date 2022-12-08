class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :quantity, type: Integer
  field :order_date, type: Date
  field :total, type: Float

  belongs_to :product
  belongs_to :supplier

  validates :quantity, presence: true
  validates :order_date, presence: true
  validates :total, presence: true
end
