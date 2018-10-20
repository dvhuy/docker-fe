const chalk = require('chalk');
const jsonServer = require('json-server');
const server = jsonServer.create();
const router = jsonServer.router('./data/dummy-db.json');
const middlewares = jsonServer.defaults();

const port = process.env.PORT || 8080;
const host = process.env.HOST || 'localhost';

server.use(middlewares);
server.use(router);
server.listen(port, host, () => {
  console.warn(`JSON Server is running at PORT is ${chalk.red(port)} & HOST is ${chalk.red(host)}`);
});