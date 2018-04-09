class Timer
  attr_accessor :seconds

  # On défini les secondes = 0 de base
  def initialize
    @seconds = 0
    return @seconds
  end

  def time_string
    # Une heure = 3600s
    # Une minute = 60s
    # On calcule les temps en prenant en compte cette base la
    @heures = @seconds / 3600.to_i
    @minutes = (@seconds / 60 - @heures * 60).to_i
    @seconds = (@seconds - @minutes * 60 - @heures * 3600).to_i

    # Boucle d'affichage en fonction du nombre de secondes
    if @minutes > 10
      @minutes = "#{minutes}"
    else
      @minutes = "0#{@minutes}"
    end

    if @seconds > 10
      @seconds = "#{@seconds}"
    else
      @seconds = "0#{@seconds}"
    end

    if @heures > 10
      @heures = "#{@heures}"
    else
      @heures = "0#{@heures}"
    end
  end

  # Résultat finale
  return "" + @heures + ":" + @minutes + ":" + @seconds
end