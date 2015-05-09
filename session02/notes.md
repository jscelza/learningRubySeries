
## Agenda

10:30 - 1      Ruby tools of the trade
2-4:30         Building a program for
4:30 - 5       Q & A


## DBLMG/SoFree, Ruby History
  - Februray 24, 1993
  - 1.8 is the first of the "Modern Versions"

## Props of Lang
  - writeen in C
  - Uses its own specific Virtual Machine
  - interpreted NOT compiled

## True OOL
  - Models things, NOT process
  - Follows many SmallTalk principles

## Tools of the Trade

- Interactive Ruby (IRB)

```
  $ irb
  irb(main):001:0> puts RUBY_PLATFORM
  x86_64-darwin13.3.0
  => nil
  irb(main):002:0> puts RUBY_VERSION

  irb(main):007:0> s = "hello"
  => "hello"
  irb(main):008:0> s.class
  => String
  irb(main):009:0> s.kind_of?(String)
  => true
  irb(main):010:0> puts s.upcase
  HELLO
  => nil
```

- gem
  * like rpm command
- bundler
  * kinda like yum
  * gem management
  * used to tie your project with the require gems
- rake
  * task automation
  * help with routine tasks
- rspec
  * TDD (write first, then code)
  * Great tool for API
  * helps reduce regressions
- cucumber
  * BDD (better at testing behaviour)
  * better for Customer facing aspects?
  * own lang - Gherkin
- Aruba
  * BDD
  * Adds to current Cucumber Installation
  * grest for testing command line apps
- Binman
  * Write your page in MarkDown
  * Add it to your program
  * Use to produce man page for yoru app
  * JAVADoc for ruby
- JSON
  * Uses native Ruby format to reps data

## Syntax

- Ternary (Single Line If/Then/Else)

```
  x = something ? 5 : 0

   same as

  if something == true
    x = 5
  else
    x = 0
  end
```

- Unless

```
  unless something

    same as

  if something = FALSE
```

- Modified if

```
  x = 5 if something

    same as

  if something = true
    x = 5
  end
```

- while vs until
  * until is a neg (or NOT) for while (i.e. while ! a.empty something)
- times loop
  * multiple lines use "do/end"
  * sinle line use "{}"
- each  -- iterator
- flip flop

```
  irb(main):001:0> (1..10).each do |x|
  irb(main):002:1* puts x if x==4..x==8
  irb(main):003:1> end
```

## Declaration

- Global Variables
- Class Variables
  * At class, not instance level
  * begin with "@@"
- Instances Variables
  * defined once for every instatiated class/module
  * begins with "@"

### Class Properties

- Getter
  * Used by other object to "read" a property

```
attr_reader :color
```

- Setter
  * Used by other objects to "write" a new value to a property

```
attr_writer :color
```

- Read & Write
  * does both what seter and getter do

```
attr_accessor :color
```

## Class

## Exceptions

- "begin" instead of try
- "rescue" instaed of ctach
- "raise" instande of throw

## Enumerations

- select
- reject
- collect (alias map)
- detect (alias find)
- inject

## Disk & network i/o operation

- file
  * file.open
  * file.close
  * file.read
- http
  * Net::HTTP library
  * wraps the HTML API
  * Net::HTTPS for secure
- ftp
  * net::ftp module
  * upload/download files
  * fully wraps ftp protocol
- scp
  * uses Net::SSH & Net::SCP libs




Testing our code...

irb

  require "json"
  require_relative "lib/portfolio"
  fcont = File.open("data/portfolio.json").read()
  data = JSON.parse(fcont)
  port = Porfolio.new(data)

  -- Looking into the data
  port.class
  s1 = port.stocks
  s1.class
  ms = s1["MSFT"]
