import sqlalchemy 
from dotenv import load_dotenv
import os 
from pprint import pprint  

load_dotenv()

engine = sqlalchemy.create_engine(os.environ['CONN_PARAM'])   
connection = engine.connect()  
metadata = sqlalchemy.MetaData()  
marinheiro = sqlalchemy.Table('Marinheiro', metadata, autoload_with=engine)  

##SELECT * FROM Cliente;  
query = sqlalchemy.select(marinheiro)  
result_proxy = connection.execute(query)  
  
result_set = result_proxy.fetchall() 
#result_set = result_proxy.fetchmany(5)
 
pprint(result_set)
