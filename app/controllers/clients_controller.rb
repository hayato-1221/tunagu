class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @visit_histories = @client.visit_histories
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = current_user.clients.new(client_params)

    if @client.save
      redirect_to @client, notice: "Client was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    if @client.update(client_params)
      redirect_to @client, notice: "Client was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    redirect_to clients_url, notice: "Client was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_client
    @client = current_user.clients.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def client_params
    params.require(:client).permit(:name, :gender, :age, :address)
  end
end
