mkdir -p ~/.streamlit/

echo "\
[server]\n\
port = $PORT\n\
enableCORS = false\n\
headless = true\n\
\n\
" > ~/.streamlit/config.toml

# Install dependencies
pip install -r requirements.txt

# Download NLTK data
python -m nltk.downloader punkt
