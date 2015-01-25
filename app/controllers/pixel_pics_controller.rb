class PixelPicsController < ApplicationController
  before_action :set_pixel_pic, only: [:show, :edit, :update, :destroy]

  # GET /pixel_pics
  # GET /pixel_pics.json
  def index
    @pixel_pics = PixelPic.all
  end

  # GET /pixel_pics/1
  # GET /pixel_pics/1.json
  def show
  end

  # GET /pixel_pics/new
  def new
    @pixel_pic = PixelPic.new
  end

  # GET /pixel_pics/1/edit
  def edit
  end

  # POST /pixel_pics
  # POST /pixel_pics.json
  def create
    @pixel_pic = PixelPic.new(pixel_pic_params)

    respond_to do |format|
      if @pixel_pic.save
        format.html { redirect_to @pixel_pic, notice: 'Pixel pic was successfully created.' }
        format.json { render :show, status: :created, location: @pixel_pic }
      else
        format.html { render :new }
        format.json { render json: @pixel_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pixel_pics/1
  # PATCH/PUT /pixel_pics/1.json
  def update
    respond_to do |format|
      if @pixel_pic.update(pixel_pic_params)
        format.html { redirect_to @pixel_pic, notice: 'Pixel pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @pixel_pic }
      else
        format.html { render :edit }
        format.json { render json: @pixel_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pixel_pics/1
  # DELETE /pixel_pics/1.json
  def destroy
    @pixel_pic.destroy
    respond_to do |format|
      format.html { redirect_to pixel_pics_url, notice: 'Pixel pic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pixel_pic
      @pixel_pic = PixelPic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pixel_pic_params
      params.require(:pixel_pic).permit(:name, :image_characters)
    end
end
