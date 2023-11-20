const eCommerceModel = require("../models/eCommerceModel");


const getIndex = async (req, res) => {
    const categories = await eCommerceModel.getIndex();
    res.json(categories);
  };

  const getProducts =  async (req, res) => {
    const products = await eCommerceModel.getProducts();
    res.json(products);
  };
  
  const getProductsbyID= async (req, res) => {
    const id = parseInt(req.params.id);
    const ecommerce = await eCommerceModel.getProductsbyID(id);
    if (ecommerce) {
      res.json(ecommerce);
    } else {
      res.status(404).json({ message: "Categoría no encontrada" });
    }
  };

  const getProduct_InfobyID= async (req, res) => {
    const id = parseInt(req.params.id);
    const ecommerce = await eCommerceModel.getProduct_InfobyID(id);
    if (ecommerce) {
      res.json(ecommerce);
    } else {
      res.status(404).json({ message: "Producto no encontrado" });
    }
  };


  
 
  const createCategories= async (req, res) => {
    const createCategorie = await eCommerceModel.createCategories(req.body);
    if (createCategorie) {
      res.json(createCategorie);
    } else {
      res.status(500).json({ message: "Se rompió el servidor" });
    }
  };
  
 const postAccess= async (req, res) => {
  const newUser = await eCommerceModel.postAccess(req.body);
  if (newUser) {
    res.json(newUser);
  } else {
    res.status(500).json({ message: "Se rompió el servidor" });
  }
};

const postUser= async (req, res) => {
  const newInfo = await eCommerceModel.postUser(req.body);
  if (newInfo) {
    res.json(newInfo);
  } else {
    res.status(500).json({ message: "Se rompió el servidor" });
  }
};

const postInCart=  async (req, res) => {
  const addProduct = await eCommerceModel.postInCart(req.body);
  if (addProduct) {
    res.json(addProduct);
  } else {
    res.status(500).json({ message: "Se rompió el servidor" });
  }
};
  
  const getComments = async (req, res) => {
    const id = parseInt(req.params.id);
    const ecommerce = await eCommerceModel.getComments(id);
    if (ecommerce) {
      res.json(ecommerce);
    } else {
      res.status(404).json({ message: "Comentario no encontrado" });
    }
  };
  
const getUser = async (req, res) => {
  const id = parseInt(req.params.id);
  const ecommerce = await eCommerceModel.getUser(id);
  if (ecommerce) {
    res.json(ecommerce);
  } else {
    res.status(404).json({ message: "Usuario no encontrado" });
  }
};

const getAccessUser = async (req, res) => {
  
  const ecommerce = await eCommerceModel.getAccessUser(req.params.accessEmail);
  if (ecommerce) {
    res.json(ecommerce);
  } else {
    res.status(404).json({ message: "Usuario no encontrado" });
  }
};

  const getUserCart =  async (req, res) => {
    const ecommerce = await eCommerceModel.getUserCart(req.params.user);
    if (ecommerce) {
      res.json(ecommerce);
    } else {
      res.status(404).json({ message: "Carrito de compras no encontrado" });
    }
  };

  const deleteInCart =  async (req, res) => {
    const id = parseInt(req.params.id);
    const user = req.params.user;

    const ecommerce = await eCommerceModel.deleteInCart(id, user);
    if (ecommerce) {
      const result = await eCommerceModel.deleteInCart(parseInt(req.params.id));
  
      if (result) {
        res.json(ecommerce);
      } else {
        res.status(500).json({ message: "Se rompió el servidor" });
      }
    } else {
      res.status(404).json({ message: "Producto no encontrado" });
    }
  };
  
  const  updateUser = async (req, res) => {
    const id = req.params.user;
    const user = await eCommerceModel.getUser(id);
    if (user) {
      const updatedUser = await eCommerceModel.updateUser(parseInt(req.params.id), {
        ...user,
        ...req.body,
      });
  
      if (updatedUser) {
        res.json(updatedUser);
      } else {
        res.status(500).json({ message: "Se rompió el servidor" });
      }
    } else {
      res.status(404).json({ message: "Usuario no encontrado" });
    }
  };



  module.exports = {
    getIndex,
    getProducts,
    createCategories,
    getProductsbyID,
    getProduct_InfobyID,
getComments,
postAccess,
postUser,
getAccessUser,
updateUser,
postInCart,
getUser,
getUserCart,
deleteInCart
  };