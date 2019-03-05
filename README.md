# template-node-koa
NodeJS koa2 project template, start your koa in 5 secends!

![ezgif com-gif-maker](https://user-images.githubusercontent.com/72015/53785601-0da17a80-3f54-11e9-8503-60ba1e6bf67e.gif)

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
