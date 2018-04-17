def reformat_languages(languages)
  my_hash = {}
  
  languages.each do |style, hash|
    
      hash.collect do |language, type_hash|
        if hash.has_key?(language)
          my_hash[language][:style] << style
        else
          my_hash[language] = type_hash
          my_hash[language][:style] = [style]
        end
      end
    
  end

  hash
end
