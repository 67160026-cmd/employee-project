require("dotenv").config();

const express = require("express");
const pool = require("./db");

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

app.get("/api/v1/employees", async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM employees");

    res.status(200).json({
      message: "สำเร็จ",
      data: rows,
    });
  } catch (err) {
    console.error(err);

    res.status(500).json({
      error: {
        code: "INTERNAL_SERVER_ERROR",
        message: "เกิดข้อผิดพลาดภายในระบบ",
      },
    });
  }
});

app.listen(PORT, () => {
  console.log(`Server กำลังทำงานที่ http://localhost:${PORT}`);
});
