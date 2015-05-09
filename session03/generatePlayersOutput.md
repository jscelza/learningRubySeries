```
Warning: Running `gem pristine --all` to regenerate your installed gemspecs (and deleting then reinstalling your bundle if you use bundle --path) will improve the startup performance of Spring.
[WARNING] The model name 'Players' was recognized as a plural, using the singular 'Player' instead. Override with --force-plural or setup custom inflection rules for this noun before running the generator.
      invoke  active_record
      create    db/migrate/20150509202807_create_players.rb
      create    app/models/player.rb
      invoke    test_unit
      create      test/models/player_test.rb
      create      test/fixtures/players.yml
      invoke  resource_route
       route    resources :players
      invoke  scaffold_controller
      create    app/controllers/players_controller.rb
      invoke    erb
      create      app/views/players
      create      app/views/players/index.html.erb
      create      app/views/players/edit.html.erb
      create      app/views/players/show.html.erb
      create      app/views/players/new.html.erb
      create      app/views/players/_form.html.erb
      invoke    test_unit
      create      test/controllers/players_controller_test.rb
      invoke    helper
      create      app/helpers/players_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/players/index.json.jbuilder
      create      app/views/players/show.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/players.coffee
      invoke    scss
      create      app/assets/stylesheets/players.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss
```
