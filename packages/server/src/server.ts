import express from 'express';
import bs from 'browser-sync';
// import {add} from '@app/module';

const PORT = 3000;
let app = express();

let bsClientScript = `
<script async src="http://localhost:3001/browser-sync/browser-sync-client.js?v=2.26.13"><\/script>
`;

app.get('/', (...[, res]) => {
    res.header('Content-Type: text/html');
    res.write('<html>');
    {
        res.write('<body>');
        res.write(`App works1!`);
        res.write(bsClientScript);
        res.write('</body>');
    }
    res.end('</html>');
});

app.listen(PORT);

console.log(`Server listening http://localhost:${PORT}`);

// console.log(add(1,1));

let bsync = bs.create();

bsync.init();

setTimeout(() => {
    bsync.reload();
}, 1000);