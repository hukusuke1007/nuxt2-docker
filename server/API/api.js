const express = require("express")
const router = express.Router()
router.get("/", (req, res) => {
  res.status(200).send("this is index")
})

router.get("/items/:id", (req, res) => {
  console.log(req.params)
  res.status(200).send(`items list is ${req.params.id}`)
})

module.exports = router
