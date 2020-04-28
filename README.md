
# README

This README would normally document whatever steps are necessary to get the
application up and running.

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
