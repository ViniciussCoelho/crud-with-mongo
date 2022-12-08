class Category
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_many :products

  validates :name, presence: true

  before_destroy :check_products

  private

  def check_products
    if products.count > 0
      errors.add(:base, 'Não é possível excluir uma categoria que possui produtos')
      throw :abort
    end
  end
end
