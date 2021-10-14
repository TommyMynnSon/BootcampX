const { Pool } = require('pg');

const pool = new Pool({
  user: 'tommyson',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name AS teacher,
  cohorts.name AS cohort
FROM assistance_requests
  JOIN teachers ON assistance_requests.teacher_id = teachers.id
  JOIN students ON assistance_requests.student_id = students.id
  JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2]}';
`)
  .then(res => {
    res.rows.forEach(record => {
      console.log(`${record.cohort}: ${record.teacher}`);
    });
  })
  .catch(err => console.error('query error', err.stack));

