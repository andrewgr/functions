RSpec.describe do
  specify do
    expect(five).to eq(5)
  end

  specify do
    expect(six).to eq(6)
  end

  specify do
    expect(six(times(five))).to eq(30)
  end

  specify "multiplication is commutative" do
    expect(six(times(five))).to eq(five(times(six)))
  end
end

RSpec.describe "divided_by" do
  specify do
    expect(six(divided_by(5))).to eq(1)
  end
end

RSpec.describe "plus" do
  specify do
    expect(one(plus(nine))).to eq(10)
  end
end

RSpec.describe "minus" do
  specify do
    expect(six(minus(three))).to eq(3)
  end
end
