class ProductController < ApplicationController

  def list
    @products=Product.all
  end

  def show
    @prod = Product.find(params[:id])

  end

  def new
    @prod = Product.new
  end

  def create
    @prod = Product.new(prod_params)

    if @prod.save
       redirect_to :action => 'list'
    else
       render :action => 'new'
    end

 end

 def prod_params
    params.require(:products).permit(:productName)
 end

  def edit
    @prod = Product.find(params[:id])
  end

  def update
    @prod = Product.find(params[:id])

    if @prod.update_attributes(prod_params)
       redirect_to :action => 'show', :id => @prod
    else
       render :action => 'edit'
    end

  end

  def delete
    Product.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

#   def newVar
#     @prod = Product.find(params[:id])
#     @var =@prod.variants.new
#   end

#   def delVar
#     # @prod = Product.find(params[:id])
#     Variant.find(params[:id]).destroy
#     redirect_to :action => 'list'
#   end

#   def createVar
#     @var= Variant.new(var_params)
#     if @var.save
#       redirect_to :action => 'list'
#    else

#    end
#   end

#   def var_params
#     params.require(:variants).permit(:varname,:price)
#  end

end
