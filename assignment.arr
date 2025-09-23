import file("lab2-support.arr") as support
#test1
support.encryptor1("Hello")
fun new_encryptor1(a :: String) -> String:
  doc:'trying to make the same behavior with previous one'
  string-repeat(a,5)
end

support.test-encryptor1(new_encryptor1)

#test2
support.encryptor2('World')
fun new_encryptor2(b :: String) -> String:
  doc:'only print the first four letters'
  string-substring(b,0,4)
end
#test new encryptor2
support.test-encryptor2(new_encryptor2)

#test3
support.encryptor3('{}|;:",./')
fun new_encryptor3(c :: String) -> String:
  doc:'print original string'
  s = string-replace(c,".","!")
  print(c)
end
support.test-encryptor3(new_encryptor3)

#test4
support.encryptor4('nihao')
fun new_encryptor4(d :: String) -> String:
  doc:'only print the first four letter and repeat five times'
  string-repeat(string-substring(d,0,4),5)
end
support.test-encryptor4(new_encryptor4)

#test5
support.encryptor5('abcdef')
support.encryptor5('ABCDFI')
#e -> f  /u -> v /i -> j/o -> p/a -> b/
fun new_encryptor5(e :: String) -> String:
  doc:'changing specific letters'
  e1 = string-replace(e, "a", "b")
  e2 = string-replace(e1, "e", "f")
  e3 = string-replace(e2,"u","v")
  e4 = string-replace(e3,"i","j")
  e5 = string-replace(e4,"o","p")
  e6 = string-replace(e5,"A","B")
  e7 = string-replace(e6,"E","F")
  e8 = string-replace(e7,"U","V")
  e9 = string-replace(e8,"I","J")
  e9
end
support.test-encryptor5(new_encryptor5)
#test6
support.encryptor6('HELLO')