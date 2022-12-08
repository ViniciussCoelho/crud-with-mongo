class Brand
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_many :products, dependent: :destroy

  validates :name, presence: true

  before_destroy :check_products

  private

  def check_products
    if products.count > 0
      errors.add(:base, 'Não é possível excluir uma marca que possui produtos')
      throw :abort
    end
  end
end
