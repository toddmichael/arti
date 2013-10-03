require 'faraday'

module Arti
  class Client
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

    def download(args)
      @uri = args[:uri]
      @file = args[:file]

      File.open(@file, "w") do |file|
        file.write(self.get(@uri).body)
      end
    end
  end
end
