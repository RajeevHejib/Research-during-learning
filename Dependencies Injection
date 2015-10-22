#Dependencies Injection

Dependencies Injection is a way of decoupling the dependency of one class on another. When you inject dependencies into objects rather than having objects creating their dependencies you get more flexibility and less coupling.

Consider below example

require_relative 'oyster_card'
require_relative 'credit_card'

    class Journey
      def start_journey_with_oyster_card
        Oystercard.new
      end

      def start_journey_with_credit_card
        Creditcard.new
      end
    end

The above class is dependent on type of card.  Instead if we de-couple the dependency then it will look like below.

    class Journey

      initialize (klass)
        @klass = klass
      end

      def start_journey
          klass.new
      end
    end
