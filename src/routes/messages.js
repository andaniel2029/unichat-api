const router = require('express').Router();

module.exports = (helpers) => {

  router.get('/messages/:room_id', (req, res) => {

    helpers
      .getMessagesInRoom(req.params.room_id)
      .then(data => {
        res.send(data);
      })
      .catch(error => console.log(error));
  });


  return router;
}