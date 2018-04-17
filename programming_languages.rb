def reformat_languages(languages)
  hash = {}
  
  languages.each do |style, hash|
    
      hash.collect do |language, type_hash|
        if hash.keys.include?(language)
          hash[language][:style] << [style]
        else
          hash[language] = type_hash
          hash[language]{:style] = style
        end
      end
    
  end

  hash
end
