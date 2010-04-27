class Show < ActiveRecord::Base

  def setlists
    Setlist.where(:show_id => id)
  end

  def add_setlist(setlist)
    setlist.update_attributes(:show_id => id)
  end

  def to_i
    id
  end

end
