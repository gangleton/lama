#LAMA
Ruby wrapper for the Davenport LAMA API

##Installation

   gem install lama

Or add the following to your Gemfile (do this for now):

   gem 'lama', :git => 'git://github.com/gangleton/lama.git'


##Usage examples

   require 'lama'

   @client = LAMA.new(:login => YOUR_LOGIN_HERE, :pass => YOUR_PASSWORD_HERE)
   @client.incidents_by_date #Returns an array of incidents
   @client.incidents_by_date("07-01-2012", "08-01-2012") #Returns an array of incidents that were entered from July 1st to August 1st 2012
