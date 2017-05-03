class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]
  skip_before_filter :verify_authenticity_token


  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all

    render json: @categories
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    render json: @category
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    if @category.update(category_params)
      head :no_content
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy

    head :no_content
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.permit(:name, :description)
    end
end
