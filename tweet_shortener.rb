# Write your code here.

dictionary = {"hello" => "hi","to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" =>"u", "at" => "@", "and" => "&"}

 def word_substituter(tweet)
 arr = tweet.split(" ")
 arr.map! {|w| w.downcase }
 arr = arr.map do |w|
 dictionary.fetch(w, w)
 end
 arr.join(" ")
end


