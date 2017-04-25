class FraiskilometriquesController < ApplicationController
  before_action :set_fraiskilometrique, only: [:show, :edit, :update, :destroy]

  # GET /fraiskilometriques
  # GET /fraiskilometriques.json
  def index
    @fraiskilometriques = Fraiskilometrique.all
  end

  # GET /fraiskilometriques/1
  # GET /fraiskilometriques/1.json
  def show
  end

  # GET /fraiskilometriques/new
  def new
    @fraiskilometrique = Fraiskilometrique.new
  end

  # GET /fraiskilometriques/1/edit
  def edit
  end

  # POST /fraiskilometriques
  # POST /fraiskilometriques.json
  def create
    @fraiskilometrique = Fraiskilometrique.new(fraiskilometrique_params)

    respond_to do |format|
      if @fraiskilometrique.save
        format.html { redirect_to @fraiskilometrique, notice: 'Fraiskilometrique was successfully created.' }
        format.json { render :show, status: :created, location: @fraiskilometrique }
      else
        format.html { render :new }
        format.json { render json: @fraiskilometrique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fraiskilometriques/1
  # PATCH/PUT /fraiskilometriques/1.json
  def update
    respond_to do |format|
      if @fraiskilometrique.update(fraiskilometrique_params)
        format.html { redirect_to @fraiskilometrique, notice: 'Fraiskilometrique was successfully updated.' }
        format.json { render :show, status: :ok, location: @fraiskilometrique }
      else
        format.html { render :edit }
        format.json { render json: @fraiskilometrique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fraiskilometriques/1
  # DELETE /fraiskilometriques/1.json
  def destroy
    @fraiskilometrique.destroy
    respond_to do |format|
      format.html { redirect_to fraiskilometriques_url, notice: 'Fraiskilometrique was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fraiskilometrique
      @fraiskilometrique = Fraiskilometrique.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fraiskilometrique_params
      params.require(:fraiskilometrique).permit(:nom, :date, :chevaux, :km, :total)
    end
end
