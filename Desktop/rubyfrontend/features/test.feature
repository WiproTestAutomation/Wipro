Feature: Find the closest bank agency
Scenario: Search a Santander bank agency        
 Given I am on the Santander bank_agency_search_page
 When I will search for a cep
 Then I will inform a number
 Then I will click the search button
 Then I will choose the first address listed
 Then I will wait for 20 seconds btw
 Then I should see "AL ARAGUAIA 631 E, ALPHAVILLE - BARUERI - SP"
 Then I will wait for 10 seconds
 
Scenario: Search a bank agency in your neighborhood.
 Given I am on the Santander bank_agency_search_page
 When I will search in my neighborhood
 Then I will inform my state
 Then I will inform my city
 Then I will inform my neighborhood
 Then I will click on search
 