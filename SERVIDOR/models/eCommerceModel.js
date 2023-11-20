const mariadb = require("mariadb");

const pool = mariadb.createPool({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "ecommerce",
  connectionLimit: 5,
});

const getIndex = async () => {
    let conn;
    try {
      conn = await pool.getConnection();
      const rows = await conn.query(
        "SELECT id, name, description,productCount,imgSrc FROM categories"
      );
  
      return rows;
    } catch (error) {
    } finally {
      if (conn) conn.release(); 
    }
    return false;
  };

  const getProducts = async () => {
    let conn;
    try {
      conn = await pool.getConnection();
      const rows = await conn.query(
        `SELECT 
        products.id AS product_id,
        products.name AS product_name,
        products.description AS product_description,
        products.cost,
        products.currency,
        products.soldCount,
        products.image,
        categories.id AS category_id,
        categories.name AS category_name
    FROM 
        products
    JOIN 
        categories ON products.catID = categories.id;
        `)
  
      return rows;
    } catch (error) {
    } finally {
      if (conn) conn.release(); 
    }
    return false;
  };

  const getProductsbyID = async (id) => {
    let conn;
    try {
      conn = await pool.getConnection();
      const rows = await conn.query(
        `SELECT 
        products.id AS product_id,
        products.name AS product_name,
        products.description AS product_description,
        products.cost,
        products.currency,
        products.soldCount,
        products.image,
        categories.id AS category_id,
        categories.name AS category_name
    FROM 
        products
    JOIN 
        categories ON products.catID = categories.id

        WHERE categories.id=?`,
        [id])
  
      return rows;
    } catch (error) {
    } finally {
      if (conn) conn.release(); 
    }
    return false;
  };

  const getProduct_InfobyID= async (id) => {
    let conn;
    try {
      conn = await pool.getConnection();
      const rows = await conn.query(
        `SELECT 
        product_info.id AS id,
        products.name AS name,
        products.description AS description,
        products.cost,
        products.currency,
        products.soldCount,
        product_info.images,
        product_info.related_Products,
        categories.name AS category_name
    FROM 
        product_info
        JOIN 
        products ON product_info.id_Product = products.id
        JOIN 
        categories ON products.catID = categories.id
    WHERE 
        product_info.id = ?`,
        [id])
  
      return rows;
    } catch (error) {
    } finally {
      if (conn) conn.release(); 
    }
    return false;
  };

const getComments = async (id) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const rows = await conn.query(
      `SELECT 
      user_comments.product,
      user_comments.score,
      user_comments.description,
     user_comments.user,
      user_comments.dateTime,
      user_comments.id
  FROM 
      user_comments
  WHERE 
      user_comments.product = ?`,
      [id])

    return rows;
  } catch (error) {
  } finally {
    if (conn) conn.release(); 
  }
  return false;
};

const getUser= async (id) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const rows = await conn.query(
      `SELECT 
      user.name,
     user.middleName,
     user.lastName,
     user.lastName2,
     user.accessEmail,
     user.contactEmail,
     user.phone
  FROM 
      user
  WHERE 
      user.id = ?`,
      [id])

    return rows;
  } catch (error) {
  } finally {
    if (conn) conn.release(); 
  }
  return false;
};

const getAccessUser= async (accessEmail) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const rows = await conn.query(
      `SELECT 
     usermail.accessEmail,
     usermail.password
  FROM 
      usermail
  WHERE 
      usermail.accessEmail = ?`,
      [accessEmail])

    return rows;
  } catch (error) {
  } finally {
    if (conn) conn.release(); 
  }
  return false;
};

const getUserCart= async (user) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const rows = await conn.query(
      `SELECT 
      user_cart.user,
     user_cart.articles
  FROM 
      user_cart
  WHERE 
      user_cart.user = ?`,
      [user])

    return rows;
  } catch (error) {
  } finally {
    if (conn) conn.release(); 
  }
  return false;
};


  
  const createCategories = async (categorie) => {
    let conn;
    try {
      conn = await pool.getConnection();
      const response = await conn.query(
        `INSERT INTO categories(id, name, description, productCount,imgSrc) VALUES(?, ?, ?, ?, ?)`,
        [categorie.id, categorie.name, categorie.description, categorie.productCount, categorie.imgSrc]
      );
  
      return { id: parseInt(response.insertId), ...categorie};
    } catch (error) {
      console.log(error);
    } finally {
      if (conn) conn.release(); 
    }
    return false;
  };
  
const postAccess = async (logUser) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const response = await conn.query(
      `INSERT INTO usermail(accessEmail, password) VALUES(?, ?)`,
      [logUser.accessEmail,
        logUser.password]
    );

    return { id: parseInt(response.insertId), ...logUser};
  } catch (error) {
    console.log(error);
  } finally {
    if (conn) conn.release(); 
  }
  return false;
};


const postUser = async (user) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const response = await conn.query(
      `INSERT INTO user(name, middleName, lastName, lastName2, accessEmail, contactEmail, phone) VALUES(?, ?, ?, ?, ?, ?, ?)`,
      [user.name, user.middleName, user.lastName, user.lastName2, user.accessEmail, user.contactEmail, user.phone]
    );

    return { id: parseInt(response.insertId), ...user};
  } catch (error) {
    console.log(error);
  } finally {
    if (conn) conn.release(); 
  }
  return false;
};

const postInCart = async (product) => {
  let conn;
  try {
    conn = await pool.getConnection();
    const response = await conn.query(
      `INSERT INTO user_cart(user,articles,id) VALUES(?, ?,?)`,
      [product.user,
        product.articles, 
      product.id]
    );

    return { id: parseInt(response.insertId), ...product};
  } catch (error) {
    console.log(error);
  } finally {
    if (conn) conn.release(); 
  }
  return false;
};

  
  const deleteInCart = async (id, user) => {
    let conn;
    try {
      conn = await pool.getConnection();
      await conn.query("DELETE FROM user_cart WHERE id= ? AND user=?", [id, user]);

      return true;
    } catch (error) {
      console.log(error);
    } finally {
      if (conn) conn.release(); //release to pool
    }
    return false;
  };
  

  const updateUser = async (id, user) => {
    let conn;
    try {
      conn = await pool.getConnection();
      await conn.query(
        `UPDATE user SET name=?, middleName=?, lastName=?, lastName2=?, accessEmail=?, contactEmail=?, phone=? WHERE id=?`,
        [user.name, user.middleName, user.lastName, user.lastName2, user.accessEmail, user.contactEmail, user.phone,id]
      );
  
      return { id, ...user };
    } catch (error) {
      console.log(error);
    } finally {
      if (conn) conn.release(); //release to pool
    }
    return false;
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
  