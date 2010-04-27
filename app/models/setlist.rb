class Setlist
  include Mongoid::Document
  include Mongoid::Timestamps

  field :show_id, :type => Integer

  def show=(show_or_id)
    update_attributes(:show_id => show_or_id.to_i)
  end

end
