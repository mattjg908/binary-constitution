class Home
  @document_ready: ->
    $( "#slider" ).slider({ min: 0, max: max, step: 1, slide: Home.sliding})

  @sliding: (e, ui) ->
    console.log(ui.value)
    $.ajax({
      dataType:'json'
      type:'get'
      url: '/word/'+ui.value
      }).done(Home.datar)
  @datar: (d)->
    $('.word').text(d['word'])
    $('.bin').append(d['bin'])
    $('.hex').text(d['hex'])
    $('.dec').text(d['dec'])


$(document).ready(Home.document_ready)
