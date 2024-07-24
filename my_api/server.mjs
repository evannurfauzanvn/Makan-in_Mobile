import express from 'express';
const { json } = express;
import cors from 'cors';
import pool from './db.js';

const app = express();
const port = 3000;

app.use(json());
app.use(cors());

app.get('/api/profile', (req, res) => {
    res.json({
        name: "Nama Pengguna",
        phone: "Nomor Telepon",
        address: "Alamat"
    });
});

app.post('/api/login', async (req, res) => {
    const { email, password } = req.body;

    try {
        const connection = await pool.getConnection();

        const [rows] = await connection.execute(
            'SELECT * FROM customer WHERE email = ? AND password = ?',
            [email, password]
        );

        connection.release();

        if (rows.length > 0) {
            const customer = rows[0];
            res.json({
                message: 'Login berhasil',
                data: { name: customer.nama, email: customer.email, phone: customer.phone }
            });
        } else {
            res.status(401).json({ message: 'Email atau password salah' });
        }
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ message: 'Internal Server Error' });
    }
});


app.post('/api/register', async (req, res) => {
    const { name, email, phone, password } = req.body;

    try {
        const connection = await pool.getConnection();

        const [existingUser] = await connection.execute(
            'SELECT * FROM customer WHERE email = ?',
            [email]
        );

        if (existingUser.length > 0) {
            return res.status(400).json({ message: 'Email sudah terdaftar' });
        }

        await connection.execute(
            'INSERT INTO customer (email, nama, phone, password) VALUES (?, ?, ?, ?)',
            [email, name, phone, password]
        );

        connection.release();

        res.json({
            message: 'Data berhasil ditambah',
            data: { name, email, phone, password },
        });
    } catch (error) {
        console.error('Error:', error);
        res.status(500).json({ message: 'Internal Server Error' });
    }
});


app.listen(port, () => {
    console.log(`Server berjalan di http://localhost:${port}`);
});
