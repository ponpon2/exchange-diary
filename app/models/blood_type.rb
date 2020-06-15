class BloodType < ActiveHash::Base
  self.data = [
    {id: 1, name: 'A'}, 
    {id: 2, name: 'B'}, 
    {id: 3, name: 'O'},
    {id: 4, name: 'AB'},
    {id: 5, name: '不明'} 
  ]
end
