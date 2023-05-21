a = int(input("a"))
b = int(input("b"))
c = int(input("c"))

d = b**2-4*a*c # discriminant

if d < 0:
    print ("no real solution")
elif d == 0:
    x = (-b+math.sqrt(b**2-4*a*c))/2*a
    print ("one solution:"), x
else:
    x1 = (-b+math.sqrt((b**2)-(4*(a*c))))/(2*a)
    x2 = (-b-math.sqrt((b**2)-(4*(a*c))))/(2*a)
    print ("two solutions: ", x1, " or", x2)
