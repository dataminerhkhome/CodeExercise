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

##Solution Description
a. system has a order queue that holds the undelivered orders
b. system algorithm plan a delivery package based on maximum allowed drive distance of one delivery
               distance_limit= 10 min (allowed delivery time) * 600 meter/min (average speed)
c. when each order is put, the order dispatch algorithm is triggered to calculate most efficent delivery route/package
d. dispatch algorithm works as:
   1. first chose the order 0 that is colosest of the pizza store and get the drive distance d0, add it to assign_list
   2. from left in the queue, chose the order 1 that has shortest distance from the first order,calculate the total distance sum_d=d0+d1
   3. if sum_d >distance_limit, export assign_list as a delivery package and rebegin from  step 1 for a new assign list
   4. if sum_d < distance_limit, add order 1 to assign_list
   5. continue loop from step 2 to step 4 until the order in the queue are all checked
   6. waiting for next order to trigger it running from step 1


##Useage
run script pizza_order_dispatch.rb
after run, the program will wait for user to input order label. Then it will calculate the most efficient delivery combination by heuristics algorithm.

input label should belongs to service area. Otherwish system will ask for reinputing
input "quit" as order label, system will exit.

##existed problem
in the implementation, the order id is not included due to time limitation

                             
##test
use console input/out for basic unit test
