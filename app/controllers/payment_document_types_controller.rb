class PaymentDocumentTypesController < ApplicationController
  before_action :set_payment_document_type, only: [:show, :edit, :update, :destroy]

  # GET /payment_document_types
  # GET /payment_document_types.json
  def index
    @payment_document_types = PaymentDocumentType.all
  end

  # GET /payment_document_types/1
  # GET /payment_document_types/1.json
  def show
  end

  # GET /payment_document_types/new
  def new
    @payment_document_type = PaymentDocumentType.new
  end

  # GET /payment_document_types/1/edit
  def edit
  end

  # POST /payment_document_types
  # POST /payment_document_types.json
  def create
    @payment_document_type = PaymentDocumentType.new(payment_document_type_params)

    respond_to do |format|
      if @payment_document_type.save
        format.html { redirect_to @payment_document_type, notice: 'Payment document type was successfully created.' }
        format.json { render :show, status: :created, location: @payment_document_type }
      else
        format.html { render :new }
        format.json { render json: @payment_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_document_types/1
  # PATCH/PUT /payment_document_types/1.json
  def update
    respond_to do |format|
      if @payment_document_type.update(payment_document_type_params)
        format.html { redirect_to @payment_document_type, notice: 'Payment document type was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_document_type }
      else
        format.html { render :edit }
        format.json { render json: @payment_document_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_document_types/1
  # DELETE /payment_document_types/1.json
  def destroy
    @payment_document_type.destroy
    respond_to do |format|
      format.html { redirect_to payment_document_types_url, notice: 'Payment document type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_document_type
      @payment_document_type = PaymentDocumentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_document_type_params
      params.require(:payment_document_type).permit(:name, :description)
    end
end
