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
