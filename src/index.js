import './style'
import * as Elm from './Main.elm'

window.addEventListener('load', function() {
    // Fetch the Elm div element that will serve as the container for elm
    var elmDiv = document.getElementById('elm')

    // Embed the application
    var app = Elm.Main.embed(elmDiv)
})
