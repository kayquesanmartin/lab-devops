# Usar uma imagem base oficial do Python
FROM python:3.9-slim
# Definir o diretório de trabalho
WORKDIR /app

COPY . /app

RUN pip install --upgrade pip && pip install -r requirements.txt

# Expor a porta 1313
EXPOSE 1313
# Comando para rodar a aplicação
CMD ["python", "app.py"]