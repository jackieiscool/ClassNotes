class RomanNumeralGenerator
  TABLE = {
    1000 => "M",
    900  => "CM",
    500  => "D",
    400  => "CD",
    100  => "C",
    90   => "XC",
    50   => "L",
    40   => "XL",
    10   => "X",
    9    => "IX",
    5    => "V",
    4    => "IV",
    1    => "I",
  }

  def convert(arabic_numeral)
    roman_numeral = ""

    TABLE.each do |arabic, roman|
      while arabic_numeral >= arabic
        roman_numeral << roman
        arabic_numeral -= arabic
      end
    end

    return roman_numeral
  end

end
