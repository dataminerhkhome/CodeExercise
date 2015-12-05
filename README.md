# CodeExercise
=====================

## Problem3
Mario's Pizza Place specializes in ​making 12" pizza's. They recently opened a new location and want to design a system that can be used to help increase sales. Orders can be placed by phone. It takes on average 2 minutes to apply toppings to each pizza, 6 minutes to bake each pizza and 2 minutes to cut and box a pizza. Each order is assigned to a driver, and a label that indicates the community that the order must be delivered too. When a driver is assigned two orders to deliver, this is called a double. When a driver is assigned three orders to deliver, this is called a triple. Design a system to assign orders to drivers so that each driver can deliver as many doubles and triples as possible.
Mario's serves the following communities Dalhousie (label: D1), Varsity (label: D2), Motel Village (label: B1), Banff Trail (label: B2), West Hillhurst (label: A1), Capitol Hill (label: A2), Bowness (label: C1), Parkdale (label: C2)

##Initial State and Assumation: 
Service Areas: can be setup in the configure
Time Limit: assume there is a limit for maximum delivery time. set as 10 minutes.
Assume order come quickly, in the improvement the order interval larger than 5 minutes should be considered and handled.
Assume there are always drivers available


##Useage
run script pizza_order_dispatch.rb
after run, the program will wait for user to input order label. Then it will calculate the most efficient delivery combination by heuristics algorithm.
When there is still time available for one more order, the system will wai for next order until the delivery time reaches the allowed maximum set.
System is in the loop: waiting, an efficient delivery package form and output.

input "quit" as order label, system will exit.

                             
##test
use console input/out for basic unit test
