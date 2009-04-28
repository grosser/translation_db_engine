class TranslationKeysController < ActionController::Base
  def index
    @translation_keys = TranslationKey.find(:all)
  end
end