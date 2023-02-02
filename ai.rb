#!/usr/bin/env ruby
require_relative "EmotionEngine/emotion"
puts "Hi, I'm Coeus! For help, you can type 'manual' or go to the GitHub page."
while 0
  print "> "
  inp=gets
  inpm=inp.chomp
  if inpm == "hi" || inpm.match(/hello/) || inpm.match(/greetings/)
    greetings = ["Hello!", "Hi!", "Hi there!", "Greetings!", "Beans on toast!", "How are you doing?",]
    greet=greetings.sample(1)
    puts greet
  elsif inpm == "manual"
    puts "Opening manual."
    sleep(1)
    system("man ./airb.1")
  elsif inpm.match(/learn/)
    if inpm.split[1] == "about"
      learnersub=inpm.split[2]
      learnc = ["Teach me!", "Enlighten me.", "Tell me about this.",]
      learnout=learnc.sample(1)
      puts learnout
      learner=gets
      learnersubb=Regexp.new(learnersub)
      if learner.chomp =~ learnersubb
        puts "Please try that again without including the subject in the about line."
      else
        ivregex = [/its/, /is/, /it's/, /are/, /theyre/, /they're/, /they/]
        ends_in_s=/s$/
        if ends_in_s.match(learnersub)
          anchor='are'
        else
          anchor='is'
        end
        puts "Ok. I'll remember that " + learnersub + " " + anchor + " " + learner.chomp.gsub(Regexp.union(ivregex), "") + "."
        File.write("LearnEngine/" + learnersub, learner.gsub(Regexp.union(ivregex), "") + "\n", mode: "w+")
      end
    else
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
    end
  elsif inpm == "good"
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
  elsif inpm == "Thank you" || inpm == "Thanks" || inpm == "thank you" || inpm == "thanks"
    thankyou = ["You're welcome! I'm always happy to help.","You're welcome!","No problem!",]
    thankout=thankyou.sample(1)
    puts thankout
  elsif inpm == "help"
    puts "You can get help by following this link:\n\033[1;37mhttps://github.com/aarikpokras/ai.rb/blob/main/README.md\033[0m\nor you can run \`man ./airb\`"
  # For example, you can type `How do you print in Python`
  elsif inpm.match(/How do you/) || inpm.match(/how do you/)
    lang=inpm.split
    action=lang[3]
    #puts action
    if lang[5].match(/Python/) || lang[5].match(/python/)
      if action == "print" || action == "Print"
        pyprint = ["In Python, you can print by running ","In Python, you can run this to print: ","To print something in Python, you can run: "]
        pyout=pyprint.sample(1)
        puts pyout << "\`print(\"your content here\")\`"
      end
    elsif lang[5].match(/Ruby/) || lang[5].match(/ruby/)
      if action == "print" || action == "Print"
        rbprint = ["In Ruby, there are multiple ways to print something: ","In Ruby, you can put one of these in your file to print: ","Here are some ways to print in Ruby."]
        rb1=rbprint.sample(1)
        puts rb1 << "puts \"Your content here\" or\nprint \"Your content here\""
      end
    elsif lang[5].match(/Perl/) || lang[5].match(/perl/)
      if action == "print" || action == "Print"
        puts "I don't know that just yet."
      end
    else
      puts "I don't know how to " << action << " in " << lang[5] << " yet.\nI'd recommend forking the repo, editing the code, and making a pull request.\nhttps://github.com/aarikpokras/ai.rb/fork"
    end
  end
end
