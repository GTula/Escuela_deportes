# db_connection.py
import pyodbc

class DBConnection:
    @staticmethod
   
    def conectar_bd():
        try:
            conexion = pyodbc.connect(
                'DRIVER={SQL Server};'
                'SERVER=LAPTOP-K7AU665T;'  
                'DATABASE=Obligatorio;'      
                'Trusted_Connection=yes;' 
            )
            return conexion
        except pyodbc.Error as e:
            print("Error al conectar con la base de datos:", e)
            return None
        
        
        