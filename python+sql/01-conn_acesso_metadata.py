##Connecting to the Database
import sqlalchemy
from dotenv import load_dotenv
import os 

load_dotenv()  # This line brings all environment variables from .env into os.environ

#engine = sqlalchemy.create_engine('postgresql://username:password@localhost/mydatabase')
engine = sqlalchemy.create_engine(os.environ['CONN_PARAM'])  
connection = engine.connect()  

##Accessing Database Metadata Information
connection = engine.connect()  
metadata = sqlalchemy.MetaData()  
marinheiro = sqlalchemy.Table('Marinheiro', metadata, autoload_with=engine)  

##Mostra o objeto marinheiro tabela marinheiro e suas colunas e chaves 
print(marinheiro.columns.keys())  
print(repr(metadata.tables['Marinheiro']))
