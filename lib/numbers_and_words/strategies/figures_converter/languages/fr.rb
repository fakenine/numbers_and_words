module NumbersAndWords
  module Strategies
    module FiguresConverter
      module Languages
        class Fr < Base
          include Families::Latin

          private

          def capacity_iteration
            words = []
            capacity_words = words_in_capacity(@current_capacity)
            words.push(megs) unless capacity_words.empty?
            words += capacity_words unless is_a_thousand? && is_a_one?
            words
          end

          def is_a_one?
            words_in_capacity(@current_capacity) == [translations.ones(1)]
          end

          def is_a_thousand?
            FiguresArray::THOUSAND_CAPACITY == @current_capacity
          end

          def hundreds
            super({ pluralize: simple_number_to_words.empty? })
          end

          def megs
            super({ number: @figures.number_in_capacity(@current_capacity) })
          end
        end
      end
    end
  end
end
