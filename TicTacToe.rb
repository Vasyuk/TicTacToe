class Player
  attr_accessor :name, :daggerZero
  def verificationName(nameVer)
    while !(/[A-Za-z]/=~nameVer)
      puts "You have to write a real name"
      nameVer = gets.chomp
    end
    return nameVer.capitalize
  end

  def verificationDaggerZero(nameVer)
    while !(nameVer == "X" || nameVer == "O")
      puts "You have to write X or O"
      nameVer = gets.chomp
    end
    return nameVer
  end
end

class BoardCase
  attr_accessor :bZ
end

class Board
  @@case1 = BoardCase.new
    @@case1.bZ = " "
  @@case2 = BoardCase.new
    @@case2.bZ = " "
  @@case3 = BoardCase.new
    @@case3.bZ = " "
  @@case4 = BoardCase.new
    @@case4.bZ = " "
  @@case5 = BoardCase.new
    @@case5.bZ = " "
  @@case6 = BoardCase.new
    @@case6.bZ = " "
  @@case7 = BoardCase.new
    @@case7.bZ = " "
  @@case8 = BoardCase.new
    @@case8.bZ = " "
  @@case9 = BoardCase.new
    @@case9.bZ = " "
  def initBoard(name,bZe)
    if name == "1"
      @@case1.bZ = bZe
    elsif name == "2"
      @@case2.bZ = bZe
    elsif name == "3"
      @@case3.bZ = bZe
    elsif name == "4"
      @@case4.bZ = bZe
    elsif name == "5"
      @@case5.bZ = bZe
    elsif name == "6"
      @@case6.bZ = bZe
    elsif name == "7"
      @@case7.bZ = bZe
    elsif name == "8"
      @@case8.bZ = bZe
    elsif name == "9"
      @@case9.bZ = bZe
    end
  end
  def showBoard
      puts @@case1.bZ + " | " +  @@case2.bZ + " | " +  @@case3.bZ
      puts "----------"
      puts @@case4.bZ + " | " +  @@case5.bZ + " | " +  @@case6.bZ
      puts "----------"
      puts @@case7.bZ + " | " +  @@case8.bZ + " | "+  @@case9.bZ
  end
end



class Game
  @@player1 = Player.new
  @@player2 = Player.new
  @@board = Board.new
  def initialising
    puts "Welcome to the best game in the world \"Tic-Tac-Toe\" "

    puts "Player 1 write his name:"
    namePl = gets.chomp
    @@player1.name = @@player1.verificationName(namePl)
    puts "Player 2 write his name:"
    namePl = gets.chomp
    @@player2.name = @@player1.verificationName(namePl)

    puts @@player1.name + " wonts to play with CROSSES or with ZERO? X/O"
    daggerZero = gets.chomp
    @@player1.daggerZero = @@player1.verificationDaggerZero(daggerZero.upcase)
    @@player1.daggerZero
    if (@@player1.daggerZero == "X")
      @@player2.daggerZero = "O"
    else
      @@player2.daggerZero = "X"
    end
    gamee
  end

  def gamee
    for n in (0..4)
      puts @@player1.name + " chooses where he wants to put " + @@player1.daggerZero + " 1 - 9"
      digit = gets.chomp
      @@board.initBoard(digit, @@player1.daggerZero)
      @@board.showBoard
      puts @@player2.name + " chooses where he wants to put " + @@player2.daggerZero + " 1 - 9"
      digit = gets.chomp
      @@board.initBoard(digit, @@player2.daggerZero)
      @@board.showBoard
    end
  end
end

game = Game.new
game.initialising
