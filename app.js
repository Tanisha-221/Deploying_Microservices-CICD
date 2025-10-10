const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('Hello Azure DevOps CI/CD!'));
app.get('/health', (req, res) => res.sendStatus(200));
const port = process.env.PORT || 80;
app.listen(port, () => console.log(`Server running on port ${port}`));