import sqlalchemy
from dotenv import load_dotenv
import os  

load_dotenv()   
  
engine = sqlalchemy.create_engine(os.environ['CONN_PARAM']) 
connection = engine.connect()  
metadata = sqlalchemy.MetaData()  
  
newTable = sqlalchemy.Table('newTable', metadata, autoload_with=engine)  
  
query = sqlalchemy.insert(newTable)  
new_records = [{'Id':'2', 'name':'record1', 'salary':80000, 'active':False},  
               {'Id':'3', 'name':'record2', 'salary':70000, 'active':True}]  

result_proxy = connection.execute(query,new_records)  

connection.commit()
connection.close()