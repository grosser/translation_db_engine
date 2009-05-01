A interface for database stored translation editing as rails engine.  
Very alpha/hacky atm, but already used runs in production ;D

Setup
=====
    `script/plugin install git://github.com/grosser/translation_db.git `

###Default
 - Setup FastGettext(>= 0.4.5) to run from database and include the db_models, see [FastGettext Readme](http://github.com/grosser/fast_gettext)
 - Run migrations from fast_gettext/examples/migration
 - Add initial translations through import or create them through the script/console (you NEED a translation for every locale so that `available_locales` is populated and edit fields are shown correctly)
 - Start translating!

### Personalized
 - Setup whichever I18n framework supports a database
 - Create a `TranslationKey` model that `has_many :translations`, `available_locales` and `accepts_nested_attributes_for :translations`
 - Make available locales return the locales you need
 - Start translating!

Visit `/translation_keys` in your browser.

TODO
====
 - authentification (atm i just added http basic auth in my local checkout...)
 - layout/title/styles/js/search

Author
======
[Michael Grosser](http://pragmatig.wordpress.com)  
grosser.michael@gmail.com  
Hereby placed under public domain, do what you want, just do not hold me accountable...
