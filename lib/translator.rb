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
  emoticons.each do |key, value|
  end
  binding.pry
end
  # code goes here
