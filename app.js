const express = require('express')
const app = express()

app.get('/', (req, res) => {
    res.send('Deepfactor Demo Application')

})

var port = process.env.PORT || '3000';
app.listen(port, () => console.log(`Deepfactor Demo Application`))


