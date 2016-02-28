class ContactList < ActiveRecord::Base
  before_save :generate_t9_str
  scope :t_nine_str_like, -> (t_nine_str) { where("name like?", t_nine_str)}

  def generate_t9_str
    t_nine_str = []
    contact_name = self.name.downcase
    char_arr = contact_name.each_char do |c|
      t_nine_str << LETTER_VALUES[c]
    end
    self.t_nine_str = t_nine_str.join
  end

  def contact_name_method
    "#{self.name}"
  end

end
