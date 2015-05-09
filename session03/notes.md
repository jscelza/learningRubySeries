
## Overview

* Slides: http://54.200.71.52:8000/#/


## Agenda

* First half:  Theory, little bit of work
* Second: Building and coding. (hands-on)

## Ruby Overview

### Web Technologies

* MVC (Model, View, Controller) Applications
  * seperate your data from your views
  * *Model* --> the layout of your date
  * *View* --> how do i want to view that data
  * *Controller* -->  brings MODEL and
* CRUD (Create, Read, Update, Delete) based interfaces
* RESTful interfaces --> Way to interact

* Maps Crud to HTTP Verbs
  * Get -> Read
  * Put -> Create
  * Post -> Update
  * Delete -> Delete

### Ruby vs Rails

*Ruby is not Rails and Rails is kinda Ruby.*

* Ruby --> Object oriented interrupted `language`
* Rails - What is it?
  * A `framework/tool` set for web applications (really not a site, per se)
  * A web applciations that you put something in and get something back
* Why would ruby want to e on Rails
  * inject my stuff into object without implementing into
  * BIG SPOTLIGHT THAT MAKE IT LOOK GOOD

### Tools

* *GEMS* --> Packages to entend your language
* *Bundler* --> A package manager which is s GEM for managing `GEMS`
* *Rake* --> An open framework Administrative tool.
* *Collections* --> A way to filter out your data

## First Application

Set RBENV: export RBENV_VERSION=2.1.1

```
gem install rails
gem install rails
rails new llroster
```
[output:](./createNewLLrosterOutput.md)

```
rails server
```

hit following to validate it worked: http://localhost:3000/

### What did it create?

Lots of Directories

* app
  * assets - resources that other parts of the code
  * controllers - Connects data and views
  * helpers - business rules to validate data
  * mailers - allows reports, data to be set via email
  * models - Models of data
  * views - View of data
* bin - executable binaries
* lib - reusable code
* vendor - 3rd party stuff

### Ensure DB is created

If doesn't create db/development.sqlite3 then do the following

```
rake db:create
```
Output if already there: `db/development.sqlite3 already exists`

### Making the front page

```
rails generate controller welcome index
```
[output](./generateConterollerWelcomeIndexOutput.md)
[validate](http://localhost:3000/welcome/index)

*copy over all static version*

### Making some DB stuff

```
rails generate scaffold Players last:string first:string postion:string phone:string email:string
```
[output](./generatePlayersOutput.md)
*Note:*

* It create you OMF - object mapping file
* Rails auto create a place for timestamp and ID (timesta)

#### Create DB Tables

```
rake db:migrate
```
[output](./dbMigrationOutput.md)

#### Create Players Table
```
rails generate scaffold Players last:string first:string postion:string phone:string email:string
```
[output](./generatePlayersOutput.md)

#### Create Teams Table & add keys

```
rails generate scaffold Team name:string
```
[output](./generateTeamOutput.md)

```
rails generate migration add_team_fk_to_players
```
[output](./generateAddTeamToPlayersOutput.md)

```
rake db:migrate
```
[output](./generateAddTeamToPlayersOutput.md)


## Commands line fun

* getting into the Rails Console

```
cd ~/repos/learningRubySeries/session03/llroster
rails console
Loading development environment (Rails 4.2.1)
```

* Query for Teams and Players

```
irb(main):001:0> Player.all
    Player Load (1.3ms)  SELECT "players".* FROM "players"
  => #<ActiveRecord::Relation [#<Player id: 1, last: "dimaggio", first: "Joe", postion: "2B", phone: "123-456-7890", email: "joe.dimaggio@gmail.com", created_at: "2015-05-09 20:45:38", updated_at: "2015-05-09 20:46:22">, #<Player id: 2, last: "Scelza", first: "Jeffrey", postion: "P", phone: "3038805658", email: "jeffscelza76@gmail.com", created_at: "2015-05-09 21:25:36", updated_at: "2015-05-09 21:30:13">]>
irb(main):002:0> Team.all
    Team Load (0.1ms)  SELECT "teams".* FROM "teams"
  => #<ActiveRecord::Relation []>
```

* Create a new Team

```
irb(main):006:0* T=Team.new
  => #<Team id: nil, name: nil, created_at: nil, updated_at: nil>
irb(main):008:0> T.name="Lochbuie Lions"
  => "Lochbuie Lions"
irb(main):014:0> T.updated_at = Time.now
  => 2015-05-09 16:08:33 -0600
irb(main):015:0> T.created_at = Time.now
  => 2015-05-09 16:08:36 -0600
irb(main):016:0> T.save
   (0.1ms)  begin transaction
  SQL (0.8ms)  INSERT INTO "teams" ("name", "created_at", "updated_at") VALUES (?, ?, ?)  [["name", "Lochbuie Lions"], ["created_at", "2015-05-09 22:08:36.725328"], ["updated_at", "2015-05-09 22:08:33.757358"]]
   (3.2ms)  commit transaction
```

* Next steps

```
irb(main):017:0> Team.all
    Team Load (0.2ms)  SELECT "teams".* FROM "teams"
  => #<ActiveRecord::Relation [#<Team id: 1, name: "Lochbuie Lions", created_at: "2015-05-09 22:08:36", updated_at: "2015-05-09 22:08:33">]>
irb(main):020:0* Player.all
    Player Load (0.1ms)  SELECT "players".* FROM "players"
  => #<ActiveRecord::Relation [#<Player id: 1, last: "dimaggio", first: "Joe", postion: "2B", phone: "123-456-7890", email: "joe.dimaggio@gmail.com", created_at: "2015-05-09 20:45:38", updated_at: "2015-05-09 20:46:22">, #<Player id: 2, last: "Scelza", first: "Jeffrey", postion: "P", phone: "3038805658", email: "jeffscelza76@gmail.com", created_at: "2015-05-09 21:25:36", updated_at: "2015-05-09 21:30:13">]>
```

rail dbconsole
rails generate migration createTeams2
rails generate migration createPlayers2