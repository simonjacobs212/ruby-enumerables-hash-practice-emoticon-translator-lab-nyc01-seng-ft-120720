# require modules here
require 'pry'
require 'yaml'




def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticons[0] = Hash.new
  binding.pry

end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
