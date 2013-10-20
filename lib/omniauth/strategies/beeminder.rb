require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Beeminder < OmniAuth::Strategies::OAuth2
      option :name, 'beeminder'

      option :client_options, {
        :site => 'https://www.beeminder.com',
        :authorize_url => 'https://www.beeminder.com/apps/authorize',
        :token_url => 'https://www.beeminder.com/apps/authorize',
        :response_type => 'token'
      }

      uid { 
        raw_info['username'] 
      }

      info do
        {
          'id' => raw_info['username']
        }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get("/api/v1/users/me.json?access_token=#{access_token.token}").body)
      end
    end
  end
end

OmniAuth.config.add_camelization 'beeminder', 'Beeminder'