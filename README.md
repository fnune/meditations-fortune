# Meditations Fortune

This project provides a fortune database file using Marcus Aurelius's
"Meditations". Once installed, you can retrieve a paragraph from "Meditations"
to use as a quote or thought of the day. In addition to the original Roman
numerals indicating the paragraph number, a prefix has been added to indicate
which book the paragraph belongs to.

```
$ fortune meditations
II.I. Remember how long thou hast already put off these things, and how often a certain day and hour as it were, having been set unto thee by the gods, thou hast neglected it. It is high time for thee to understand the true nature both of the world, whereof thou art a part; and of that Lord and Governor of the world, from whom, as a channel from the spring, thou thyself didst flow: and that there is but a certain limit of time appointed unto thee, which if thou shalt not make use of to calm and allay the many distempers of thy soul, it will pass away and thou with it, and never after return.
```

For better formatting, especially in narrower terminals, you can constrain the
output to the width of your window:

```
$ fortune meditations | fmt -w $(tput cols)
II.I. Remember how long thou hast already put off these things, and how often a
certain day and hour as it were, having been set unto thee by the gods, thou
hast neglected it. It is high time for thee to understand the true nature both
of the world, whereof thou art a part; and of that Lord and Governor of the
world, from whom, as a channel from the spring, thou thyself didst flow: and
that there is but a certain limit of time appointed unto thee, which if thou
shalt not make use of to calm and allay the many distempers of thy soul, it
will pass away and thou with it, and never after return.
```

## License

This project is licensed under the MIT License and the content is in the Public
Domain.
