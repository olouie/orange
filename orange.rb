class OrangeTree

  def initialize
    @age = 1
    @height = 1
    @oranges = 0
    @water = 0
    @months = 0
    @weeds = 1
    puts
    puts 'Year 1:'
    puts '---------'
    puts 'You planted an orange tree!'
  end

  def howOld
    if @age == 1
      puts :'The orange tree is 1 year old.'
    else
      puts :"The orange tree is #{@age} years old."
    end
  end

  def heightMeasure
    puts :"The orange tree is #{@height} feet tall."
  end

  def orangeCount
    if @oranges == 1
      puts :'There is 1 orange on the tree.'
    else
      puts :"There are #{@oranges} oranges on the tree."
    end
  end

  def weedCount
    if @weeds == 1
      puts :'There is 1 weed around the orange tree.'
    else
      puts :"There are #{@weeds} weeds around the orange tree."
    end
  end

  def water
    puts :'You water the orange tree.'
    @water += 1
    weedsPop(1)
    coupleMonthsPass
  end

  def weed
    if @weeds > 0
      puts :'You pull a weed out.'
      @weeds -= 1
      if @weeds == 0
        puts
        puts :'You cleared all the weeds. Good job!'
      end
    else
      puts
      puts :'There are no weeds to pull.'
    end
  end

  def prune
    puts :'You prune the orange tree.'
    @height -= 1
    if @height < 6
      puts
      puts 'The tree sustains too much damnage and DIES!!'
      puts 'You KILLED the orange tree!!'
      puts "\nWTH did you do?!"
      puts 'The tree was too short!!'
      puts 'You SUCK at keeping an orange tree alive!!'
      playAgain
    end
    coupleMonthsPass
  end

  def sing
    puts :'You sing to the orange tree.'
    @water += rand(2)
    coupleMonthsPass
  end

  def pet
    puts :'You pet the orange tree.'
    @water += rand(2)
    coupleMonthsPass
  end

  def climb
    puts :'You try to climb the orange tree.'
    puts
    if @height <= 5
      puts 'It snaps in half and DIES!!'
      puts 'You KILLED the orange tree!!'
      puts "\nOMG, are you crazy?!"
      puts 'The orange tree was shorter than you!!'
      puts 'WTH is wrong with you?!'
      playAgain
    elsif @height >= 6 && @height < 16
      puts :'The tree bends at the trunk.'
      puts :'It\'s not tall enough to climb!'
      puts :'You end up breaking off the top branches!'
      @height -=2
    elsif @height >= 16 && @height < 20
      puts :'You climb a few feet off the ground'
      puts :'The view is disappointing.'
      puts :'You accidentally break off some branches!'
      @height -= 1
    else
      puts :'You climb to the top of the tree.'
      puts :'What a nice view!'
    end
    coupleMonthsPass
  end

  def pickOranges(number)
    if number == 1
      puts :'You try to pick 1 orange from the tree.'
    else
      puts :"You try to pick #{number} oranges from the tree."
    end

    if @oranges == 0
      puts
      puts :'There are no oranges to pick!'
      coupleMonthsPass
    end

    if @oranges > 0
      if @oranges == number
        puts
        puts :'You picked all of the oranges! There are none left.'
        dropOranges(number)
        @oranges = 0
      elsif @oranges < number
        puts
        puts :'There are not enough oranges to pick! But you can picked them all anyways.'
        dropOranges(@oranges)
        @oranges = 0
      else # @oranges > number
        dropOranges(number)
        @oranges -= number
        orangeCount
      end

      if @oranges == 0 && @months == 6
        puts
        puts :'You\'ve picked all the oranges for this season.'
      end
    end
    coupleMonthsPass
  end

  def sit
    by_tree = [
        "*...zzzZZZzzz...*\nYou fall asleep under the tree for a little bit.",
        "GAH!! ANTS!!\nThey managed to crawl all over you while you were sitting!!",
        "A fat cat approaches you and takes a nap in your lap.\nAguh, it's heavy!",
        'A dog appears and chases you!!',
        "You spot a hobo a short distance away.\nHe shakes his head and leaves.",
        "*PLOP*\nA catepillar falls out of the tree and lands on your head!",
        'You watch rabbits playing nearby.',
        "CRAP!!\nYou sat in some unknown poop!!",
        "You unknowingly frighten a skunk that was hiding behind the tree!\nIt sprays you!",
        'Monks join you and teach you the ways of Buddha.',
        'A botanist joins you and compliments your tree.',
        "You see teenagers lurking nearby.'\nYou yell at them to stay off your property!",
        "Jehovah's witnesses approach you and try to convert you.\nYou run away!"
    ]

    puts 'You sit next to the orange tree.'
    puts
    x = rand(15)
    if x < 13
      puts by_tree[x]
    end

    if x == 14
      if @oranges > 0
        puts :'*KLUNK!*'
        puts :'An orange falls out of the tree and strikes you in the head!'
        @oranges -= 1
      else
        puts :'It\'s such a nice day out!'
      end
    end
    coupleMonthsPass
  end


  def check
    x = rand(27)
    if x >= 0 && x < 5
      weather = [
          'The sun is shining brightly.',
          'Clouds float by in the sky, and shade it from the sun.',
          "It's a windy day.\nThe orange tree is swaying in the breeze.",
          'It\'s overcast outside.',
          'There is a light fog, everything is now moist.'
      ]

      y = rand(5)
      puts weather[y]
      coupleMonthsPass
    end

    if x >= 5 && x < 10
      animals = [
          'A fat cat is napping under the orange tree.',
          'Some birds perch on the tree\'s branches.',
          'Rabbits frolick around the orange tree.',
          'Bees are buzzing around the orange tree.',
          'A deer runs passed the orange tree.',
          'You find poop of some unknown animal near the base of orange tree.',
          "You smell a skunk!\nOne must of passed by recently.",
          'A dog comes along and pees on the orange tree.',
      ]

      y = rand(8)
      puts animals[y]
      coupleMonthsPass
    end

    if x >= 10 && x < 15
      people = [
          'Monks visit the orange tree, and sit and meditate under to it.',
          "Teenagers try to carve their initials into the orange tree!\nYou shout at them and chase them off!",
          'A botanist visits the orange tree and admires it.',
          "You find a random hobo taking a nap under your orange tree.\nHe wakes up and runs away!",
          "DAMNIT!!\nStupid kids TPed the orange tree!!"
      ]

      y = rand(5)
      puts people[y]
      coupleMonthsPass
    end

    if x >= 15 && x < 20
      status = [
          'The orange tree looks good.',
          'You should water your orange tree.',
          'Nothing exciting is happening.',
          'The orange tree is doing well.',
          'There is some dew on the leaves of the tree.',
          'It looks like catepillars ate some of the leaves of the tree.'
      ]

      y = rand(6)
      puts status[y]
      if y == 0
        if @weeds > 0
          puts :'But this place looks like a dump...'
          puts :'Look! There are weeds!'
          weedCount
        end
      end

      if y == 1
        if @water == 0
          puts :'It looks crunchy.'
        elsif @water > 0 && @water < 3
          puts :'It looks wilty and pitiful.'
        else
          puts :'It will love it!'
        end
      end
      coupleMonthsPass
    end

    if x >= 20 && x < 25
      stuff_happening = [
          'It\'s raining outside!',
          'You find weeds growing!',
          'It\'s extremely windy outside!',
          'Some asshole tries to climb the orange tree.',
          'There\'s a big storm! It\'s pouring outside!',
          'It is really hot outside!',
          'Oh no, a drought!',
          'The local sheep invade your yard and eat all the weeds!'
      ]

      y = rand(7)
      puts stuff_happening[y]
      if y == 0
        @water += 3
        weedsPop(3)
      end

      if y == 1
        weedsPop(1)
        weedCount
      end

      if y == 2
        if @height < 4
          puts 'The orange tree snaps in half and DIES!!'
          puts 'RIP Orange Tree'
          playAgain
        else
          puts 'Some branches break off of the orange tree!'
          @height -= 2
        end
      end

      if y == 3
        if @height <= 5
          puts
          puts 'The asshole snaps it in half and KILLS it!!'
          puts 'You chase the asshole away with an axe!'
          puts 'RIP Orange Tree'
          playAgain
        elsif @height >= 6 && @height < 16
          puts
          puts :'The tree bends at the trunk.'
          puts :'The asshole falls off the orange tree!'
          puts :'He breaks off the top branches as he falls.'
          @height -=2
        elsif @height >= 16 && @height < 20
          puts
          puts :'He climbs to the top of the tree.'
          puts :'You yell at him to get down.'
          puts :'He rips off branches in retaliation before climbing down.'
          @height -= 1
        else
          puts
          puts :'He climbs to the top and gets stuck.'
          puts :'You laugh at him and abandon his sorry ass.'
          puts :'After two days, a neighbor finally calls 911 to rescue him.'
        end
      end

      if y == 4
        weedsPop(6)
      end

      if y == 5
        if @water > 0
          @water -= 1
        end
      end

      if y == 6
        @water = 0
      end

      if y == 7
        @weeds = 0
      end
      coupleMonthsPass
    end

    if x == 25
      weirdness = [
          'You see a dark shadow looming around the tree.',
          'There are gigantic, human-like footprints near the orange tree.',
          'You hear a voice calling in the distance, but nobody is there.',
          'Hey! Are those your missing left socks at the base of the tree?',
          'There are rocks arranged in weird circles by the orange tree.',
          "For a moment, it seemed like the orange tree quivered a little.\nBut there is no wind..."
      ]

      y = rand(6)
      puts weirdness[y]
      coupleMonthsPass
    end

    if x == 26
      tree_death = [
          'A drunk driver crashes into the orange tree and KILLS it!!',
          'The orange tree gets overtaken by a deadly fungus and DIES!!',
          'A swarm of locust ravages the orange tree and KILL it!!',
          'A beaver chews down the orange tree and KILLS it!!',
          'A random lumberjack appears and CHOPS down the orange tree!!',
          'A desperate gardener sneaks into your yard and MULCHES the orange tree!!',
          'THE ORANGE TREE GETS ABDUCTED BY ALIENS!!'
      ]

      y = rand(6)
      puts tree_death[y]
      puts 'RIP Orange Tree'
      playAgain
    end

    if x == 27
      user_death = [
          'THE WORLD FALLS INTO A ZOMBIE APOCALYPSE!!',
          'HOLY SHIT!! IT\'S THE RAPTURE!!',
          "YOU GET ABDUCTED BY ALIENS!!\nThe orange tree will miss you...",
          "You come down with cancer and DIE!!\nThe orange tree will never see you again!!",
          'You get MURDERED!! The orange tree is going to miss you...',
          'YOUR CITY GETS HIT BY A NUKE!! EVERYTHING IS DEAD!!',
          'ALIENS APPEAR AND VAPORIZE THE EARTH!! NOTHING IS LEFT!!'
      ]

      y = rand(6)
      puts user_death[y]
      if y == 0
        if @height < 5
          puts 'YOU GET EATEN BY ZOMBIES!!'
        elsif @height > 5 && @height < 21
          puts 'YOU GET BITTEN AND TURN INTO A ZOMBIE!!'
        else
          puts 'YOU CLIMB INTO YOUR ORANGE TREE AND SNIPE ZOMBIES!!'
          puts 'To be continued...'
        end
      end

      if y == 1
        if @water == 0
          puts 'Only the orange tree gets beamed up into heaven!'
          puts 'You are lefted behind...'
          puts 'You must of been a horrible person!'
        else
          puts 'Both you and the orange tree are beamed up into heaven!'
          puts 'Together forever...'
        end
      end
      playAgain
    end

  end

  def axe
    puts 'You take an axe and try to chop the orange tree down.'
    if @height <= 5
      puts
      puts 'The axe cuts through it like a twig.'
    elsif @height >= 6 && @height < 16
      puts
      puts 'It\'s not before long the tree is down.'
    elsif @height >= 16 && @height < 20
      puts
      puts 'It puts up a tough fight!'
      puts 'Your body is sore and hands are blistered.'
    else
      puts
      puts 'It refuses to fall!'
      puts 'The battle continues on for a couple of days before the tree goes down.'
    end
    puts
    puts 'YOU HAVE MURDERED THE ORANGE TREE!!'
    puts 'RIP Orange Tree'
    playAgain
  end

  def fight
    puts 'You challenge the orange tree to a fight!'
    if @height <= 5
      puts
      puts 'You completely dominate the tree and win!'
      puts 'RIP Orange Tree'
      playAgain
    elsif @height >= 6 && @height < 16
      puts
      puts 'You battle the orange tree and manage to break some branches!'
      puts 'You taught that tree a lesson!'
      @height -= 1
    elsif @height >= 16 && @height < 20
      puts
      puts 'Stalemate!!'
      puts 'The tree only shook at your attacks.'
      puts 'You leave the battle with only a bruised ego.'
    else
      puts
      puts 'The tree is unphased by your attacks.'
      puts 'It is as sturdy as an oak, and doesn\'t even shake a little!'
      puts 'You lost the battle, and leave the field broken and bruised.'
    end
    coupleMonthsPass
  end


  def fertilize
    puts :'You spread some Magic Grow fertilizer for the orange tree.'
    @water += rand(2)
    x = rand (6)
    if x == 0
      puts
      puts :'The magic is working!!'
      y = rand(3)
      if y < 3 && y > 0
        puts :'The orange tree magically grows 1 foot!!'
        @height += 1
      end

      if y == 0
        puts :'The orange tree magically grows 2 feet!!'
        @height += 2
      end
    end
    coupleMonthsPass
  end

  def rainDance
    puts :'You do a rain dance!'
    x = rand(6)
    if x == 0
      puts
      puts :'It worked!!'
      puts :'It begins to rain!!'
      @water += 3
      weedsPop(3)
    else
      puts
      puts :'Nothing happens...'
    end
    coupleMonthsPass
  end

  def timeWarp
    puts :'You jump to the left.'
    puts :'Take a step to the right.'
    puts :'With yours hands on your hips, you bring your knees in tight.'
    puts :'But it\'s the pelvic thrust that really drives you insaaAAaane!'
    puts :'Let\'s do the Time Warp again!!'
    x = rand(6)
    if x == 0
      puts
      puts :'With a bit of a mind flip...'
      puts :'You\'re into a time slip...'
      puts :'And nothing can ever be the same.'
      puts :'You\'re spaced out on sensation.'
      puts :'Like you\'re under sedation!'
      puts :'Let\'s do the Time Warp again!!'
      puts
      puts :'It worked!!'
      puts :'You jumped a year into the future!'
      oneYearPasses
    else
      puts
      puts :'Nothing happens...'
      puts :'The orange tree is not impressed.'
      coupleMonthsPass
    end
  end

  def play(input)
    keywords = %w(old age tall height many weed water prune trim sing pet climb pick harvest
			sit check fertilize rain dance magic grow time warp exit kill chop axe murder cut destroy 
			fight battle punch kick bite hit)

    x = input
    if keywords.none? { |y| x.downcase.include?(y) }
      puts :"You have to enter at least one of the keywords or similar, DAMNIT!!\n>:["
    else
      if x.include?('old') || x.include?('age')
        puts
        howOld
      end

      if x.include?('tall') || x.include?('height')
        puts
        heightMeasure
      end

      if x.include?('many')
        if x.include?('orange')
          puts
          orangeCount
        end

        if x.include?('weed')
          puts
          weedCount
        end
      end

      if x.include?('water')
        puts
        water
      end

      if x.include?('weed')
        puts
        weed
      end

      if x.include?('prune') || x.include?('trim')
        puts
        prune
      end

      if x.include?('sing')
        puts
        sing
      end

      if x.include?('pet')
        puts
        pet
      end

      if x.include?('climb')
        puts
        climb
      end


      if x.include?('pick') || x.include?('harvest')
        n = /\d+/.match(x)
        y = n.to_s
        if n == nil
          puts
          puts :'How many oranges do you want to pick? '
          n = gets.chomp
          while /\d+/.match(n) == nil
            puts :"\nPlease enter a number."
            n = gets.chomp
          end
          puts
          y = n.to_i
          pickOranges(y)
        else
          puts
          pickOranges(y.to_i)
        end
      end

      if x.include?('sit')
        puts
        sit
      end

      if x.include?('check')
        puts
        check
      end

      if x.include?('fertilize') || x.include?('magic')
        if x.include?('fertilize')
          puts
          fertilize
        end

        if x.include?('magic')
          if x.include?('grow')
            puts
            fertilize
          else
            puts
            puts :"One does not just simple cast any sort of 'magic'...\nYou need to add 'grow' too!\nThis isn't Harry Potter, you muggle!"
            coupleMonthsPass
          end
        end
      end

      if x.include?('rain') || x.include?('dance')
        if x.include?('rain') && x.include?('dance')
          puts
          rainDance
        end

        if x.include?('dance')
          if !x.include?('rain')
            puts
            puts :'You boogie in vain!'
            coupleMonthsPass
          end
        end

        if x.include?('rain')
          if !x.include?('dance')
            puts
            puts :'What about the rain? Go check the Weather Network shheesh!'
            coupleMonthsPass
          end
        end
      end

      if x.include?('time') || x.include?('warp')
        if x.include?('time') && x.include?('warp')
          puts
          timeWarp
        end

        if x.include?('time')
          if !x.include?('warp')
            puts
            puts :'If you wanted just the time, go get a watch!'
            coupleMonthsPass
          end
        end

        if x.include?('warp')
          if !x.include?('time')
            puts
            puts :"Who do you think I am?\nI ain't no Mr. Sulu!"
            coupleMonthsPass
          end
        end
      end

      if x.include?('kill') || x.include?('chop') || x.include?('cut') || x.include?('axe') || x.include?('murder') || x.include?('destroy')
        puts
        axe
      end

      if x.include?('fight') || x.include?('battle') || x.include?('punch') || x.include?('kick') || x.include?('bite') || x.include?('hit')
        puts
        fight
      end

      if x.downcase == 'exit'
        puts
        puts 'Fine! Leave me!'
        puts 'See if I care!'
        exit
      end
    end
  end

  def playAgain
    puts "\nGAME OVER"
    puts 'You suck at raising an orange tree!'
    puts 'Would you like to play again?'
    x = gets.chomp.downcase
    while x != 'yes'
      if x == 'no'
        puts "\nFine! I didn't like you anyways!"
        exit
      else
        puts "\nPlease enter yes or no."
      end
      puts "\nWould you like to play again?"
      x = gets.chomp.downcase
    end
    puts "\nDon't mess up again, okay?"
    puts
    puts "\nHere is a new orange tree!"
    OrangeTree.new
    @age = 1
    @height = 1
    @oranges = 0
    @water = 0
    @months = 0
    @weeds = 1
  end

  private

  def weedsPop(number)
    x = rand(5)
    if x == 0
      puts :'Some weeds up pop!'
      if number == 1
        @weeds += 1
      else
        @weeds += number
      end
    end
  end

  def dropOranges(number)
    y = rand(3)
    if y == 0
      x = rand(number + 1)
      if x == number
        puts
        puts :'AH! You dropped all of your oranges!'
        puts :'Now you have no oranges to eat!'
      end

      if x > 0 && x < number
        if x == 1
          puts
          puts :'You accidentally dropped 1 orange.'
        else
          puts
          puts :"You accidentally dropped #{x} + ' oranges!"
        end

        if (number - x) == 1
          puts
          puts :'You were only able to harvest 1 orange.'
          puts :'It was delicious!'
        else
          puts
          puts :'You were only able to harvest #(number - x) oranges.'
          puts :'They were delicious!'
        end
      end
    else
      if number == 1
        puts
        puts :'You were able to harvest 1 orange.'
        puts :'It was delicious!'
      else
        puts
        puts :"You were able to harvest #{number} oranges."
        puts :'They were delicious!'
      end
    end
  end

  def coupleMonthsPass
    @months += 1
    if @age > 2
      if @months == 4
        puts
        puts :'The fruiting season has started!'
        puts
        @oranges += rand(@age * @height)
        if @oranges == 0
          puts :'The orange tree did not bare fruit.'
        else
          puts :'The orange tree bore fruit!'
          orangeCount
        end
      end

      if @months == 5
        x = rand(2)
        if x == 0
          @oranges += rand(@age * @height) + 1
          puts
          puts :'The orange tree bore fruit again!'
          orangeCount
        end
      end

      if @months == 6 && @oranges > 0
        puts :'The season has ended, and all the leftover oranges fall off the tree.'
        @oranges = 0
      end
    end

    if @months == 6
      oneYearPasses
      @months = 0
    end
  end

  def oneYearPasses
    @age += 1
    puts
    puts :"Year #{@age}:"
    puts :'-----------------------------------'
    if @water < 3
      x = rand(5)
      if x == 0
        puts 'The orange tree has died...'
        puts 'You didn\'t take good care of it!!'
        puts 'RIP Orange Tree'
        playAgain
      end
    end

    if @water > 4
      @height += 3
    elsif @water > 2 and @water <= 4
      @height += 2
    else
      @height += 1
    end
    puts :'The orange tree grew!'
    heightMeasure

    @water = 0
  end

end


puts "\nWelcome to The Orange Tree game!\n"
puts "-----------------------------------\n"
puts "The game where you get to care of a little orange tree\nand help it grow!\n\n"
puts 'Would you like to play?'
y = gets.chomp.downcase
while y != 'yes'
  if y == 'no'
    puts "\nThen why the hell did you start up this game!?\n"
    puts "\nWould you like to play?"
  else
    puts "\nPlease enter only yes or no."
  end
  y = gets.chomp.downcase
end

puts
puts <<INFO
Instructions:
-----------------------------------
In this game, you can enter any of the keywords listed to
interact with your new little orange tree.

Be sure to enter the keywords or similar words, or else the
game will give you attitude right back.

You can also ask questions, like the height of the tree, 
how many weeds or oranges are there.

If you want to quit the game at any time enter 'exit'.

Here is a list of keywords you can use to interact with your 
orange tree:

water		sing
weed		pet
prune		climb
check		sit
fertilize

(Psss... If you want to cheat a little, try doing a rain dance 
or the time warp)

INFO

puts "\nHit enter on any key to start your orange tree care duties!"
x = gets.chomp.downcase
tree = OrangeTree.new
while x.downcase != 'If you break this loop you\'re stuck in Year 1!!'
  puts
  x = gets.chomp.downcase
  tree.play(x)
end

