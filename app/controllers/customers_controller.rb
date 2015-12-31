class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  respond_to :html, :js, :json

  def index
    @customers = Customer.all
    respond_with(@customers)
  end

  def show
    respond_with(@customer)
  end

  def new
    @customer = Customer.new
    @customer.build_address
    respond_with(@customer)
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    respond_with(@customer)
  end

  def update
    @customer.update(customer_params)
    respond_with(@customer)
  end

  def destroy
    @customer.destroy
    respond_with(@customer)
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name, :cpf, :first_tel, :second_tel, :email, :marital_state, :maried, :gender, :address_attributes => [:place, :number, :complement, :cep, :city, :state])
    end
end
