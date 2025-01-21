import sqlalchemy
from dotenv import load_dotenv
import os  

load_dotenv()  
  
engine = sqlalchemy.create_engine(os.environ['CONN_PARAM']) 
connection = engine.connect()  
metadata = sqlalchemy.MetaData()  
  
newTable = sqlalchemy.Table('newTable', metadata, autoload_with=engine)  
  
query = sqlalchemy.insert(newTable).values(Id=1, name='Software Ninjaneer', salary=60000.00, active=True)  
result_proxy = connection.execute(query)  

connection.commit()
connection.close()