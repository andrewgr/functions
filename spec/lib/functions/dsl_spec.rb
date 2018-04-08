RSpec.describe Functions::DSL do
  describe Functions::DSL::Identity do
    it "returns what has been passed into it" do
      expect(subject.call("foo")).to eq("foo")
      expect(subject.call("bar")).to eq("bar")
    end
  end

  describe ".global_scope" do
    it "returns a global scope" do
      expect(described_class.global_scope.to_s).to eq("main")
    end
  end

  describe ".number" do
    it "creates a method in the global scope" do
      expect {
        described_class.number(:foo, "foo")
      }.to change {
        Object.__send__(:foo) rescue nil
      }.from(nil)

      Object.remove_method(:foo)
    end

    describe "generated method" do
      before { described_class.number(:foo_bar, 10) }

      after { Object.remove_method(:foo_bar) }

      context "when no args are passed" do
        it "returns the value passed to the number function" do
          expect(foo_bar).to eq(10)
        end
      end

      context "when a proc is passed" do
        let(:proc) { Proc.new { |x| x * 2 } }

        it "calls the proc and return its result" do
          expect(foo_bar(proc)).to eq(proc.call(10))
        end
      end
    end
  end

  describe ".operation" do
    it "creates a method in the global scope" do
      expect {
        described_class.operation(:foo) { |a, b| a + b }
      }.to change {
        Object.__send__(:foo, 1) rescue nil
      }.from(nil)

      Object.remove_method(:foo)
    end

    describe "generated method" do
      before { described_class.operation(:foo_bar) { |a, b| a / b } }

      after { Object.remove_method(:foo_bar) }

      it "right-curryes the block" do
        expect(foo_bar(2).call(6)).to eq(3)
      end
    end
  end
end
