# La fonction répète ce qu'on dit
def echo (text)
  @text = text

  return @text
end

# La fonction répète ce qu'on dit en majuscule
def shout (text)
  @text = text
  @shout = @text.upcase

  return @shout
end

=begin
La fonction répète n fois les mots,
N est à 1 par défaut.
On fais une boucle si n > 1 (2 ou plus)
où la sortie est n fois le texte ou 2 fois
=end
def repeat (text, n=1)
  @rep = text
  @n = n
  @output = @rep

  if n > 1
    for i in 1...@n
      @output += " " + @rep
      i = i + 1
    end
  else
    @output = "#{@rep} #{@rep}"
  end

  return @output
end

=begin
On peut faire une boucle sur les premières valeurs
du texte mais on aurait pu juste faire string[0...n]...
=end
def start_of_word (text,n)
  @start= ""
  @n = n

  for i in 0...@n
    @start += text[i]
    i = i + 1
  end
    
  return @start
end

# On utilise la fonction partition pour obtenir le premier mot
def first_word (text)
  @start = text
  @return = @start.partition(" ").first

  return @return
end

=begin
On fais une fonction split qui nous récupère
tout les mots en les mettant dans un array
pour mettre chaque mot en majuscule et on les
mets dans un tableau nommé return.

Puis on fait plusieurs tests sur ce tableau
1- Si la taille de ce tableau est égale à un,
alors qu'il n'y a qu'un seul mot, on sort de
la boucle et on donne l'output.
2- Sinon alors si le mot du tableau est and, over, the :
on ne fait rien, sauf si c'est the ET qu'il est en
première position ensuite on retourne le tout.
On utilise chomp pour enlever le dernier espace qui
est la à cause de la concaténation
=end

def titleize (text)
  @string = text
  @words = @string.split(/\W+/)
  @return = []
  @output = ""  
  i = 0

  @words.each do |x|
    @return << x.capitalize
  end

  unless (@return.length == 1)
    @return.each do |x|
      i = i + 1   
      if (x == "And") || (x == "Over") || (x == "The" && i != 1)
        @output += x.downcase + " "
      else
        @output += x + " "
      end
    end

        @output = @output.chomp(" ")
      else
        @output = @return[0].capitalize
      end

    return @output
end