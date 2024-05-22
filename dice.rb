

require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


get("/") do

  "
  <ul>
    
    <li><a href=\"/2dice6sides\"> Shake 2 dice with 6 sides</a></P>
    <li><a href=\"/2dice10sides\"> Shake 2 dice with 10 sides</a></p>

  </ul>
  
  "

end



get("/2dice6sides") do 

  
  die_1 = rand(1..6)
  die_2 = rand(1..6)
  sum = die_1 + die_2

  final = "Dice 1 landed on #{die_1} and Dice 2 landed on #{die_2}."

  "<h1> 2 Dice 6 Sides </h1>
   <p> #{final} </p>"
end

get("/2dice10sides") do

  die_1 = rand(1..10)
  die_2 = rand(1..10)
  sum = die_1 + die_2

  final = "Dice 1 landed on #{die_1} and Dice 2 landed on #{die_2}."

  "<h1> 2 Dice 10 Sides </h1>
   <p> #{final} </p>"
  
end
 
