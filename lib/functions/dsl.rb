module Functions
  module DSL
    Identity = -> (x) { x }

    class << self
      attr_accessor :global_scope

      def number(name, value)
        global_scope.instance_exec do
          private

          define_method name do |operation = Identity|
            operation.call(value)
          end
        end
      end

      def binary_operation(name, &block)
        global_scope.instance_exec do
          private

          define_method name do |y|
            -> x { block.call(x, y) }
          end
        end
      end

      # This is an alternative implementation of `binary_operation`
      # method that relies on a potentially dangerous and hacky
      # monkey-patching of `Proc` class to add `rcurry` method that
      # performs "right currying" on a proc ("normal" currying is
      # left-to-right). Unfortunatelly, Ruby doesn't support that
      # functionality.
      #
      # Alternatives to monkey-patching would be to:
      # 1. inverse the order of args in the block passed into the
      #    method, but that would look confusing;
      # 2. define a subclass of `Proc` with `rcurry` method, but that
      #    would make the code in the module and test more complex,
      # 3. try to use refinements on `Proc`, but I'm not sure that
      #    is possible since the methods are defined in the global
      #    scope, not in the module where refinements are applied.
      #
      # Proc.define_method :rcurry do
      #   proc do |*passed|
      #     proc do |*args|
      #       self[*args, *passed]
      #     end
      #   end
      # end
      #
      # def binary_operation(name, &block)
      #   global_scope.instance_exec do
      #     private
      #
      #     define_method(name) { |y| block.rcurry[y] }
      #   end
      # end
    end
  end
end

Functions::DSL.global_scope = self
