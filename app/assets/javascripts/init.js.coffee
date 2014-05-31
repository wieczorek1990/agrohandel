$ ->
  url = document.URL
  uri = url.replace /\?.+/g, ''
  uri = uri.replace /\/index/g, ''
  uri = uri.replace /.+:\/\/.+\//g, ''
  if uri == ''
    uri = 'home'
  $("##{uri}").addClass('active')
  if uri = 'contact'
    init_map()

init_map = ->
  myOptions =
    zoom: 15
    center: new google.maps.LatLng(52.514784, 16.256712900000025)
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions)
  marker = new google.maps.Marker(
    map: map
    position: new google.maps.LatLng(52.514784, 16.256712900000025)
  )
  infowindow = new google.maps.InfoWindow(content: "<b>Agro-Handel</b><br/>Spichrzowa 2<br/>62-045 Pniewy")
  google.maps.event.addListener marker, "click", ->
    infowindow.open map, marker
  infowindow.open map, marker
