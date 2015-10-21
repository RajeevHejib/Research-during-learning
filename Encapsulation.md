#Encapsulation


Encapsulation is a way of hiding certain internal objects and/or methods from outside.  In ruby it can be achieved by defining them in a block as private.  All objects following private then can only be accessed or modified from witin the class but not from outside.

The example below shows that when encapsulation is not used balance in an account be set using set_balance method.

    class Account
      attr_reader :balance

      def initialize(balance)
        @balance = balance
      end

      def check_balance
        @balance
      end

      def set_balance(balance)
        @balance = balance
      end

    end

When we use the private ability the code then will look as

    class Account
      attr_reader :balance

      def initialize(balance)
        @balance = balance
      end

      def check_balance
        @balance
      end

      private
      def set_balance(balance)
        @balance = balance
      end

    end


In the above case when an instance of account is created then access to set_balance is not available from outside.


 new_account=Account.new(100)

 new_account.set_balance(200) # => will fail.
