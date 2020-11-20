import express from 'express';
import {add} from '@app/module';

const PORT = 3000;
let app = express();

app.get('/', (req, res) => {
    res.end('App works!');
});

app.listen(PORT);

console.log(`Server listening http://localhost:${PORT}`);

console.log(add(1,1));
