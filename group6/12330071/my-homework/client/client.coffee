Accounts.ui.config
  passwordSignupFields: 'USERNAME_AND_EMAIL'

Template.body.events
  'click .add-homework': (event) ->
    $('#create-modal').modal 'show'

  'click #confirm-add': (event) ->
    console.log 'llllll'
    do $('#create-form').submit

  'submit #create-form': (event) ->
    title = event.target.title.value
    content = event.target.content.value
    date = event.target.date.value
    time = event.target.time.value
    Homeworks.insert
      title: title
      content: content
      deadline: new Date date + ' ' + time
      time: new Date
      submissions: []
    $('input').val ''
    $('textarea').val ''
    $('#create-modal').modal 'hide'
    return false