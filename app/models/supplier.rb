class Supplier
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :city, type: String
  field :phone, type: String

  has_many :orders

  validates :name, presence: true
  validates :city, presence: true
  validates :phone, presence: true
end
