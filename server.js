import express from 'express';

import { Pool } from 'pg';

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const pool = new Pool(
  {
    user: process.env.PSQL_USER,
    password: process.env.PSQL_PSWD,
    host: 'localhost',
    database: 'movies_db',
  },
  console.log(`Connected to movies_db database`)
);
