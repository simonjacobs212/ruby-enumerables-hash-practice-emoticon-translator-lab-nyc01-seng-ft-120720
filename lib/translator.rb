# require modules here
require 'pry'
require 'yaml'




def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticons.each do |name, emoticon_set|
    emoticon_hash[name] = {
      :japanese => emoticon_set[1],
      :english => emoticon_set[0]
    }
  end
  emoticon_hash
end


def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  emoticons.each do |key, language_set|
    if language_set[:english] == emoticon
      return language_set[:japanese]
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  emoticons.each do |key, language_set|
    if language_set[:japanese].include?(emoticon)
      return key
    end
  end
  "Sorry, that emoticon was not found"
end
  # code goes here
