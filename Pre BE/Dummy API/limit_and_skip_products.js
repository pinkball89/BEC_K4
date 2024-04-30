// You can pass "limit" and "skip" params to limit and skip the results for pagination, and use limit=0 to get all items.
// You can pass "select" as query params with comma-separated values to select specific data.

fetch('https://dummyjson.com/products?limit=10&skip=10&select=title,price')
.then(res => res.json())
.then(console.log);