import sqlalchemy 
from dotenv import load_dotenv
import os 
from pprint import pprint 

load_dotenv()

engine = sqlalchemy.create_engine(os.environ['CONN_PARAM'])  
connection = engine.connect()  
metadata = sqlalchemy.MetaData()  
barco = sqlalchemy.Table('barco', metadata, autoload_with=engine)
marinheiro =  sqlalchemy.Table('Marinheiro', metadata, autoload_with=engine)

##SELECT * FROM barco WHERE nomeBarco = "Interlake";
#query = sqlalchemy.select(barco).where(barco.columns.nomeBarco == 'Interlake')

##SELECT * FROM barco WHERE nomeBarco IN ("Interlake", "Marine");
#query = sqlalchemy.select(barco).where(barco.columns.nomeBarco.in_(["Interlake", "Marine"]))

##SELECT * FROM Marinheiro WHERE idade < 40 AND avaliacao = "bom";
#query = sqlalchemy.select(marinheiro).where(sqlalchemy.and_(marinheiro.columns.idade < 40, marinheiro.columns.avaliacao == "bom"))

##SELECT * FROM Marinheiro WHERE idade < 40 AND NOT avaliacao = "bom";
#query = sqlalchemy.select(marinheiro).where(sqlalchemy.and_(marinheiro.columns.idade < 40, marinheiro.columns.avaliacao != "bom"))

##SELECT * FROM Marinheiro ORDER BY nomeMarinheiro ASC;
#query = sqlalchemy.select(marinheiro).order_by(sqlalchemy.asc(marinheiro.columns.nomeMarinheiro))

##SELECT SUM(idade) FROM Marinheiro;
query = sqlalchemy.select(sqlalchemy.func.sum(marinheiro.columns.idade))

result_proxy = connection.execute(query)    
result_set = result_proxy.fetchall() 
pprint(result_set)
