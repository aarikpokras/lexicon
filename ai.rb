#!/usr/bin/env ruby
require_relative "EmotionEngine/emotion"
while 0
  print "> "
  inp=gets
  inpm=inp.chomp
  if inpm == "hi" || inpm.match(/hello/) || inpm.match(/greetings/)
    greetings = ["Hello!", "Hi!", "Hi there!", "Greetings!", "Beans on toast!", "How are you doing?",]
    greet=greetings.sample(1)
    puts greet
  elsif inpm.match(/learn/)
    puts "What's the name of the thing you want me to learn about? "
    learnersub=gets
    learnc = ["Teach me!", "Enlighten me.", "Tell me about this.",]
    learnout=learnc.sample(1)
    puts learnout
    learner=gets
    learnersubb=Regexp.new(learnersub.chomp)
    if learner.chomp =~ learnersubb
      puts "Please try that again without mentioning the subject in the about line."
    else
    ivregex = [/its/, /is/, /it's/, /are/, /theyre/, /they're/, /they/]
    ends_in_s=/s$/
    if ends_in_s.match(learnersub.chomp)
    anchor="are"
    else
    anchor="is"
    end
    puts "Ok. I'll remember that " + learnersub.chomp + " " + anchor + " " + learner.chomp.gsub(Regexp.union(ivregex), "") + "."
    File.write("LearnEngine/" + learnersub.chomp, learner.chomp.gsub(Regexp.union(ivregex), "") + "\n", mode: "w+")
    end
  elsif inpm.match(/good/)
    puts "I'm glad you're feeling good!"
  elsif inpm.match(/what's/) || inpm.match(/what/)
    ui=inpm.split
    ui2=ui[2]
    if File.exist?("LearnEngine/"+ui2)
      userdb=File.open("LearnEngine/"+ui2)
      userdbd=userdb.read
      puts userdbd
    else
      puts "I don't know that thing yet. Type 'learn' to teach me."
    end
  elsif inpm.match(/I am/)
    words=inpm.split
    wordsq=words[2]
#    puts wordsq
    emob wordsq
  elsif inpm.match(/Thank you/) || inpm.match(/thanks/)
    thankyou = ["You're welcome! I'm always happy to help.","You're welcome!","No problem!",]
    thankout=thankyou.sample(1)
    puts thankout
 end
end
