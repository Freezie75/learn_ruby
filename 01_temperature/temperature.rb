#write your code here
def ftoc (degrees_f)
    degrees_c = degrees_f - 32 # celsius = faren - 32
    degrees_c = degrees_c * 5 # celsius = celsius * 5
    # " = " designe affectation
    degrees_c = degrees_c / 9 # celsius = celsius / 9
end

def ctof(degrees_c)
    degrees_f = degrees_c * 1.8 + 32 # faren = celsius * 1.8 + 32
end