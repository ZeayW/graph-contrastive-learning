from yellowbrick.text import TSNEVisualizer
import yellowbrick
from yellowbrick import download
from sklearn.feature_extraction.text import TfidfVectorizer
import os
from sklearn.datasets.base import Bunch
import torch as th
import pickle
def load_corpus(path):
    """
    Loads and wrangles the passed in text corpus by path.
    """

    # Check if the data exists, otherwise download or raise
    if not os.path.exists(path):
        yellowbrick.download.download_all('data')
        raise ValueError((
            "'{}' dataset has not been downloaded, "
            "use the yellowbrick.download module to fetch datasets"
        ).format(path))

    # Read the directories in the directory as the categories.
    categories = [
        cat for cat in os.listdir(path)
        if os.path.isdir(os.path.join(path, cat))
    ]

    files  = [] # holds the file names relative to the root
    data   = [] # holds the text read from the file
    target = [] # holds the string of the category

    # Load the data from the files in the corpus
    for cat in categories:
        for name in os.listdir(os.path.join(path, cat)):
            files.append(os.path.join(path, cat, name))
            target.append(cat)

            with open(os.path.join(path, cat, name), 'r',encoding='utf-8') as f:
                data.append(f.read())


    # Return the data bunch for use similar to the newsgroups example
    return Bunch(
        categories=categories,
        files=files,
        data=data,
        target=target,
    )


device = th.device("cuda" if th.cuda.is_available() else "cpu")
with open('../embedding/data.pkl','rb') as f:
    emebddings,labels = pickle.load(f)
print('embeddings:',emebddings[:10])
print('labels:',labels[:10])
emebddings.to(device)
labels.to(device)
#corpus = load_corpus('./data/hobbies')
# tfidf  = TfidfVectorizer()
# print(corpus.data[0])
# docs   = tfidf.fit_transform(corpus.data)
# labels = corpus.target
# print(docs.shape)
#
# print(len(labels))
tsne = TSNEVisualizer()
tsne.fit(emebddings, labels)
tsne.show()
tsne.poof()