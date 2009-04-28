require 'fast_gettext'
unless defined? TranslationKey
  include FastGettext::TranslationRepository::DB.require_models #load and include default models
end