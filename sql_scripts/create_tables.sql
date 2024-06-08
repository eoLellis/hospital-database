-- é aqui onde a gente vai programar TUDO UHUULLL!

-- OiIIIIIIRIS FGBOD FNJKNFDGBKJNBFDA

CREATE TABLE pacientes{
    id_paciente INT PRIMARY KEY,
    nome_paciente VARCHAR(100),
    idade_paciente INT,
    sexo_paciente VARCHAR(15),
    planoSaude_paciente VARCHAR(55),
    alergias TEXT
    diagnostico TEXT
}
CREATE TABLE funcionarios{
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    sexo VARCHAR(15),
    salario FLOAT,
    cargaHoraria VARCHAR(20)
}
CREATE TABLE secretarias{
    id_secretaria INT PRIMARY KEY,
    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
}
CREATE TABLE enfermeiros{
    id_enfermeiro INT PRIMARY KEY,
    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
}
CREATE TABLE medicos{
    id_medico INT PRIMARY KEY,
    crm VARCHAR(55),
    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)

}
CREATE TABLE exames{
    id_exame INT PRIMARY KEY,
    tipo_exame VARCHAR(100),
}
CREATE TABLE consultas{
    id_consulta INT PRIMARY KEY,
    data_consulta DATE,
    valor_consulta FLOAT,
    id_paciente INT,
    id_exames INT,
    id_medico INT,
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_exames) REFERENCES exames(id_exames)
}