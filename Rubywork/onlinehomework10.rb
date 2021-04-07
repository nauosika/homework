language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']

p language.select { |lang| lang[0] == "P" }
p language.sort_by { |lang| lang.length }.first

#.....原來P都是大寫