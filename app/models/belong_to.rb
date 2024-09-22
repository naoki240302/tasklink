class BelongTo < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, 
    { id: 2, name: '第一営業本部1部1課' },
    { id: 3, name: '第一営業本部1部2課' },
    { id: 4, name: '第一営業本部1部3課' },
    { id: 5, name: '第一営業本部2部1課' },
    { id: 6, name: '第一営業本部2部2課' },
    { id: 7, name: '第一営業本部2部4課' }
  ]
 
   include ActiveHash::Associations
   has_many :users
 
end