class Book
  def title # On initialise avec cette méthode
    @title
  end

  # Cette méthode appelle la fonction et retourne le tout
  def title=(string)
    @title = capital_letters(string)
    return @title
  end

  def capital_letters(title)
    # Déclaration des variables
    @title = title

    # On met tout les mots dans un array
    @array_title = @title.split()
    @capitalized_movies = []
    @return = ""
    i = 0

    # On boucle sur les mots pour les mettre en capitale
    # sauf si ce sont des And in the of a an (exception
    # de The en premiere position)
    @array_title.each do |x|

      # Boucle i'f qui contient les exceptions
      stop_words = %w(and in the of a an)
      if stop_words.include?(x) && i != 0
        @capitalized_movies << x
      elsif
        x = x.capitalize
        @capitalized_movies << x
      end
      i = i + 1
    end

  @capitalized_movies.each do |x|
    @return += x + " "
  end

# On coupe le dernier espace et c'est bon
@return = @return.chomp(' ')
return @return
end
end