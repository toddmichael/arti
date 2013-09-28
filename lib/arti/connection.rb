require 'faraday'

module Arti
  class Connection
    attr_reader :conn
    def initialize(args)
      @endpoint = args[:endpoint]
      @user = args[:user]
      @password = args[:password]

      @conn = Faraday.new(:url => @endpoint) do |f|
        f.request  :url_encoded
        f.request  :basic_auth, @user, @password
        f.response :logger
        f.adapter  Faraday.default_adapter
      end
    end

    def get(uri)
      conn.get(uri)
    end
  end
end
