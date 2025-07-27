FROM squidfunk/mkdocs-material

# Optional: set working directory
WORKDIR /docs

# Copy requirements and install custom Python packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && rm requirements.txt

# Copy your entire project (unless you're mounting with Docker run)
COPY . .

# Default command
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
