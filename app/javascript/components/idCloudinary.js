function idCloudinary() {

  const idCloud = document.getElementById("idCloud");
  var url = 'https://api.cloudinary.com/v1_1/dbhmjj2co/resources/image/upload'
  // var url = 'https://novapp.live/last-picture'

  fetch(url, {
    credentials: 'same-origin'
  })

  .then(response =>
      response.json().then((data) => {
        console.log(data)
        // const dataUrl = data.url
        // if (photoLeft) {
        //   const newPhoto = photoLeft.style.backgroundImage = `url("${data.url}")`
        //   console.log("data was", data.url)
        //   console.log(newPhoto)
        // };
      })
  )
}


export { idCloudinary }

