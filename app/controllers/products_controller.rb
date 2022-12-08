class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_url, notice: "Produto adicionado com sucesso." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_url, notice: "Produto atualizado com sucesso." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy

    if @product.errors.any?
      respond_to do |format|
        format.html { redirect_to products_url, alert: "#{@product.errors.full_messages.to_sentence}" }
      end
    else
      respond_to do |format|
        format.html { redirect_to products_url, notice: "Produto removido com sucesso." }
      end
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :quantity, :expiration_date, :price, :category_id, :brand_id)
    end
end
