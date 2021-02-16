user1 = User.create(name: "Sam", username: "Sam123", password: "baby1234", email: "sam@gmail")
destination1 = Destination.create(name: "Chicago", language: "Chicagoan", description: "Windy", highlights: "The bean")

flight1 = Flight.create(flight_number: 1, departure_airport: "JFK", arrival_airport: "Chicago", price: 2, departure_time: 11, arrival_time: 12)
flight2 = Flight.create(flight_number: 999, departure_airport: "Chicago", arrival_airport: "JFK", price: 100, departure_time: 11, arrival_time: 12)

vacation1 = Vacation.create(user: user1, destination: destination1)

vacationflight1 = Departure.create(flight_id: 1, vacation_id: 1,)
vacationflight2 = Arrival.create(flight_id: 2, vacation_id: 1)
