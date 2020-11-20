# require modules here
require 'pry'
require 'yaml'




def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash[:names] = Hash.new

  emoticons.each do |name, emoticon_set|
    name.each do |emoticon_set|
      if !emoticon_hash[:names][name]
        emoticon_hash[:names][name] = []
      end
      if !emoticon_hash[:names][name][emoticon_set]
        emoticon_hash[:names][name][emoticon_set] = []
      end
    end
  end
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
