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
end
