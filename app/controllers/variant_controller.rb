class VariantController < ApplicationController

  def index
      render 'view'
  end

  def list
    @vars=Variant.all
  end

  def show
    @var = Variant.find(params[:product_id])
  end

  def new
    @p=Product.find(params[:product_id])
    @var=@p.variants.new

  end

  def create
    @var = Variant.new(var_params)

    if @var.save
       redirect_to :action => 'list'
    else
       render :action => 'new'
    end
  end

  def var_params
    params.permit(:id , :varname)
 end

  def edit
    @var = Variant.find_by(params[:id])
  end

  def update
    @var = Variant.find_by(params[:id])

    if @var.update_attributes()
       redirect_to :action => 'show', :id => @var
    else
       render :action => 'edit'
    end

  end

  def delete
    Variant.find(params[:id]).destroy
    redirect_to '/'
  end

end
