
const express = require('express');
const CheckinController = require('../controllers/CheckinController');

const router = express.Router();

router.get('/', CheckinController.getAllOfCurrentUser);
router.post('/', CheckinController.create);
router.delete('/:id', CheckinController.delete);

module.exports = router;
