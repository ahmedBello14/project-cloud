FROM python:3.9
WORKDIR /app
COPY cloud.py /app
COPY random_paragraphs.txt /app
RUN pip install nltk
RUN python -m nltk.downloader stopwords punkt
RUN pip install matplotlib wordcloud
CMD ["python", "cloud.py"]