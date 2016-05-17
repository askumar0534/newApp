class ProductsController < InheritedResources::Base

   def create
   	@category = Category.find params[:post][:category_id]
    @product = @category.products.new(product_params)
  	if @product.save
  		ProductMail.product_email(current_user,@product).deliver
  	respond_to do |format|
      format.html { render :show, status: :created }
      format.json 
    end
  	else
  		render 'new'
  	end
  end

  def index
  	@products = Product.all
  
  end

  private

    def product_params
      params.require(:product).permit(:name, :price)
    end
end

