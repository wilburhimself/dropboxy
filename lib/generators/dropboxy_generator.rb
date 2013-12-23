class DropboxyRailtie < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))
  def copy_initializer
    copy_file 'dropboxy.rb', 'config/initializers/dropboxy.rb'
  end
end
