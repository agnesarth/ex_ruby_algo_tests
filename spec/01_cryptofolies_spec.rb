require_relative '../lib/01_cryptofolies'

# Ta mission : créer une méthode caesar_cipher, dans un programme caesar_cipher.rb 
# qui prend en paramètres un string
# et une clé de chiffrement (nombre de lettres à décaler) pour en sortir le string modifié.

# Découper ce gros problème en petits problèmes simples : commence déjà à coder 
# UNE lettre (écrit une méthode qui fait ça).
# Ensuite tu travailleras sur des mots ou des phrases.
      # Tu vas devoir utiliser l'ASCII.
      # N'oublie pas de reboucler de z à a.
      # La casse doit être identique (= les majuscules restent des majuscules).
# 1 - le caractère
# 2 - le mot
# 3 - la phrase

# describe "check character" do
#   it "if it is a string" do
#     expect(check_string(str)).to eq(true)
#   end
#   it "if it is an integer" do
#     expect(check_integer(int)).to eq(true)
#   end
# end

describe "caesar cypher " do
  it "translates a letter" do
    expect(ceasar_cipher("f", 2)).to eq("h")
  end
  it "translates a letter at the end of the alphabet" do
    expect(ceasar_cipher("x", 6)).to eq("d")
  end
  it "translates an upper letter in upper letter" do
    expect(ceasar_cipher("S", 1)).to eq("T")
  end
  it "translates a word" do
    expect(ceasar_cipher("AAA BBB", 3)).to eq("DDD EEE")
  end
  it "BBB" do
    expect(ceasar_cipher("BBB", 3)).to eq("EEE")
  end
  it "should return encoded phrase" do
    expect(ceasar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(ceasar_cipher("Ceci n'est pas un tset.", 12)).to eq("Oqou z'qef bme gz feqf.")
  end
end