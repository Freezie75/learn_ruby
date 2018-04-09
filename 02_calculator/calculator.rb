# Fonction somme
def add (a,b)
  @a = a
  @b = b
  add = @a + @b
  return add
end

# Fonction différence
def subtract(a,b)
  @a = a
  @b = b
  dif = @a - @b
  return dif
end

# Fonction différence
def sum(array)
  @array = array
  @sum = 0

=begin
Si l'array est vide, je retourne 0
sinon je fais la somme de tous les éléments
=end
  if @array.empty?
    return 0
  else
    @array.each { |x| 
      @sum = @sum + x 
    }
    return @sum
  end
end

=begin
Avec * args en argument je peux prendre N entrées
Il ne me reste plus qu'a tous les multiplier entre elles
=end
# Fonction multiply
def multiply(*args)
  product = 1
  
  args.each do |x|
    product = product * x

    return product
  end
end

# Définition de la fonction puissance
def power(a,b)
  @a = a
  @b = b

  return @a**@b
end

=begin
Pour la factorielle j'ai mis toute les valeurs de 1 à a
dans un array, ensuite je parcours l'array pour multiplié
tout les membres entre eux. Vu que 0!=1 j'ai mis une condition
pour tester si a > 1, sinon on a 1 en sortie
=end
def factorial(a)
  @a = a
  @facto = 1
  @array = []

  if a > 1
    1.upto(a) { |x| 
      @array << x 
    }
    @array.each { |x| 
      @facto = @facto * x 
    }

    return @facto
  end
end