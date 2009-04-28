A interface for translation editing as rails engine.

### Configure fast_gettext
See fast_gettext/README, use the default models or rename your model to TranslationKey.

### If you do not have translation models yet
    ./script/generate migration create_translation_keys_and_translation_texts
    #insert migration from fast_gettext/examples

visit /translation_keys to get started.

All it needs are [fast_gettext](http://github.com/grosser/fast_gettext) and the models TranslationKey and TranslationText, which are both provided via fast-gettext.