require "io/console"

token_data = File.open("CDc10/lib/tokens.env/token-console.env")
token = token_data.read
token = token.strip
token.freeze

print("
  Enter Local-Service Code: ")
lsc = $stdin.getpass

if lsc == token
  print("        >>> Success <<<
  Entering at #{Time.now()}")
  trash_count = 10000000
counter = 0
while counter != trash_count
  counter+=1
end
print(".")
trash_count = 10000000
counter = 0
while counter != trash_count
  counter+=1
end
print(".")
trash_count = 10000000
counter = 0
while counter != trash_count
  counter+=1
end
puts(".")
require_relative "CDc10/Connections/fuse-loader.rb"
  require_relative "CDc10/StartUP.new()/loader.rb"
else
  puts("
  Incorrect LSC")
  trash = $stdin.getpass
  #tbca
  exit
end
