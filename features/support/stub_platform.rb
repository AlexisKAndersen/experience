module Experience
  module Stub
    class Platform

      def self.information
        @information ||= YAML.load_file File.expand_path('../stub_data.yml', __FILE__,)
      end

      def self.get_content identifier
        information.fetch(:content).fetch(identifier.keys.first).fetch(identifier.values.first)
      end
    end
  end
end