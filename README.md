# template-node-koa
NodeJS koa2 project template

## Features
- Muilt-CPU supports (cluster)
- Simple color log (console override)
- Add-to-use router(autoload files under 'router' folder)
- Exception handle
- Dockerfile within

## Init

`bash <(curl -sSL https://github.com/trawor/template-node-koa/raw/master/get.sh)`

## Start
Just add .js file to `router/`, like:

```javascript
const router = require('koa-router')({
  prefix: 'api',
});

module.exports = router;

router.get('/test', async (ctx) => {
  ctx.body = {
    msg: 'ok',
  };
});
```