# Single Responsibility Principle


Single Responsibility Principle (SRP)

As I understand SRP means that we design group of actions together (in one class or a module), where they all have a responsibility over only one part of the overall functionality that we are implementing.

Consider an example of airport functioning.  Planes land and take off from an airport.  Similarly they can land or take off only when weather is good and not stormy.  Now, in this functionality we can see that there are broadly two functions involved.  One to do with planes and other to do with weather.  If we design the above two methods in one class then they will look like

        class Airport

          def weather
            broadcast
          end

          def plane (action)
            action if weather not stormy
          end

        end

From the above design one can notice that it is failing to follow SRP. In here the Airport class is responsible for two functions i.e. plane and weather.

To follow SRP this class needs to be refactored into two classes so each one has only single responsibility.

        class Airport

          def plane(action)
            action if Weather.broadcast != "stormy"
          end

        end

        class Weather

          def broadcast_weather
            broadcast
          end

        end

By following this principle each class's methods focus only on a single function and that makes that class less prone to failures.  Amendments to one class are less likely to affect others.
