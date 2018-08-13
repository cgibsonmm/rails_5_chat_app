module ChatroomsHelper
  def in_chatroom?(chatroom)
    in_room = false
    chatroom.users.each do |user|
      in_room = true if user.id == current_user.id
    end
    in_room
  end
end
