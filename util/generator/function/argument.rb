module Godot::Generator
  class Function
    class Argument
      attr_reader :name

      def initialize type, name
        @type = type
        @name = name
      end

      def type
        Godot::Generator::Type.get_type @type
      end

      def variant_pointer?
        type.name == 'godot_variant_pointer'
      end
    end
  end
end
