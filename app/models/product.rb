class Product
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :quantity, type: Integer
  field :expiration_date, type: Date
  field :price, type: Float

  belongs_to :category
  belongs_to :brand

  has_many :orders

  validates :name, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  validates :brand_id, presence: true
  validates :category_id, presence: true
end
