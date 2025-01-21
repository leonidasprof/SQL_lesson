import sqlalchemy 
from dotenv import load_dotenv
import os  

load_dotenv()  
  
engine = sqlalchemy.create_engine(os.environ['CONN_PARAM'])  
connection = engine.connect()  
metadata = sqlalchemy.MetaData()  
  
newTable = sqlalchemy.Table('newTable', metadata, autoload_with=engine)  
  
query = sqlalchemy.delete(newTable).where(newTable.columns.salary < 100000)  
results = connection.execute(query)

connection.commit()
connection.close()
