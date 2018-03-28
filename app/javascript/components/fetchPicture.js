function RefreshLeft() {

  const photoLeft = document.getElementById("photoRightPartImg");
  var url = 'http://localhost:3000/last-picture'
  // var url = '/last-picture'

  fetch(url, {
    credentials: 'same-origin'
  })

  .then(response =>
      response.json().then((data) => {
        const dataUrl = data.url
        if (photoLeft) {
          // const newPhoto = photoLeft.style.backgroundImage = `url("${data.url}")`
          const newPhoto =  "<img src='" + dataUrl + "'>";
          photoLeft.innerHTML = newPhoto;
          console.log("data was", dataUrl)
          console.log(newPhoto)
        };
      })
  )
}
setInterval(function() {
   RefreshLeft();
}, 5000)

export { RefreshLeft }

