class ZumbisController < ApplicationController
  before_action :set_zumbi, only: [:show, :edit, :update, :destroy]

  # GET /zumbis
  # GET /zumbis.json
  def index
    @zumbis = Zumbi.all
  end

  # GET /zumbis/1
  # GET /zumbis/1.json
  def show
  end

  # GET /zumbis/new
  def new
    @zumbi = Zumbi.new
  end

  # GET /zumbis/1/edit
  def edit
  end

  # POST /zumbis
  # POST /zumbis.json
  def create
    @zumbi = Zumbi.new(zumbi_params)

    respond_to do |format|
      if @zumbi.save
        format.html { redirect_to @zumbi, notice: 'Zumbi was successfully created.' }
        format.json { render :show, status: :created, location: @zumbi }
      else
        format.html { render :new }
        format.json { render json: @zumbi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zumbis/1
  # PATCH/PUT /zumbis/1.json
  def update
    respond_to do |format|
      if @zumbi.update(zumbi_params)
        format.html { redirect_to @zumbi, notice: 'Zumbi was successfully updated.' }
        format.json { render :show, status: :ok, location: @zumbi }
      else
        format.html { render :edit }
        format.json { render json: @zumbi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zumbis/1
  # DELETE /zumbis/1.json
  def destroy
    @zumbi.destroy
    respond_to do |format|
      format.html { redirect_to zumbis_url, notice: 'Zumbi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zumbi
      @zumbi = Zumbi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zumbi_params
      params.require(:zumbi).permit(:nome, :idade, :bio)
    end
end
