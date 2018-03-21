

url = 'http://localhost:3000/last-picture'

fetch(url, {
  credentials: 'same-origin'
})
  .then((response) => { response.json()
    console.log("response was", response);
  })
  .then((data) => {
    console.log("data was", data);
  });
