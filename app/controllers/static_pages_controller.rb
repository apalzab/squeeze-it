require 'mixpanel-ruby'
class StaticPagesController < ApplicationController
  

  def index
    notify_mixpanel
  end

  def notify_mixpanel
    tracker = Mixpanel::Tracker.new('4abea18d0107bb0fc2cebfee53db11c6')
    # Track an event on behalf of user "User1"
    tracker.track('Anonymous', 'Landing page visited')

# create or update a profile with First Name, Last Name,
# E-Mail Address, Phone Number, and Favorite Color
    tracker.people.set('12345', {
      '$first_name'       => 'John',
      '$last_name'        => 'Doe',
      '$email'            => 'john.doe@example.com',
      '$phone'            => '5555555555',
      'Favorite Color'    => 'red'
    });
  end


end
