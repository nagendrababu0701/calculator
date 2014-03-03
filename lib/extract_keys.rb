require 'fileutils' 
require 'json'
File.open( "abc.json", "r" ) do |f| 
  hash = JSON.load( f ) 
  print hash.keys.join(',') 
end
