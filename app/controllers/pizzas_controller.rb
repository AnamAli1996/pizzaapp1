class PizzasController < ApplicationController
  before_action :set_pizza, only: [:show, :edit, :update, :destroy]
  before_action :authorise2, :except => [:index, :show, :search]
  # GET /pizzas
  # GET /pizzas.json
  def index
    @pizzas = Pizza.all
  end
  
  def discount 
	end
	
  def apply_discount
	discount = params[:discount].to_f
	@pizzas = Pizza.all
	@pizzas.each do |p|
		p.apply_discount(p, discount)
		p.save
	end
	render 'index', notice: "Discount has been applied"
end	

  # GET /pizzas/1
  # GET /pizzas/1.json
  def show
  end

  # GET /pizzas/new
  def new
    @pizza = Pizza.new
  end

  # GET /pizzas/1/edit
  def edit
  end
  
  def search
	@pizzas = Pizza.search params[:query]
		unless @pizzas.empty?
			render 'index'
		else
			flash[:notice] = "No records matches that search"
			render 'index'
		end	
	end
	
	
		
  # POST /pizzas
  # POST /pizzas.json
  def create
    @pizza = Pizza.new(pizza_params)
		

    respond_to do |format|
      if @pizza.save
        format.html { redirect_to @pizza, notice: 'Pizza was successfully created.' }
        format.json { render :show, status: :created, location: @pizza }
      else
        format.html { render :new }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizzas/1
  # PATCH/PUT /pizzas/1.json
  def update
    respond_to do |format|
      if @pizza.update(pizza_params)
        format.html { redirect_to @pizza, notice: 'Pizza was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza }
      else
        format.html { render :edit }
        format.json { render json: @pizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizzas/1
  # DELETE /pizzas/1.json
  def destroy
    @pizza.destroy
    respond_to do |format|
      format.html { redirect_to pizzas_url, notice: 'Pizza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza
      @pizza = Pizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_params
      params.require(:pizza).permit(:pizza_name, :pizza_size, :price, :description, :vegetarian, :gluten_free, :spice_level, :image)
    end
end
