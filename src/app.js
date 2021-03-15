const express= require('express');
const mysql = require('mysql');
const app= express();
app.use(express.json()); 

const PORT= process.env.PORT || 3050;

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root",
    database: "toys_store"
  });

  //rutas:
  app.get('/', (req, res) => {
    const sql= 'SELECT * FROM products';
    connection.query(sql, (error, results) => {
        if (error) throw error;
        if (results.length > 0){
            res.json(results);
        }else{
            res.send('No se encuentran resultados...')
        }
    });
});
//comprobando conexión:
connection.connect( (err) => {
    if (err) throw err;
    console.log("Conexión exitosa!");
  });
  
  app.listen(PORT, () => console.log(`server runnig on port ${PORT}`));
