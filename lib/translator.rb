# require modules here
require 'pry'
require 'yaml'




def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticons.each do |name, emoticon_set|
    emoticon_set.each do |e|
      if !emoticon_hash[name]
        emoticon_hash[name] = Hash.new
      end
        binding.pry

    end
  end
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
