module Functions
  module DSL
    Identity = -> (x) { x }

    class << self
      attr_accessor :global_scope

      def number(name, value)
        global_scope.instance_exec do
          define_method name do |operation = Identity|
            operation.call(value)
          end
          private name
        end
      end

      def operation(name, &block)
        global_scope.instance_exec do
          define_method name do |b|
            -> a { block.call(a, b) }
          end
          private name
        end
      end
    end
  end
end

Functions::DSL.global_scope = self
