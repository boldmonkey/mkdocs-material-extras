FROM python:3.9.2-alpine3.13

COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip3 install -r requirements.txt

# Set working directory
WORKDIR /docs

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
