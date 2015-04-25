# Homeworks = new Meteor.Collection 'homeworks'

# Homeworks.allow
#   insert: (userId, homework) ->
#     userId && homework.teacher == userId
#   update: (userId, homeworks, fields, modifier) ->
#     _.all homeworks, (homework) ->
#       userId && homework.teacher == userId
#   remove: (userId, homeworks) ->
#     _.all homeworks, (homework) ->
#       userId && homework.teacher == userId