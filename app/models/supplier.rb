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

  before_destroy :check_orders

  private

  def check_orders
    if orders.count > 0
      errors.add(:base, 'Não é possível excluir um fornecedor que possui pedidos')
      throw :abort
    end
  end
end
