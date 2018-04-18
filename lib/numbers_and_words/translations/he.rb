module NumbersAndWords
  module Translations
    class He < Base
      include NumbersAndWords::Translations::Families::Latin
      include NumbersAndWords::Translations::Extensions::FractionSignificance
      
      def tens_with_ones(numbers, options = {})
        options[:separator] ||= ''
        super
      end

      def hundreds(number, _options = {})
        parts = [t(:hundreds)]
        parts.unshift(t(:ones)[number]) if number > 1

        parts.join(' ')
      end
    end
  end
end
