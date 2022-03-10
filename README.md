## How to Hack Hacker News Codecademy Project

### Project information

Hacker News is a popular website run by Y Combinator. It’s widely known by people in the tech industry as a community site for sharing news, showing off projects, asking questions, among other things.
![hacker news page](https://user-images.githubusercontent.com/89424060/155740582-5eb9ad5f-f3f1-466a-8d5a-3de9e555004a.png)



In this project, I worked with a table named hacker_news that contains stories from Hacker News since its launch in 2007. It has the following columns:

+ ```title```: the title of the story
+ ```user```: the user who submitted the story
+ ```score```: the score of the story
+ ```timestamp```: the time of the story
+ ```url```: the link of the story

The data was made publicly available under the MIT license.

#### [Hacker News Top Five Stories](#hacker-news-top-five-stories):

 ``SELECT title, score``
 
 ``FROM hacker_news``
 
 ``ORDER BY score DESC``
 
 ``LIMIT 5;``

![Hacker News Top 5 Stories](https://user-images.githubusercontent.com/89424060/155738876-d6db634d-a2b6-48c8-ad53-0eca4cf6ae2a.png)

### Tools used

+ SQlite
