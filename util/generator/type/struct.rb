module Godot::Generator
  module Type
    class Struct < Base
      def initialize signature, **options
        @signature = signature
        @options = options
      end

      def target_class
        Godot::Generator::Class.get_class(@options[:target_class])
      end

      def target_class_name
        target_class.name.to_s
      end

      def signature_without_star
        signature.gsub('*', '')
      end

    end
  end
end
