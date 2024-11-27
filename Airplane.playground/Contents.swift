import Foundation

var numberOfSimulations = 1000
var beVerbose = false



struct Passenger {
    var seatAssigned: Int
    var seatTaken: Int?
    
    mutating func takeSeatFrom(_ seatsAvailable: Set<Int>, beVerbose: Bool) -> Int {
        if seatsAvailable.contains(seatAssigned) {
            seatTaken = seatAssigned
            if beVerbose {
                print ("      assigned seat \(seatAssigned) available and taken")
            }
            return seatTaken!
        }
        self.seatTaken = seatsAvailable.randomElement()
        if beVerbose {
            print ("      assigned seat \(seatAssigned) taken.  Randomly picked \(seatTaken!)")
        }
        return seatTaken!
    }
}

class Simulation {
    
    var passengers = [Passenger]()
    var seatsAvaialble = Set<Int>()
    
    init() {
        for i in 0..<100 {
            passengers.append(Passenger(seatAssigned: i))
            seatsAvaialble.insert(i)
        }
    }
    
    @MainActor func run() -> Bool {
        passengers.shuffle()
        for i in 0..<100 {
            if beVerbose {
                print ("   Passenger \(i + 1):")
            }
            if i == 0 {
                passengers[i].seatTaken = Int.random(in: 0..<100)
                seatsAvaialble.remove(passengers[i].seatTaken!)
                if beVerbose {
                    print ("      randomly took seat \(passengers[i].seatTaken!)")
                }
            }
            else {
                seatsAvaialble.remove (
                    passengers[i].takeSeatFrom(seatsAvaialble, beVerbose: beVerbose)
                )
            }
        }
        return passengers[99].seatAssigned == passengers[99].seatTaken
    }
        
}


var inAssignedSeat = 0
var notInAssignedSeat = 0

for i in 0..<numberOfSimulations {
    if Simulation().run() {
        inAssignedSeat += 1
    }
    else {
        notInAssignedSeat += 1
    }
}

print ("In assigned seat: \(inAssignedSeat)\nNot in assigned seat: \(notInAssignedSeat)")


