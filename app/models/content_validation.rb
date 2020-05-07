module ContentValidation
  extend ActiveSupport::Concern

  def post_content (sentence)
    exclude_words = ['bad','poor','dirty']

    sentence.each do |w|
      if (w).eql?
        'true'
      else
        'false'
      end
    end
  end

  module ClassMethods # if to use ActiveSupport Concern
    def vowel_count(string)
      string.downcase.count('aeiou')
    end
  end

  #def self.included(include_classes)
    #include_classes.extend VowelCheck
    #include_classes.send(:belongs_to, :user)
  #end




end