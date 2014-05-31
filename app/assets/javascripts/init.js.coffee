$ ->
  controller = $('body').data('controller')
  $("##{controller}").addClass('active')
  if controller == 'contact'
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
    init_map()
