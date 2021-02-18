user1 = User.create(name: "Sam", username: "Sam123", password: "baby1234", email: "sam@gmail")

destination1 = Destination.create(name: "Chicago", language: "Chicagoan", abbr: "CHI", description: "Chicago is the most populous city in the U.S. state of Illinois, and the third most populous city in the United States. With an estimated population of 2,693,976 in 2019, it is also the most populous city in the Midwestern United States. Located on the shores of freshwater Lake Michigan, Chicago Chicago is an international hub for finance, culture, commerce, industry, education, technology, telecommunications, and transportation.  Chicago's culture includes the visual arts, literature, film, theatre, comedy (especially improvisational comedy), food, and music, particularly jazz, blues, soul, hip-hop, gospel, and electronic dance music including house music. Chicago is famoulsy home of the NBA's Bulls and the MLB's Cubs.", highlights: "Millennium Park, Navy Pier, the Art Institue of Chicago, Sears Tower, Grant Park, the Musuem of Science And Industry, Wrigley Field")
Destination.create(name: "Paris", language: "French", abbr: "PAR", description: "Paris is the capital and most populous city of France, with an estimated population of 2,175,601 residents as of 2018, in an area of more than 41 square miles. Since the 17th century, Paris has been one of Europe's major centres of finance, diplomacy, commerce, fashion, science and arts. Paris is especially known for its museums and architectural landmarks: the Louvre was the most visited art museum in the world in 2019, with 9.6 million visitors. Paris was ranked as the second most visited travel destination in the world in 2019, is home to the Paris Saint-Germain Football Club and annually hosts the French Open, one of the four tennis grand slam tournaments.", highlights: "The Louvre, the Musée d'Orsay, the Musée des Arts et Métiers, The Arc de Triomphe, The Eiffel Tower, The Pantheon, Notre Dame, Palace of Versailles, Saint Denis Basillica")
Destination.create(name: "Madrid", language: "Spanish", abbr: "MAD", description: "Madrid is the capital and most-populous city of Spain with a population of almost 3.3 million and a metropolitan area population of approximately 6.5 million. Madrid is the second largest city in the European Union. Madrid's influence in politics, education, entertainment, environment, media, fashion, science, culture, and the arts all contribute to its status as one of the world's major global cities. Madrid is home to two world-famous football clubs, Real Madrid and Atlético Madrid. While Madrid possesses modern infrastructure, it has preserved the look and feel of many of its historic neighbourhoods and streets", highlights: "the Plaza Mayor, the Royal Palace of Madrid, the Royal Thatre, the Prado Museum, the Reina Sofia Museum, the Museum of Modern Art, Cibeles Palace and Fountain, the Santiago Bernabéu, the Metropolitano Stadium")
Destination.create(name: "Tokyo", language: "Japanese", abbr: "TYO", description: "Tokyo is the de facto capital and most populous prefecture of Japan. Located at the head of Tokyo Bay, the prefecture forms part of the Kanto Region on the central Pacific Coast of Japan's main island of Honshu. Tokyo is the political and economic center of the country, as well as the seat of the Emperor of Japan. As of 2021, the prefecture has an estimated population of 13,960,236. The Greater Tokyo Area is the most populous metropolitan area in the world with more than 37.3 million residents. Tokyo is the largest urban economy in the world by gross domestic product and is Japan's leading center of business and finance. Tokyo is an international center of research and development.", highlights: "University of Tokyo, the Imperial Palace, Shinjuku, Shibuya, the Shinkansen bullet train, the Ginza District, the National Museum of Nature and Science, the Senso-ji Temple, Ueno Park and Zoo, the Tokyo National Museum")
Destination.create(name: "Rome", language: "Italian", abbr: "ROM", description: "Jesus", highlights: "Pope")
Destination.create(name: "Cairo", language: "Egyptian Arabic", abbr: "CAI", description: "Sandy", highlights: "The Triangle")
Destination.create(name: "Rio de Janeiro", language: "Portuguese", abbr: "RIO", description: "Colorful", highlights: "Jesus again")
Destination.create(name: "Jamaica", language: "English", abbr: "KIN", description: "Smoky", highlights: "Beaches seem tight")
Destination.create(name: "Los Angeles", language: "English", abbr: "LAX", description: "Douchey", highlights: "Traffic")
Destination.create(name: "Berlin", language: "German", abbr: "BER", description: "Nice..now", highlights: "Piece of wall")
Destination.create(name: "Sydney", language: "English", abbr: "SYD", description: "Outback", highlights: "Opera")


vacation1 = Vacation.create(user: user1, destination: destination1, day_start: "1", month_start: "Feb", year_start: "2021")

vacationflight1 = Departure.create(flight_id: 1, vacation_id: 1,)
vacationflight2 = Arrival.create(flight_id: 2, vacation_id: 1)


Activity.create(name: "Bus Tour", price: 34.99, destination_id: 1)
Activity.create(name: "Bus Tour", price: 33.99, destination_id: 2)
Activity.create(name: "Bus Tour", price: 37.50, destination_id: 3)
Activity.create(name: "Bus Tour", price: 35.00, destination_id: 4)
Activity.create(name: "Bus Tour", price: 33.99, destination_id: 5)
Activity.create(name: "Bus Tour", price: 34.99, destination_id: 6)
Activity.create(name: "Bus Tour", price: 36.50, destination_id: 7)
Activity.create(name: "Bus Tour", price: 36.99, destination_id: 8)
Activity.create(name: "Bus Tour", price: 31.50, destination_id: 9)
Activity.create(name: "Bus Tour", price: 32.99, destination_id: 10)
Activity.create(name: "Bus Tour", price: 33.99, destination_id: 11)


### Chicago
Activity.create(name: "River Cruise", price: 39.99, destination_id: 1)
Activity.create(name: "Zoo Trip", price: 15.50, destination_id: 1)
Activity.create(name: "Aquarium", price: 15.99, destination_id: 1)
Activity.create(name: "Pizza Tour", price: 45.50, destination_id: 1)

### Paris
Activity.create(name: "Eiffel Tower", price: 24.99, destination_id: 2)
Activity.create(name: "Louvre Museum", price: 15.50, destination_id: 2)
Activity.create(name: "Catacombs", price: 15.99, destination_id: 2)
Activity.create(name: "Palace of Versailles Tour", price: 30.99, destination_id: 2)

### Madrid
Activity.create(name: "Real Madrid Football Match", price: 49.99, destination_id: 3)
Activity.create(name: "National Archaelogical Museum", price: 15.50, destination_id: 3)
Activity.create(name: "Prado Museum", price: 20.45, destination_id: 3)

### Tokyo
Activity.create(name: "Ryogoku Kokugikan Sumo Match", price: 22.99, destination_id: 4)
Activity.create(name: "Day Trip to Mt. Fuji", price: 99.99, destination_id: 4)
Activity.create(name: "Disneyland Tokyo", price: 79.99, destination_id: 4)
Activity.create(name: "Origami Museum", price: 0, destination_id: 4)

### Rome
Activity.create(name: "Colosseum Tour", price: 60.99, destination_id: 5)
Activity.create(name: "Gladiator School", price: 110.50, destination_id: 5)
Activity.create(name: "Horse Riding Trail", price: 33.99, destination_id: 5)
Activity.create(name: "Sistine Chapel", price: 28.99, destination_id: 5)

### Cairo
Activity.create(name: "Pyramids Tour", price: 60.99, destination_id: 6)
Activity.create(name: "Nile Dinner Cruise", price: 48.00, destination_id: 6)
Activity.create(name: "Museum of Antiquities", price: 30.00, destination_id: 6)

### Rio De Janeiro
Activity.create(name: "Hang Gliding", price: 60.99, destination_id: 7)
Activity.create(name: "Mountain Hike", price: 11.99, destination_id: 7)
Activity.create(name: "Sailing", price: 33.99, destination_id: 7)
Activity.create(name: "Brazilian Cooking Class", price: 33.00, destination_id: 7)

### Jamaica
Activity.create(name: "Dunn's River Falls Hike", price: 9.99, destination_id: 8)
Activity.create(name: "White Witch Golf Course", price: 45.50, destination_id: 8)
Activity.create(name: "Bob Marley Museum", price: 4.20, destination_id: 8)
Activity.create(name: "Jamaica Culinary Tour", price: 49.99, destination_id: 8)

### Los Angeles
Activity.create(name: "Hollywood Walk of Fame Tour", price: 23.99, destination_id: 9)
Activity.create(name: "Palm Springs Day Trip", price: 110.50, destination_id: 9)
Activity.create(name: "LACMA", price: 13.99, destination_id: 9)
Activity.create(name: "Hang Gliding", price: 28.00, destination_id: 9)

### Berlin
Activity.create(name: "Museum Island", price: 60.99, destination_id: 10)
Activity.create(name: "Berlin Wall Memorial", price: 0.00, destination_id: 10)
Activity.create(name: "Tiergarten", price: 15.00, destination_id: 10)

### Sydney
Activity.create(name: "Skydiving", price: 55.55, destination_id: 11)
Activity.create(name: "Scuba Diving", price: 99.99, destination_id: 11)
Activity.create(name: "Opera", price: 70.00, destination_id: 11)
Activity.create(name: "Outback Safari", price: 210.00, destination_id: 11)



