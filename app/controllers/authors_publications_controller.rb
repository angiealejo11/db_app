class AuthorsPublicationsController < ApplicationController
  before_action :set_authors_publication, only: [:show, :update, :destroy]

  # GET /authors_publications
  def index
    @authors_publications = AuthorsPublication.all

    render json: @authors_publications
  end

  # GET /authors_publications/1
  def show
    render json: @authors_publication
  end

  # POST /authors_publications
  def create
    @authors_publication = AuthorsPublication.new(authors_publication_params)

    if @authors_publication.save
      render json: @authors_publication, status: :created, location: @authors_publication
    else
      render json: @authors_publication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /authors_publications/1
  def update
    if @authors_publication.update(authors_publication_params)
      render json: @authors_publication
    else
      render json: @authors_publication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /authors_publications/1
  def destroy
    @authors_publication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authors_publication
      @authors_publication = AuthorsPublication.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def authors_publication_params
      params.fetch(:authors_publication, {})
    end
end
