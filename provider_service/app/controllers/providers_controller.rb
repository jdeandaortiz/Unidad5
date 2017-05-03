class ProvidersController < ApplicationController
  before_action :set_provider, only: [:show, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /providers
  # GET /providers.json
  def index
    @providers = Provider.all

    render json: @providers
  end

  # GET /providers/1
  # GET /providers/1.json
  def show
    render json: @provider
  end

  # POST /providers
  # POST /providers.json
  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      render json: @provider, status: :created, location: @provider
    else
      render json: @provider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /providers/1
  # PATCH/PUT /providers/1.json
  def update
    if @provider.update(provider_params)
      head :no_content
    else
      render json: @provider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /providers/1
  # DELETE /providers/1.json
  def destroy
    @provider.destroy

    head :no_content
  end

  private

    def set_provider
      @provider = Provider.find(params[:id])
    end

    def provider_params
      params.permit(:name)
    end
end
