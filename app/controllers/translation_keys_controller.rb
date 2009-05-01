class TranslationKeysController < ActionController::Base
  before_filter :find_translation_key, :only=>%w[show edit update]

  def index
    @translation_keys = TranslationKey.find(:all)
  end

  def new
    @translation_key = TranslationKey.new
    add_default_locales_to_translation
    render :action=>:edit
  end

  def create
    @translation_key = TranslationKey.new(params[:translation_key])
    if @translation_key.save
      redirect_to translation_key_path(@translation_key)
    else
      render :action=>:edit
    end
  end

  def show
    render :action=>:edit
  end

  def edit
  end

  def update
    if @translation_key.update_attributes(params[:translation_key])
      flash[:notice] = 'Succesfully saved!'
      redirect_to @translation_key
    else
      flash[:error] = 'Failed to save!'
      render :action=>:edit
    end
  end

  protected
  
  def find_translation_key
    @translation_key = TranslationKey.find(params[:id])
  end

  def add_default_locales_to_translation
    TranslationKey.available_locales.each do |locale|
      @translation_key.translations.build(:locale=>locale)
    end
  end
end