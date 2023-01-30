require_relative "thera"
def emob(feel)
#puts "feel: #{feel}"
#puts feel
#    end
feell=feel.chomp
    if feell.match(/depressed/) #and feell.match(/I/)
      puts "If you're feeling depressed, you should talk to your doctor."
    elsif feell.match(/happy/) #and feell.match(/I/)
      puts "I'm happy if you're happy!"
    elsif feell.match(/sad/) #and feell.match(/I/)
      puts "I'm sorry. Do you want to talk about it?"
      sryyorn=gets
      sry=sryyorn.chomp
    if sry.match(/y/)
    tethera 
    else
    puts "Bye."
    exit
    end
#else
#puts "nofnd"
      end
#    end
#  end
end
#end
