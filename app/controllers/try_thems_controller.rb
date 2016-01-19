class TryThemsController < ApplicationController
  before_action :set_try_them, only: [:show, :edit, :update, :destroy]

  # GET /try_thems
  # GET /try_thems.json
  def index
    @try_thems = TryThem.all
  end

  # GET /try_thems/1
  # GET /try_thems/1.json
  def show
  end

  # GET /try_thems/new
  def new
    @try_them = TryThem.new
  end

  # GET /try_thems/1/edit
  def edit
  end

  # POST /try_thems
  # POST /try_thems.json
  def create
    @try_them = TryThem.new(try_them_params)

    respond_to do |format|
      if @try_them.save
        format.html { redirect_to @try_them, notice: 'Try them was successfully created.' }
        format.json { render :show, status: :created, location: @try_them }
      else
        format.html { render :new }
        format.json { render json: @try_them.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /try_thems/1
  # PATCH/PUT /try_thems/1.json
  def update
    respond_to do |format|
      if @try_them.update(try_them_params)
        format.html { redirect_to @try_them, notice: 'Try them was successfully updated.' }
        format.json { render :show, status: :ok, location: @try_them }
      else
        format.html { render :edit }
        format.json { render json: @try_them.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /try_thems/1
  # DELETE /try_thems/1.json
  def destroy
    @try_them.destroy
    respond_to do |format|
      format.html { redirect_to try_thems_url, notice: 'Try them was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_try_them
      @try_them = TryThem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def try_them_params
      params.require(:try_them).permit(:title, :description)
    end
end
