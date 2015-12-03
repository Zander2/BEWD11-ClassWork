class TracksController < ApplicationController
    
    def index
        if params[:search]
            p params[:search]
            search = params[:search]
            request = Typhoeus::Request.new("https://api.spotify.com/v1/search",
                                            method: :get,
                                            params: { q: search,
                                                      type: "track" }
                                            )
            request.run
            @response = request.response.body
            @response_json = JSON.parse(@response)
            @tracks = @response_json["tracks"]["items"]
            @tracks.sort! { |a,b| b["popularity"] <=> a["popularity"] }
        else
            @response_json = []
            @tracks = []
        end
    end
    
    def saved
        token = session[:spotify_access_token]
        request = Typhoeus::Request.new("https://api.spotify.com/v1/me/tracks",
                                        method: :get, 
                                        params: {limit: 50 },
                                        headers: { "Authorization": "Bearer #{token}" }
                                        )
        request.run
        @tracks = request.response.body
        @tracks_json = JSON.parse(@tracks)
        @tracks_saved = @tracks_json["items"]
        render "saved" 
    end
    
    def update
        id = params[:id]
        p "id:"
        p id
        token = session[:spotify_access_token]
        request = Typhoeus::Request.new("https://api.spotify.com/v1/me/tracks",
                                        method: :put, 
                                        params: {ids: id },
                                        headers: { "Authorization": "Bearer #{token}",
                                                    "Content-Type": "application/json" }
                                        )
        request.run
        !saved
    end
    
    def destroy
        id = params[:id]
        p "id:"
        p id
        token = session[:spotify_access_token]
        request = Typhoeus::Request.new("https://api.spotify.com/v1/me/tracks",
                                        method: :delete, 
                                        params: {ids: id },
                                        headers: { "Authorization": "Bearer #{token}",
                                                    "Content-Type": "application/json" }
                                        )
        request.run
        !saved
    end
end
