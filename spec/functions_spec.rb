RSpec.describe "#zero" do
  specify { expect(zero).to eq(0) }
end

RSpec.describe "#one" do
  specify { expect(one).to eq(1) }
end

RSpec.describe "#two" do
  specify { expect(two).to eq(2) }
end

RSpec.describe "#three" do
  specify { expect(three).to eq(3) }
end

RSpec.describe "#four" do
  specify { expect(four).to eq(4) }
end

RSpec.describe "#five" do
  specify { expect(five).to eq(5) }
end

RSpec.describe "#six" do
  specify { expect(six).to eq(6) }
end

RSpec.describe "#seven" do
  specify { expect(seven).to eq(7) }
end

RSpec.describe "#eight" do
  specify { expect(eight).to eq(8) }
end

RSpec.describe "#nine" do
  specify { expect(nine).to eq(9) }
end

RSpec.describe "#times" do
  specify do
    expect(six(times(five))).to eq(6 * 5)
  end

  it "is commutative" do
    expect(six(times(five))).to eq(five(times(six)))
  end
end

RSpec.describe "#divided_by" do
  specify do
    expect(six(divided_by(5))).to eq(6 / 5)
  end

  specify do
    expect { one(divided_by(zero)) }.to raise_error(ZeroDivisionError)
  end
end

RSpec.describe "#plus" do
  specify do
    expect(one(plus(nine))).to eq(1 + 9)
  end
end

RSpec.describe "#minus" do
  specify do
    expect(six(minus(three))).to eq(6 - 3)
  end
end
