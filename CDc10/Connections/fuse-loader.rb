require "io/console"

token_data = File.open("CDc10/lib/tokens.env/token-pin.env")
token = token_data.read
token = token.strip
token.freeze

token_uidc_data = File.open("CDc10/lib/tokens.env/token-uidc.env")
token_uidc = token_uidc_data.read
token_uidc = token_uidc.strip
token_uidc.freeze

print("
  Enter Pin: ")
user_pin = $stdin.getpass

if user_pin == token
  print("
  Enter UIDC: ")
  user_uidc = $stdin.getpass

  if user_uidc == token_uidc
    puts("
      >>> Success <<<")
    print("
    Entering Inner Rim")

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

  else

  end
else
  puts("
  Incorrect PIN")
  trash = $stdin.getpass
  #tbc
  exit
end
