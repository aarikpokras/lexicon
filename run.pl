#!/usr/bin/perl -w
print "\033[4;37mR\033[0mun, e\033[4;37mx\033[0mit, or \033[4;37mM\033[0manpage? ";
$option = <>;
if($option =~ "r"){
  system("./ai.rb");
}
elsif($option =~ "e"){
  exit;
}
elsif($option =~ "m"){
  system("man ./airb");
}
