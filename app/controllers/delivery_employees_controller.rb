class DeliveryEmployeesController < ApplicationController
  before_action :authorise2
  before_action :set_delivery_employee, only: [:show, :edit, :update, :destroy]

  # GET /delivery_employees
  # GET /delivery_employees.json
  def index
    @delivery_employees = DeliveryEmployee.all
  end

  # GET /delivery_employees/1
  # GET /delivery_employees/1.json
  def show
  end

  # GET /delivery_employees/new
  def new
    @delivery_employee = DeliveryEmployee.new
  end


  # GET /delivery_employees/1/edit
  def edit
  end

  # POST /delivery_employees
  # POST /delivery_employees.json
  def create
    @delivery_employee = DeliveryEmployee.new(delivery_employee_params)

    respond_to do |format|
      if @delivery_employee.save
        format.html { redirect_to @delivery_employee, notice: 'Delivery employee was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_employee }
      else
        format.html { render :new }
        format.json { render json: @delivery_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_employees/1
  # PATCH/PUT /delivery_employees/1.json
  def update
    respond_to do |format|
      if @delivery_employee.update(delivery_employee_params)
        format.html { redirect_to @delivery_employee, notice: 'Delivery employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_employee }
      else
        format.html { render :edit }
        format.json { render json: @delivery_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_employees/1
  # DELETE /delivery_employees/1.json
  def destroy
    @delivery_employee.destroy
    respond_to do |format|
      format.html { redirect_to delivery_employees_url, notice: 'Delivery employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_employee
      @delivery_employee = DeliveryEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_employee_params
      params.require(:delivery_employee).permit(:name, :phone_number, :sex, :date_joined, :email, :password, :password_confirmation)
    end
end
