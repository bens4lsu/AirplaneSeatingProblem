## Airplane Seating Problem Simulator

This is an XCode Playground simulation to run the possibilites for this commonly posted problem:

> There are 100 passengers lined up to board an airplane with 100 seats (with each seat assigned to one of the passengers). The first passenger in line crazily decides to sit in a randomly chosen seat (with all seats equally likely). Each subsequent passenger takes his or her assigned seat if available, and otherwise sits in a random available seat. What is the probability that the last passenger in line gets to sit in his or her assigned seat?

The answer -- confirmed by smart math people and supported by the simulator -- is 50%.  I can get my brain to understand it, but it takes some mental stretching.

Here are some explanations that make sense to me, from users IncorrectPony and MorningPants from Reddit:

> Think about a smaller plane:
> 
> With a two-seat plane, if the first person happens to sit in their assigned seat at random, the second passenger will get their assigned seat, so 50%.
> 
> With a three-seat plane, 1/3 of the time the first person sits in their seat and so everyone gets the right seat; 1/3 of the time they sit in the third person's seat, so they definitely won't get it. The remaining 1/3, they sit in seat two and it is a 50/50 whether passenger two sits in seat 1 (leaving seat 3 available for that passenger) or not. So overall 50% chance of the last passenger getting their seat.
> 
> If you do one or two more by hand you can possibly convince yourself that it's always 50/50 and build an intuition for why.
>  
> 
> This can be made even more clear by expending it to the four person example.
> 
> Again the first person can sit in either their own seat, the last person’s seat, or a random other person’s seat. Only two of those situations ‘close the loop’, meaning sitting in the first person’s spot or the last person’s spot. Sitting anywhere else does not change the situation and passes the possibility onto the next person.
> 
> So every person in the 100 passenger plane has only three options: close the loop by sitting in seat 1, close the loop by sitting in seat 100, or not close the loop by sitting anywhere else. Only one passenger can close the loop, and the one who does has a 50% chance of closing it by sitting in seat 1 or by sitting in seat 100.> 