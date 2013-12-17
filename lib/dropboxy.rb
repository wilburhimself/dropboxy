require "dropboxy/version"
require 'dropboxy/dropboxable'

module Dropboxy
  @config = {}
  
  def self.get_dropbox_file(file_path)
    content = @client.get_file(file_path)
    template = Dropboxable::Template.new(content)
    template.to_s
  end
  
  def self.configure(&block)
    yield @config
    @client = Dropboxable::Client.new(@config['dropbox_access_token'])
  end

end
 