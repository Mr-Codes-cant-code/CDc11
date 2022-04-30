require "io/console"

def new_lang(new_lang_type)

  # Type of lang
   if new_lang_type == "basic"
     uic1 = rand(101..300)
   elsif new_lang_type == "complete"
     uic1 = rand(301..600)
   elsif new_lang_type == "numerical"
     uic1 = rand(601..998)
   else
    puts("
  Invalid Lang Type")
   end

   # Unique alphabet Identification Code
  def generate_random(more_than, less_than)
   def generate_num(more_than, less_than)
    num = rand(more_than.to_i..less_than.to_i).to_i
    if num == 1
      $oxygen =  'a'
    elsif num == 2
      $oxygen = 'b'
    elsif num == 3
      $oxygen = 'c'
    elsif num == 4
      $oxygen = 'd'
    elsif num == 5
     $oxygen = 'e'
    elsif num == 6
      $oxygen = 'f'
    elsif num == 7
      $oxygen = 'g'
    elsif num == 8
     $oxygen = 'h'
    elsif num == 9
      $oxygen = 'i'
    elsif num == 10
     $oxygen = 'j'
    elsif num == 11
      $oxygen = 'k'
    elsif num == 12
      $oxygen = 'l'
    elsif num == 13
     $oxygen = 'm'
    elsif num == 14
      $oxygen = 'n'
    elsif num == 15
      $oxygen = 'o'
   elsif num == 16
      $oxygen = 'p'
    elsif num == 17
      $oxygen = 'q'
    elsif num == 18
     $oxygen = 'r'
    elsif num == 19
      $oxygen = 's'
    elsif num == 20
      $oxygen = 't'
   elsif num == 21
      $oxygen = 'u'
    elsif num == 22
      $oxygen = 'v'
   elsif num == 23
      $oxygen = 'w'
    elsif num == 24
      $oxygen = 'x'
   elsif num == 25
      $oxygen = 'y'
    elsif num == 26
      $oxygen = 'z'
   else
    end
 end
 att = 0
 num = ''
 while att != 3
   att += 1
   rt = generate_num(more_than, less_than)
   $ox = num.concat($oxygen)
 end
  end
  generate_random(1, 28)
  uic2 = $ox

  ## Unique numerical Identification Code

  uic3 = rand(100.. 999)

  ##UID file  num receiving
  uic_file_num_data = File.open("lib/uid-direct/current-langs.txt")
  uic_file_num = uic_file_num_data.read
  uic_file_num = uic_file_num.strip
  uic_file_num = uic_file_num.to_i
  fut_uic_file_num += 1

  File.open("lib/uid-direct/current-langs.txt", "w+") do |file|
   file.write(fut_uic_file_num)
  end

end

puts("
    >>> Welcome To CDc11 <<<")
print("$  ")
input_code = gets.chomp()

# # Commands
new_lang = ["lang.new(", ")"]
load_lang = ["lang.load(", ")"]

if input_code[0.. 8] == new_lang[0]
  if input_code[-1] == new_lang[1]
    new_lang_type = input_code[9.. -2]

    new_lang(new_lang_type)

  else
    puts("
    Invaild Command")
    trash = $stdin.getpass
    exit
  end
elsif input_code[0.. 9] == load_lang[0]
  if input_code[-1] == load_lang[1]
    lang_uic = input_code[10.. -2]

    # tbc

  else
    puts("
    Invaild Command")
    trash = $stdin.getpass
    exit
  end
else
  puts("
  Invalid Command")
  trash = $stdin.getpass
  exit
end
