CREATE TABLE materias (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT
);

CREATE TABLE notas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    materia_id INTEGER,
    nota REAL,
    porcentaje INTEGER
);
