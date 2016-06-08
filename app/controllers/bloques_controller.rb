class BloquesController < ApplicationController
  def index
    @bloques = Bloque.all
    @user=current_user
  end

  def show
    @bloque = Bloque.find(params[:id])
  end

  def new
    @bloque = Bloque.new
  end

  def create
    @bloque = Bloque.new

    @bloque.name = params[:name]

    @bloque.description = params[:description]

    @bloque.predecessor = params[:predecessor]



    if @bloque.save
      redirect_to "/bloques", :notice => "Bloque created successfully."
    else
      render 'new'
    end

  end

  def edit
    @bloque = Bloque.find(params[:id])
  end

  def update
    @bloque = Bloque.find(params[:id])


    @bloque.name = params[:name]

    @bloque.description = params[:description]

    @bloque.predecessor = params[:predecessor]



    if @bloque.save
      redirect_to "/bloques", :notice => "Bloque updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @bloque = Bloque.find(params[:id])

    @bloque.destroy


    redirect_to "/bloques", :notice => "Bloque deleted."

  end
end
