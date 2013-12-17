require 'RedCloth'
require 'dropbox_sdk'
module Dropboxable

  class Client

    attr_reader :client

    def initialize(access_token)
      client = DropboxClient.new(access_token)
    end

    # Wrapper function for the dropbox SDK get_file_and_metadata
    # Download a file and get its metadata.
    #
    # Args:
    # * +from_path+: The path to the file to be downloaded
    # * +rev+: A previous revision value of the file to be downloaded
    #
    # Returns:
    # * The file contents.
    # * The file metadata as a hash.
    def fetch_file(file_path)
      client.get_file(file_path)
    end

    def method_missing(m, *args, &block)
      client.send(m, *args)
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


