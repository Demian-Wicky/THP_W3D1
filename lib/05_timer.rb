def time_string(s) #https://gist.github.com/shunchu/3175001
  Time.at(s).utc.strftime("%H:%M:%S")
end