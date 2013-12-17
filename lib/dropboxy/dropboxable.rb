require 'RedCloth'
require 'dropbox_sdk'
module Dropboxable

  class Client

    def initialize(access_token)
      @client = DropboxClient.new(access_token)
    end

    def method_missing(m, *args, &block)
      @client.send(m, *args)
    end

  end

  class Template

    def initialize(content)
      @content = content
    end

    def to_s
      RedCloth.new(@content).to_html
    end

  end

end


