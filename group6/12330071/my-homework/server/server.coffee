Meteor.startup ->
  console.log "Start My Homework!"
  if Meteor.users.find({}).count() == 0
    console.log "Created admin"
    id = Accounts.createUser
      email: 'admin@test.com'
      username: 'admin'
      password: 'supersecret'
    Roles.addUsersToRoles id, ['admin', 'user']

Accounts.onCreateUser (options, user) ->
  if user.username != 'admin'
    console.log "Add a role to student in server"
    user.roles = ['user']
    Roles.addUsersToRoles user._id, ['user']
  return user
