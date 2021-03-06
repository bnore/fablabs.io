
namespace :dragonfly do
  desc 'Clear dragonfly uids from db'
  task clear_images: :environment do
    User.update_all(avatar_uid: nil)
    Lab.update_all(avatar_uid: nil, header_uid: nil)
    Organization.update_all(avatar_uid: nil, header_uid: nil)
    Thing.update_all(photo_uid: nil)
    Document.update_all(photo_uid: nil)
  end
end

