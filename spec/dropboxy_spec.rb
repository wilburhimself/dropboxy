require 'spec_helper'
describe Dropboxable do
  subject(:dropboxy_client) {
    token = YAML.load_file('spec/support/dropboxy_token.yml')
    Dropboxable::Client.new(token['dropbox_access_token'])
  }

  it "should have a valid client" do
    expect(dropboxy_client.account_info).not_to be_a_kind_of(DropboxAuthError)
  end

  describe "should convert raw content to HTML" do
     it "should convert textile to HTML" do
      content = 'p. Hello World'
      template = Dropboxable::Template.new(content)
      html_content = template.to_s
      expect(html_content).to eq('<p>Hello World</p>')
    end
  end

end
