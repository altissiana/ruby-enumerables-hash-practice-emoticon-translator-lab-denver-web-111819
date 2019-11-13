require "yaml"
require 'pp'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticons.each_pair do |key, value|
    new_hash[:get_meaning][value[1]] = key
    new_hash[:get_emoticon][value[0]] = value[1]
  end  
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  japonese_emoticon = emoticons[:get_emoticon][emoticon]
else "not found"
end

def get_english_meaning
  # code goes here
end