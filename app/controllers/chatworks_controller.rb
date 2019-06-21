class ChatworksController < ApplicationController
  before_action :set_chatwork, only: [:show, :edit, :update, :destroy]

  # GET /chatworks
  # GET /chatworks.json
  def index
    @chatworks = Chatwork.all
  end

  # GET /chatworks/1
  # GET /chatworks/1.json
  def show
  end

  # GET /chatworks/new
  def new
    @chatwork = Chatwork.new
  end

  # GET /chatworks/1/edit
  def edit
  end

  # POST /chatworks
  # POST /chatworks.json
  def create
    @chatwork = Chatwork.new(chatwork_params)

    respond_to do |format|
      if @chatwork.save
        format.html { redirect_to @chatwork, notice: 'Chatwork was successfully created.' }
        format.json { render :show, status: :created, location: @chatwork }
      else
        format.html { render :new }
        format.json { render json: @chatwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chatworks/1
  # PATCH/PUT /chatworks/1.json
  def update
    respond_to do |format|
      if @chatwork.update(chatwork_params)
        format.html { redirect_to @chatwork, notice: 'Chatwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @chatwork }
      else
        format.html { render :edit }
        format.json { render json: @chatwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatworks/1
  # DELETE /chatworks/1.json
  def destroy
    @chatwork.destroy
    respond_to do |format|
      format.html { redirect_to chatworks_url, notice: 'Chatwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatwork
      @chatwork = Chatwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chatwork_params
      params.require(:chatwork).permit(:api_token, :user_id)
    end
end
