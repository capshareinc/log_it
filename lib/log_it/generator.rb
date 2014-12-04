module LogIt
  module Generators
    class LogitGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def generate_logit
        copy_file "log_it.rb", "config/initializers/log_it.rb"
      end
    end
  end
end
