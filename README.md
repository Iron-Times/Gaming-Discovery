# GameDiscovery API version 1.0.0 by Iron Times 

## Description
An API that allows you to search IGN's game database for reviews of games you are interested in and then see accomplished gamers streaming themselves playing that game through Twitch.

##### To ensure proper functioning of API:
You must be logged into Twitch to see the streams this API returns.  You can log in to Twitch by [clicking here](https://passport.twitch.tv/authentications/new?client_id=36926892495301a63b2e9350a38d3d6dbf72ad81e571a3ebba4687250ec8f352c70b3e91229602f73e1335528f3caa00a5cf513f484d7003784e722f2ce7a216&embed=0&error_code=&nonce=19da7c58c6a5c0236d9a38e879b930759616980d&redirect_uri=https%3A%2F%2Fsecure.twitch.tv%2F&response_type=code&scope=openid&state=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyZWRpcmVjdF9wYXRoIjoiaHR0cHM6Ly9zZWN1cmUudHdpdGNoLnR2LyJ9.SJiJrLhZpRPB1jl9WYkrw1TcOoQMSt7R1WgxVvbZdps&stay)

You must be logged into IGN to see the reviews this API returns.  You can log into IGN by [clicking here](https://s.ign.com/signin?r=http://my.ign.com)

##### URL calls:
To go to the root file enter:
 [http://localhost:3000](http://localhost:3000)

 There you will find information instructing you to add the game's name twice to receive both reviews and streams of that game.
  * The streams are filtered to only return the 10 streams with the highest viewer count at this given moment. Viewer count is displayed with URL following it.

  * The reviews are filtered to display title, rating, publisher, and platform.

* To search about the game Destiny one would enter:

 [http://localhost:3000/gamediscovery/v1/list/worldofwarcraft/worldofwarcraft.json](http://localhost:3000/gamediscovery/v1/list/destiny/destiny.json)

 * To view the streams you can click on the url in the results.
