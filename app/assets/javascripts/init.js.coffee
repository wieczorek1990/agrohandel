$ ->
  url = document.URL
  uri = url.replace /.+:\/\/.+\//g, ''
  if uri == ''
    uri = 'home'
  $("##{uri}").addClass('active')
