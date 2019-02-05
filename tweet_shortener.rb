# Write your code here.

def dictionary
dictionary = {"hello" => "hi","to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" =>"u", "at" => "@", "and" => "&"}
end

 def word_substituter(tweet)
 arr = tweet.split(" ")
 arr = arr.map do |w|
if dictionary.keys.include?(w.downcase)
  w = dictionary[w.downcase]
else
  w
end
end
 arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |t|
		puts word_substituter(t)
		end
end

def selective_tweet_shortener(tweets)
  if tweets.length <= 140
    return tweets
  else
		puts word_substituter(tweets)
	end
end

