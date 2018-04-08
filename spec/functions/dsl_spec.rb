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
        described_class.number(:foo_bar_baz, "foo")
      }.to change {
        Object.__send__(:foo_bar_baz) rescue nil
      }.from(nil).to("foo")
    end

    describe "generated method" do
      before { described_class.number(:foo_bar, 10) }

      after { Object.remove_method(:foo_bar) }

      context "when passed nothing" do
        it { expect(foo_bar).to eq(10) }
      end

      context "when passed a proc" do
        let(:proc) { Proc.new { |x| x * 2 } }

        it "calls the proc and return its result" do
          expect(foo_bar(proc)).to eq(proc.call(10))
        end
      end
    end
  end
end
