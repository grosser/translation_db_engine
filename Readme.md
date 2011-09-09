A interface for database stored translation editing as rails engine.
Uses your styles/layout and fits seamlessly.

Setup
=====
    rails plugin install git://github.com/grosser/translation_db_engine.git

### Default
 - Setup FastGettext(>= 0.4.7) to run from database and include the db_models, see [FastGettext Readme](http://github.com/grosser/fast_gettext)
 - `rails generate migration CreateTranslationTables` and paste in [migrations to create models](http://github.com/grosser/fast_gettext/blob/master/examples/db/migration.rb)
 - Start translating! (it is as fast as mo/po based translations because of FastGettext`s caching)

### Personalized
 - Setup whichever I18n framework supports a database
 - Create a `TranslationKey` model that `has_many :translations`, `available_locales` and `accepts_nested_attributes_for :translations`
 - Make available locales return the locales you need
 - Start translating!

### Thereafter...
 - Setup authentification by copying and modifying translation_db_engine.yml into RAILS_ROOT/config
 - `rake sync_po_to_db` to load all translations from .po files into the database (given they lie in /locale), requires [pomo po parser](http://github.com/grosser/pomo)
 - (If not translations exist yet) Add initial translations through import or create them through the script/console (you NEED a translation for every locale so that `available_locales` is populated and edit fields are shown correctly)
 - Visit `/translation_keys` in your browser.

TODO
====
 - specs
 - search + ordering + pagination

Author
======
[Michael Grosser](http://grosser.it)<br/>
michael@grosser.it<br/>
Hereby placed under public domain, do what you want, just do not hold me accountable...
