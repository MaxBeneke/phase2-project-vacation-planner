user1 = User.create(name: "Sam", username: "Sam123", password: "baby1234", email: "sam@gmail")

destination1 = Destination.create(name: "Chicago", language: "Chicagoan", abbr: "CHI", description: "Windy", highlights: "The bean")
Destination.create(name: "Paris", language: "French", abbr: "PAR", description: "Rude", highlights: "Big tower")
Destination.create(name: "Madrid", language: "Spanish", abbr: "MAD", description: "Spaniards", highlights: "Tapas")
Destination.create(name: "Tokyo", language: "Japanese", abbr: "TYO", description: "Neon", highlights: "Godzilla")
Destination.create(name: "Rome", language: "Italian", abbr: "ROM", description: "Jesus", highlights: "Pope")
Destination.create(name: "Cairo", language: "Egyptian Arabic", abbr: "CAI", description: "Sandy", highlights: "The Triangle")
Destination.create(name: "Rio de Janeiro", language: "Portuguese", abbr: "RIO", description: "Colorful", highlights: "Jesus again")
Destination.create(name: "Jamaica", language: "English", abbr: "KIN", description: "Smoky", highlights: "Beaches seem tight")
Destination.create(name: "Los Angeles", language: "English", abbr: "LAX", description: "Douchey", highlights: "Traffic")
Destination.create(name: "Berlin", language: "German", abbr: "BER", description: "Nice..now", highlights: "Piece of wall")
Destination.create(name: "Sydney", language: "English", abbr: "SYD", description: "Outback", highlights: "Opera")



flight1 = Flight.create(flight_number: 1, departure_airport: "JFK", arrival_airport: "Chicago", price: 2, departure_time: 11, arrival_time: 12)
flight2 = Flight.create(flight_number: 999, departure_airport: "Chicago", arrival_airport: "JFK", price: 100, departure_time: 11, arrival_time: 12)

vacation1 = Vacation.create(user: user1, destination: destination1, day_start: "1", month_start: "Feb", year_start: "2021")

vacationflight1 = Departure.create(flight_id: 1, vacation_id: 1,)
vacationflight2 = Arrival.create(flight_id: 2, vacation_id: 1)
