const express = require("express");
const eCommerceRouter = express.Router();

const eCommerceController = require("../controllers/eCommerceControllers");

eCommerceRouter.get("/categories", eCommerceController.getIndex)
eCommerceRouter.get("/user/:id", eCommerceController.getUser)
eCommerceRouter.get("/products", eCommerceController.getProducts)
eCommerceRouter.get("/products/:id", eCommerceController.getProductsbyID)
eCommerceRouter.get("/product-info/:id", eCommerceController.getProduct_InfobyID)
eCommerceRouter.get("/product-info/comments/:id", eCommerceController.getComments)
eCommerceRouter.get("/user_cart/:user", eCommerceController.getUserCart)
eCommerceRouter.get("/user/access/:accessEmail", eCommerceController.getAccessUser)
eCommerceRouter.post("/user/access", eCommerceController.postAccess)
eCommerceRouter.post("/user/", eCommerceController.postUser)
eCommerceRouter.post("/product-info/", eCommerceController.postInCart)
eCommerceRouter.post("/", eCommerceController.createCategories)
eCommerceRouter.delete("/user_cart/trash/:user/:id", eCommerceController.deleteInCart)
eCommerceRouter.put("/user/:id", eCommerceController.updateUser)

module.exports = eCommerceRouter;