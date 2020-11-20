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


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(path, emoticon)
  emoticons = YAML.load_file(path)
  emoticons2 = load_library(path)
  emoticons.each do |key, value|
    if value.include?(emoticon)
      return key
    else
      "I'm sorry, you're fucked!"
      # binding.pry
    end
  end
end
  # code goes here
