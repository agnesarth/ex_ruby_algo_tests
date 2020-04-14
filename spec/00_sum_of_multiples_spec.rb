require_relative '../lib/00_sum_of_multiples'

describe "is n a multiple of 3 or 5" do
  it "select if n is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5(3)).to eq(true)
    expect(is_multiple_of_3_or_5(5)).to eq(true)
    expect(is_multiple_of_3_or_5(51)).to eq(true)
    expect(is_multiple_of_3_or_5(45)).to eq(true)
    expect(is_multiple_of_3_or_5(600)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5(2)).to eq(false)
    expect(is_multiple_of_3_or_5(56)).to eq(false)
    expect(is_multiple_of_3_or_5(202)).to eq(false)
    expect(is_multiple_of_3_or_5(47)).to eq(false)
    expect(is_multiple_of_3_or_5(904)).to eq(false)
  end
end

describe "sum_of_3_or_5_multiples" do
  # deux it : le premier quand la méthode doit retourner un résultat (même zéro), 
  # le second quand elle refuse l'entrée de l'utilisateur (ça n’est pas un entier naturel).
  it "gives us the sum of multiples of 3 or 5 under 1001" do
    expect(sum_of_3_or_5_multiples(1)).to eq(0)
    expect(sum_of_3_or_5_multiples(4)).to eq(3)
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(12)).to eq(33)
  end

  it "should return if the enter is not an integer" do
    expect(sum_of_3_or_5_multiples("oui")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    expect(sum_of_3_or_5_multiples(5.5602)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
    expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end
end
 