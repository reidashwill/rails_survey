class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy

  before_save(:titleize_survey)

  private
  def titleize_survey
    no_caps = ["a", "is", "you", "he", "she", "it", "we", "you", "me", "him", "her", "us", "my",  "his", "its", "our", "who",  "if", "how", "as"]
    result = []
    split_name = self.name.split(" ")
    split_name.each do |w|
      if no_caps.any? {|c| w == c }
        w = w
        result.push(w)
      else
       w = w.titleize
       result.push(w)
      end
    end  
    self.name = result.join(" ")
  end
end
