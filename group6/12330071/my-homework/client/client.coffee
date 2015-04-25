Homeworks = new Mongo.Collection 'homeworks'

Template.homework.helpers
  homeworks: ->
    Homeworks.find {},
      sort:
        time: -1

Template.teacher.events
  'submit .new-homework': (event) ->
    Homeworks.insert
    title = event.target.title.value
    content = event.target.content.value
    date = event.target.content.value
    time = event.target.content.value
    Homeworks.insert
      title: title
      content: content
      deadline: date + time
      time: new Date
      submissions: []

Accounts.ui.config
  passwordSignupFields: 'USERNAME_ONLY'