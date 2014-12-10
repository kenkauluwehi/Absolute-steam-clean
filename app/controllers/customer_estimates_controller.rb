class CustomerEstimatesController < ApplicationController
  before_action :set_customer_estimate, only: [:show, :edit, :update, :destroy]

  # GET /customer_estimates
  # GET /customer_estimates.json
  def index
    @customer_estimates = CustomerEstimate.all
  end

  # GET /customer_estimates/1
  # GET /customer_estimates/1.json
  def show
  end

  # GET /customer_estimates/new
  def new
    @customer_estimate = CustomerEstimate.new
  end

  # GET /customer_estimates/1/edit
  def edit
  end

  # POST /customer_estimates
  # POST /customer_estimates.json
  def create
    @customer_estimate = CustomerEstimate.new(customer_estimate_params)

    respond_to do |format|
      if @customer_estimate.save
        UserMailer.estimation_confirmation(@customer_estimate).deliver
        UserMailer.estimation_confirmation_to_user(@customer_estimate).deliver
        format.html { redirect_to home_pricing_path, notice: 'Customer estimate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer_estimate }
      else
        format.html { redirect_to home_pricing_path, notice: 'Customer estimate was unsuccessfully created. REJECTED.' }
        format.html { render action: 'new' }
        format.json { render json: @customer_estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_estimates/1
  # PATCH/PUT /customer_estimates/1.json
  def update
    respond_to do |format|
      if @customer_estimate.update(customer_estimate_params)
        format.html { redirect_to home_pricing_path, notice: 'Customer estimate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer_estimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_estimates/1
  # DELETE /customer_estimates/1.json
  def destroy
    @customer_estimate.destroy
    respond_to do |format|
      format.html { redirect_to home_pricing_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_estimate
      @customer_estimate = CustomerEstimate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_estimate_params
      params.require(:customer_estimate).permit(:name, :email, :phone)
    end
end
