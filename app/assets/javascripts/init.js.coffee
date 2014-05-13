$ ->
  url = document.URL
  uri = url.replace /\?.+/g, ''
  uri = uri.replace /\/index/g, ''
  uri = uri.replace /.+:\/\/.+\//g, ''
  if uri == ''
    uri = 'home'
  $("##{uri}").addClass('active')
