from yellowbrick.text import TSNEVisualizer
import yellowbrick
from yellowbrick import download

import torch as th
import pickle


device = th.device("cuda" if th.cuda.is_available() else "cpu")
with open('../embedding/data.pkl','rb') as f:
    emebddings,labels = pickle.load(f)

emebddings=emebddings.cpu().numpy()
labels=labels.cpu().numpy()
print('embeddings:',emebddings[:10])
print('labels:',labels[:10])
print(emebddings.shape,labels.shape)
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