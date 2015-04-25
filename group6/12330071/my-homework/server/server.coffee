# Homeworks = new Mongo.Collection "homeworks"

# Meteor.methods
#   addHomework: (title, content, deadline) ->
#     Homeworks.insert
#       title: title
#       content: content
#       deadline: deadline
#       time: new Date
#       submissions: []

#   updateHomework: (id, title, content, deadline) ->
#     Homeworks.update id,
#       $set:
#         title: title
#         content: content
#         deadline: deadline

Meteor.startup ->
  console.log "Start My Homework!"
