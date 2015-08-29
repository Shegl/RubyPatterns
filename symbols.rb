puts %q{
  #There is no listnenings about them
  #Symbols
    The merits of making strings immutable have been the subject of long debate. Strings
    were mutable in C and C++, were immutable in Java and C#, and went back to mutable
    in Ruby. Certainly there are advantages to mutable strings, but making strings
    mutable does leave an obvious gap: What do we do when we need to represent something
    that is less about data and more like an internal identifier in our program?
    Ruby has a special class of object just for this situation—namely, the symbol. A
    Ruby symbol is essentially an immutable identifier type thing. Symbols always start
    with a colon:
    • :a_symbol
    • :an_other_symbol
    • :first_name
    If you are not used to them, symbols may seem a bit strange at first. Just remember
    that symbols are more or less immutable strings and that Ruby programmers use
    them as identifiers.

}
