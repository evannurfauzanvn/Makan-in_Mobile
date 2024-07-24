import mysql from 'mysql2/promise';

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'Kolot123',
    database: 'makan-in',
});

export default pool;
