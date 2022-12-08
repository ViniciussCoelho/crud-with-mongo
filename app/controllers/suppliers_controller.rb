class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[ show edit update destroy ]

  def index
    @suppliers = Supplier.all
  end

  def show
  end

  def new
    @supplier = Supplier.new
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)

    respond_to do |format|
      if @supplier.save
        format.html { redirect_to suppliers_url, notice: "Fornecedor adicionado com sucesso." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to suppliers_url, notice: "Fornecedor atualizado com sucesso." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @supplier.destroy

    if @supplier.errors.any?
      respond_to do |format|
        format.html { redirect_to suppliers_url, alert: "#{@supplier.errors.full_messages.to_sentence}" }
      end
    else
      respond_to do |format|
        format.html { redirect_to suppliers_url, notice: "Fornecedor removido com sucesso." }
      end
    end
  end

  private
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    def supplier_params
      params.require(:supplier).permit(:name, :city, :phone)
    end
end
