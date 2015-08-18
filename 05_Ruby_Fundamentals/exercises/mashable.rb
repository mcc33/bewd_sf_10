#1 - Pull the json from the reddit API via http://www.reddit.com/.json
  # - http://mashable.com/stories.json (homework)
#2 - Parse it using the JSON library
#3 - Find the stories based on techniques used in the code_along (max of 25 provided)
#4 - Create a new story hash out of each story with the following keys :title, :upvotes and :category
    #title, #category and #upvotes may not be the names use
#5 - Add each story to an array
#6 - Print each story from the array on your "Front Page"
#7 - BONUS ### create an 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns

require 'rest-client'
require 'pry'
require 'json'

def connect_to_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end

def find_stories(response)
  stories = response["data"]["children"]
  #'response' is a hash, but stories is a new array set equal to the 'children' array from reddit JSON
  puts "Reddit has blessed us with #{stories.count} stories"
  #returns '.count' method on the response array
  return stories
end

def print_stories(stories)
  stories.each do |story|
      create_story_hash(story)
  end
end

def create_story_hash(story)
  new_story = {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
  puts new_story
end

def find_mashable_stories(response) 
  stories = response["new"]
  puts "Mashable has blessed us with #{stories.count} stories"
  return stories
end

def print_mashable_stories(stories)
  stories.each do |story|
      create_mashable_story_hash(story)
  end
end

def create_mashable_story_hash(story)
  new_story = {category: story["channel_label"], title: story["title"], upvotes: story["shares"]["total"]}
  puts new_story
end

mashable_url = "http://mashable.com/stories.json"
mashable_json_response = connect_to_api(mashable_url)
stories = find_mashable_stories(mashable_json_response)
print_stories(stories)
