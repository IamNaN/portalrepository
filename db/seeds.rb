def wipeout(table)
  puts "wiping out #{table.pluralize}"
  table.singularize.classify.constantize.destroy_all
  ActiveRecord::Base.connection.reset_pk_sequence!(table.downcase.pluralize)
end

wipeout 'Item'
wipeout 'Folder'

root = Folder.create(name: '2016')
dist = Folder.create(name: 'Seattle Public Schools', parent: root)
fhs = Folder.create name: 'Franklin High School', parent: dist
ghs = Folder.create name: 'Garfield High School', parent: dist
ihs = Folder.create name: 'Ingraham High School', parent: dist

[ghs, fhs, ihs].each do |school|
  Folder.create name: 'Stuff', parent: school
  Folder.create name: 'More Stuff', parent: school
  Folder.create name: 'Even More Stuff', parent: school
end