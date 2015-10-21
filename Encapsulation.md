#Encapsulation


Encapsulation is a way of hiding certain internal objects and/or methods from outside.  In ruby it can be achieved by defining them in a block as private.  All objects following private then can only be accessed or modified from witin the class but not from outside.

The example below shows that when encapsulation is not used the methods divisible_by_15 and others are all can be accessed from outside the class.

      class Game
        def fizzbuzz(numb)
          return "fizzbuzz" if divisible_by_15?(numb)
          return "fizz" if divisible_by_3?(numb)
          return "buzz" if divisible_by_5?(numb)
          numb
        end

        def divisible_by_15?(numb)
          calc(numb, 15)
        end

        def divisible_by_3?(numb)
          calc(numb, 3)
        end

        def divisible_by_5?(numb)
          calc(numb, 5)
        end

        def calc(numb, divisor)
          numb % divisor == 0
        end

      end

When we make those methods private then they are completely encapsulated.

      class Game
        def fizzbuzz(numb)
          return "fizzbuzz" if divisible_by_15?(numb)
          return "fizz" if divisible_by_3?(numb)
          return "buzz" if divisible_by_5?(numb)
          numb
        end

        private
        def divisible_by_15?(numb)
          calc(numb, 15)
        end

        def divisible_by_3?(numb)
          calc(numb, 3)
        end

        def divisible_by_5?(numb)
          calc(numb, 5)
        end

        def calc(numb, divisor)
          numb % divisor == 0
        end

      end
