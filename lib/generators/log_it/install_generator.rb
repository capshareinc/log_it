require 'rails/generators'
module LogIt
  class InstallGenerator < Rails::Generators::Base
    desc "Includes the LogIt module in Object via initialzer"
    source_root File.expand_path('../templates', __FILE__)

    copy_file "log_it.rb", "config/initializers/log_it.rb"
  end
end
