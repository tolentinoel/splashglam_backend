class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :skin_type, :age, :lists

  def lists
      self.object.lists.map do |each_list|
      {
        id: each_list.id,
        title: each_list.title,
        
      }
      end

  end


end

