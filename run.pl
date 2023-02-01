#!/usr/bin/perl -w
print "\033[4;37mR\033[0mun, e\033[4;37mx\033[0mit, or \033[4;37mM\033[0manpage? ";
$option = <>;
chomp($option);
if(lc($option) eq "r"){
  system("./ai.rb");
}
elsif(lc($option) eq "e"){
  exit;
}
elsif(lc($option) eq "m"){
  system("man ./airb.1");
}
else{
  print "I don't know that."
}
