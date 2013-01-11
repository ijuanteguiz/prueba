class ParteContenidosController < ApplicationController
  # GET /parte_contenidos
  # GET /parte_contenidos.json
  def index
    @parte_contenidos = ParteContenido.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parte_contenidos }
    end
  end

  # GET /parte_contenidos/1
  # GET /parte_contenidos/1.json
  def show
    @parte_contenido = ParteContenido.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parte_contenido }
    end
  end

  # GET /parte_contenidos/new
  # GET /parte_contenidos/new.json
  def new
    @parte_contenido = ParteContenido.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parte_contenido }
    end
  end

  # GET /parte_contenidos/1/edit
  def edit
    @parte_contenido = ParteContenido.find(params[:id])
  end

  # POST /parte_contenidos
  # POST /parte_contenidos.json
  def create
    @parte_contenido = ParteContenido.new(params[:parte_contenido])

    respond_to do |format|
      if @parte_contenido.save
        format.html { redirect_to @parte_contenido, notice: 'Parte contenido was successfully created.' }
        format.json { render json: @parte_contenido, status: :created, location: @parte_contenido }
      else
        format.html { render action: "new" }
        format.json { render json: @parte_contenido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parte_contenidos/1
  # PUT /parte_contenidos/1.json
  def update
    @parte_contenido = ParteContenido.find(params[:id])

    respond_to do |format|
      if @parte_contenido.update_attributes(params[:parte_contenido])
        format.html { redirect_to @parte_contenido, notice: 'Parte contenido was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parte_contenido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parte_contenidos/1
  # DELETE /parte_contenidos/1.json
  def destroy
    @parte_contenido = ParteContenido.find(params[:id])
    @parte_contenido.destroy

    respond_to do |format|
      format.html { redirect_to parte_contenidos_url }
      format.json { head :no_content }
    end
  end
end
