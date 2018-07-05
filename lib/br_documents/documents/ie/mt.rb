# http://www.sintegra.gov.br/Cad_Estados/cad_MT.html
module BRDocuments
  class IE::MT < IE::Base

    set_verify_digits_weights first: %w(9 8 7 6 5 4 3 2)

    set_format_regexp %r{^0{2}?(13)[-.]?(\d{3})[-.]?(\d{3})[\/-]?(\d{1})}

    set_pretty_format_mask %(%s.%s.%s-%s)

    set_fixed_digits [1, 3]

    def self.valid_fixed_digits?(number)
      super(number) || super(number.gsub(/^00/, ''))
    end
  end
end