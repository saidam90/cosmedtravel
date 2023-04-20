class PackagesController < ApplicationController
  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:package_id])
    @payment = Payment.new
  end

  private
  def package_params
    params.require(:package).permit(:package_name, :package_description, :package_price)
  end
end
