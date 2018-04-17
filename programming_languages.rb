def reformat_languages(languages)
  hash = {}
  
  languages.each do |style, hash|
    if style == :oo
      hash.collect do |language, type_hash|
        hash[language] = type_hash
        hash[language][:style] = [style]
      end
    end
  end

  hash
end
