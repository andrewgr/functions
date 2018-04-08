RSpec.describe "numbers" do
  let(:proc) { ->(x) { x + 1 } }

  describe ".zero" do
    it "returns 0 when no args provided" do
      expect(zero).to eq(0)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(zero(proc)).to eq(1)
    end
  end

  describe ".one" do
    it "returns 1 when no args provided" do
      expect(one).to eq(1)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(one(proc)).to eq(2)
    end
  end

  describe ".two" do
    it "returns 2 when no args provided" do
      expect(two).to eq(2)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(two(proc)).to eq(3)
    end
  end

  describe ".three" do
    it "returns 3 when no args provided" do
      expect(three).to eq(3)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(three(proc)).to eq(4)
    end
  end

  describe ".four" do
    it "returns 4 when no args provided" do
      expect(four).to eq(4)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(four(proc)).to eq(5)
    end
  end

  describe ".five" do
    it "returns 5 when no args provided" do
      expect(five).to eq(5)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(five(proc)).to eq(6)
    end
  end

  describe ".six" do
    it "returns 6 when no args provided" do
      expect(six).to eq(6)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(six(proc)).to eq(7)
    end
  end

  describe ".seven" do
    it "returns 7 when no args provided" do
      expect(seven).to eq(7)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(seven(proc)).to eq(8)
    end
  end

  describe ".eight" do
    it "returns 8 when no args provided" do
      expect(eight).to eq(8)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(eight(proc)).to eq(9)
    end
  end

  describe ".nine" do
    it "returns 9 when no args provided" do
      expect(nine).to eq(9)
    end

    it "returns a modified value when an operator arg is provided" do
      expect(nine(proc)).to eq(10)
    end
  end
end

RSpec.describe "operations" do
  describe ".times" do
    it "performs multiplication" do
      expect(six(times(five))).to eq(6 * 5)
    end

    it "is commutative" do
      expect(six(times(five))).to eq(five(times(six)))
    end
  end

  describe ".divided_by" do
    it "performs integer division" do
      expect(six(divided_by(5))).to eq(6 / 5)
    end

    it "does not allow division by zero" do
      expect { one(divided_by(zero)) }.to raise_error(ZeroDivisionError)
    end
  end

  describe ".plus" do
    it "performs addition" do
      expect(one(plus(nine))).to eq(1 + 9)
    end

    it "is commutative" do
      expect(nine(plus(one))).to eq(one(plus(nine)))
    end
  end

  describe ".minus" do
    it "performs subtraction" do
      expect(six(minus(three))).to eq(6 - 3)
    end
  end

  describe ".to_the_power_of" do
    it "raises a number to a power" do
      expect(two(to_the_power_of(three))).to eq(2 ** 3)
    end

    it "handles a zero exponent" do
      expect(two(to_the_power_of(zero))).to eq(1)
    end

    it "handles the base equal to one" do
      expect(one(to_the_power_of(five))).to eq(1)
    end
  end

  describe "when deeply nested" do
    it "they still work" do
      expect(one(plus(two(times(three))))).to eq(seven)
    end
  end
end
