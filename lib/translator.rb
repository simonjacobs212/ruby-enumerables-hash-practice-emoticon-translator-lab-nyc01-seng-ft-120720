# require modules here
require 'pry'
require 'yaml'




def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash[:names] = Hash.new

  emoticons.each do |name, emoticon_set|
    emoticon_hash[:names].push(name)
  end
  
  binding.pry

end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
