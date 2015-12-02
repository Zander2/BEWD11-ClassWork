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
    
end
