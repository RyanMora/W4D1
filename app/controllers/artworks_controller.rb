class ArtworksController < ApplicationController
  def index
    # have user_id, want shared_artworks and artworks
    #  --> artworks owned by user_id
    #  --> artworks shared with user_id

    user = User.find(params[:user_id])
    owned = user.artworks
    shared = user.shared_artworks

    render json: {
      artworks_by_user: owned,
      artworks_shared_with_user: shared
    }
    # render json: owned + shared
  end

  def create
    artwork = Artwork.new(artwork_params)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def update
    artwork = Artwork.find(params[:id])
    artwork.update(artwork_params)
    render json: artwork
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end


  private

  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end

end
