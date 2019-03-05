const router = require('koa-router')({
  prefix: 'api',
});

module.exports = router;

router.get('/test', async (ctx) => {
  ctx.body = {
    msg: 'ok',
  };
});
