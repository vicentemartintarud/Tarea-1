class Story < ApplicationRecord
  has_many :comments
  before_create :set_lim, :if => :new_record?
  before_update :set_lim

  def set_lim
    puts "Aca estoy"
    i = 1
    words = self.body.split
    self.story_lim = '' + words[0]
    while 1
      begin
        if self.story_lim.length + words[i].length < 1000
          self.story_lim += ' ' + words[i]
          i += 1
        else
          self.story_lim += '...'
          break
        end
      rescue
        break
      end
    end
  end
end
