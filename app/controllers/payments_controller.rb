class PaymentsController < ApplicationController
  def new
    # @package = package.find(params[:package_id])
    @payment = Payment.new(payment_params)
  end

  def create
    @package = package.find(params[:package_id])
    @payment = Payment.new(payment_params)
    # @payment.recipe = @package
    if @payment.save
      redirect_to package_path(@package)
    else
      render 'package/show'
    end
  end

  private

  def payment_params
    params.permit(:first_name, :last_name, :email, :phone, :address, :city, :country)
  end
end
