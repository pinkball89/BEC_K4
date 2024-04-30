// Updating a product will not update it into the server.
// It will simulate a PUT/PATCH request and will return the product with modified data


/* updating title of product with id 1 */
fetch('https://dummyjson.com/products/1', {
  method: 'PUT', /* or PATCH */
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    title: 'iPhone Galaxy +1'
  })
})
.then(res => res.json())
.then(console.log);