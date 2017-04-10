require 'pry'
def reformat_languages(languages)
  new_hash = {}

languages.each do |style,language_data|
  language_data.each do |language,language_info|    
    new_hash.merge!(language => language_info) if new_hash[language].nil?
   # binding.pry

    new_hash[language][:style] = [] if new_hash[language][:style].nil? 
   # binding.pry
    new_hash[language][:style] << style
  
  end
end
# binding.pry


new_hash
end
