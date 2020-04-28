
# README

**Our application has movies, seasons and episodes. Let's simplify the metadata, so movies and episodes only have a title and a plot, and seasons. <br/>
have title, plot and a number. An episode belongs to a season and a season can have N episodes, the episode also has the number of episode in the season.<br/>
Movies and seasons can be purchased (but not episodes), each one can have several purchase options, a purchase option has a price (2.99) and a video quality (HD or SD).**<br/>

Things you may want to cover:

* Ruby version<br /> 
2.5.3

* System dependencies<br /> 
Ruby on Rails

* Database creation<br /> 
rake db:create

* Database initialization<br /> 
rake db:migrate<br /> 
rake db:seed<br /> 

* Api's List<br/>
1. An endpoint to return the movies, ordered by creation<br/>
			**/api/v1/movies** <br/>
      
2. An endpoint to return the seasons ordered by creation, including the list of episodes ordered by its number<br/>
			**/api/v1/seasons** <br/>
      
3. An endpoint to return both movies and seasons, ordered by creation<br/>
			**/api/v1/list** <br/>

4. An endpoint for a user to perform a purchase of a content.<br/>
			**/api/v1/buy** <br/>

5. An endpoint to get the library of a user ordered by the remaining time to watch the content<br/>
			**/api/v1/user/:id/library** <br/>
