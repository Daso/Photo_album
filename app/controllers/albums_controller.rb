class AlbumsController < ApplicationController
  # GET /albums
  # GET /albums.json
  def photo_test
    @photos = Instagram.user_recent_media(777)
  end
def index
    @client = session[:client]
    Instagram.configure do |config|
      config.client_id = "af31a5cdcae140c5af5da854ebbe9ddf"
      config.client_secret = "b8600511ba804fd3aad4b1e00826187d"
    end
  end

  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => "http://localhost:3000/autentication")
  end

  def auntentication
    response = Instagram.get_access_token(params[:code], :redirect_uri => "http://localhost:3000/autentication")
    session[:access_token] = response.access_token
    redirect_to "/feed"

  end 

  def feed
  @client = Instagram.client(:access_token => session[:access_token])

  session[:client] = @client 

  # @html = "<h1>#{user.username}'s recent photos</h1>"
  # for @media_item in @client.user_recent_media
  #   @html << "<img src='#{media_item.images.thumbnail.url}'>"
  # end
  # @html/
  respond_to do |format|
      format.html { redirect_to root_path, notice: 'Album was successfully created.' }
      format.json { render json: @album }
    end
end



 
end
