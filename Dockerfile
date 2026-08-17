# Usa uma imagem oficial do Python, versão slim para ser mais leve
FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências primeiro (para otimizar o cache do Docker)
COPY requirements.txt .

# Instala as dependências listadas no requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Instala o Jupyter, caso não esteja no seu requirements.txt
RUN pip install jupyter

# Copia todo o restante dos arquivos do projeto para o container
COPY . .

# Expõe a porta padrão que o Jupyter Notebook usa
EXPOSE 8888

# Comando para iniciar o Jupyter Notebook automaticamente quando o container rodar
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]