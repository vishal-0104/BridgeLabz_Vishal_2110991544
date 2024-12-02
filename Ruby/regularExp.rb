string  = "This is the 10 regular expression from my side 20"

p string =~ /exp/
p string =~/o/? "valid" : "invalid"

p string =~/O/i? "valid" : "invalid" #use i after back slash to make case insensitive

p string.to_enum(:scan, /\d+/).map {Regexp.last_match}