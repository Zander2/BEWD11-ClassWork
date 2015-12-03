class AuthenticationsController < ApplicationController
    
    def create
        if params[:code]
            code = params[:code]
            request = Typhoeus::Request.new("https://accounts.spotify.com/api/token",
                                            method: :post,
                                            params: { grant_type: "authorization_code",
                                                      code: code,
                                                      redirect_uri: "http://uzkk3e3b8aa8.zander2.koding.io:3000#{auth_spotify_path}",
                                                      client_id: "6a3069d4a813458f9127554a050e21e0",
                                                      client_secret: "500488c4ae494d0f96514fb5b47b168c"
                                                    }
                                            )
            request.run 
            @auth_token = request.response.body
            @auth_token_json = JSON.parse(@auth_token)
            session[:spotify_access_token] = @auth_token_json["access_token"]
            redirect_to :controller => 'tracks', :action => 'index'
        else
            spotify_auth = "https://accounts.spotify.com/authorize"
            client_id = "client_id=6a3069d4a813458f9127554a050e21e0"
            response_type = "response_type=code"
            reditect = "redirect_uri=http://uzkk3e3b8aa8.zander2.koding.io:3000#{auth_spotify_path}"
            scopes = "scope=user-library-read user-library-modify"
            url = ""
            url += spotify_auth + "?"
            url += client_id + "&"
            url += response_type + "&"
            url += reditect + "&"
            url += scopes
            redirect_to url
        end
    end
    
    def down
        session[:spotify_access_token] = nil
        redirect_to :controller => 'tracks', :action => 'index' 
    end
    
    def destroy
		reset_session
		redirect_to tracks_path
	end
        
    
end
