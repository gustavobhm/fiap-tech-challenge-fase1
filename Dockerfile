# Imagem base oficial do Python
FROM python:3.10-slim

# Evita que o Python gere arquivos .pyc e garante logs em tempo real
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Instala dependências de sistema essenciais para compiladores e bibliotecas de imagem
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ffmpeg \
    libsm6 \
    libxext6 \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copia e instala as dependências do Python primeiro (aproveita cache do Docker)
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copia todo o restante do projeto
COPY . .

# Expõe a porta do Jupyter Notebook
EXPOSE 8888

# Inicializa o Jupyter Server permitindo acesso remoto dentro do container
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
