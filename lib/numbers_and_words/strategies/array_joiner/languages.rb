require 'numbers_and_words/strategies/array_joiner/languages/families/base'

require 'numbers_and_words/strategies/array_joiner/languages/base'

require 'numbers_and_words/strategies/array_joiner/languages/en'
require 'numbers_and_words/strategies/array_joiner/languages/en-GB'
require 'numbers_and_words/strategies/array_joiner/languages/hu'
require 'numbers_and_words/strategies/array_joiner/languages/ru'
require 'numbers_and_words/strategies/array_joiner/languages/ua'
require 'numbers_and_words/strategies/array_joiner/languages/pt-BR'

module NumbersAndWords
  module Strategies
    module ArrayJoiner
      module Languages
        class << self
          def factory(strategy)
            Object.const_get("#{name}::#{I18n.language_class_name}").new strategy
          end
        end
      end
    end
  end
end
