function RefreshLeft() {

  const photoLeft = document.getElementById("photoRightPart");
  // var url = 'http://localhost:3000/last-picture'
  var url = 'https://novancia-retrouvailles.herokuapp.com/last-picture'

  fetch(url, {
    credentials: 'same-origin'
  })

  .then(response =>
      response.json().then((data) => {
        const dataUrl = data.url
        if (photoLeft) {
          const newPhoto = photoLeft.style.backgroundImage = `url("${data.url}")`
          console.log("data was", data.url)
          console.log(newPhoto)
        };
      })
  )
}
setInterval(function() {
   RefreshLeft();
}, 5000)

export { RefreshLeft }

