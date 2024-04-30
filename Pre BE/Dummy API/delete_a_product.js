// Deleting a product will not delete it into the server.
// It will simulate a DELETE request and will return deleted product with "isDeleted" & "deletedOn" keys

fetch('https://dummyjson.com/products/1', {
  method: 'DELETE',
})
.then(res => res.json())
.then(console.log);
            