from mysql import connector
from mysql.connector import errors
from contextlib import closing
from . import app
from contextlib import contextmanager


def get_connection_marvelBD():
    try:
        user = 'tomas'
        db_name = 'marvel'
        conn = connector.connect(user=user,
                                database=db_name)
    except connector.Error as e:
        print(e)
    else:
        return conn

def insert_query(table,**kwargs):
    with closing(get_connection_marvelBD()) as conn:
        try:
            cur = conn.cursor()
           
            cur.execute(f"""
            insert into {table} {tuple(kwargs.keys())} 
            values ({','.join('%s' for var in kwargs)})
            """.replace(r"'",''),params=tuple(kwargs.values()))
            
        except connector.Error as e:
            conn.rollback()
            raise(e)
        else:
            conn.commit()
        finally:
            cur.close()


def select_query(query,**cursor_kwargs):
    with closing(get_connection_marvelBD()) as conn:
        try:
            
            cur = conn.cursor(**cursor_kwargs)
            cur.execute(query)
            data = cur.fetchall()
            
            return data
        except connector.Error as e:
            raise(e)
        finally:
            cur.close()


def select_objects(table,pk=None,*fetch_atributtes,**cursor_kwargs):

    attrs = ','.join(attr for attr in fetch_atributtes)
    return select_query(f""" 
    SELECT {attrs or '*'} 
    FROM {table}
    {f'WHERE id={pk}' if pk else ''}
    """,**cursor_kwargs)

def select_recursively_child_parent(table,child_pk,*fetch_atributtes,**cursor_kwargs):
    if 'dictionary' not in cursor_kwargs: cursor_kwargs['dictionary'] = True
    data = []

    hijo = select_objects(table,child_pk,*fetch_atributtes,'id_padre',**cursor_kwargs)
    if hijo:
        hijo = select_objects(table,child_pk,*fetch_atributtes,'id_padre',**cursor_kwargs)[0]
        data.append(hijo)
        if hijo['id_padre']:
            id_padre = hijo['id_padre'] 
            while id_padre:
                padre = select_objects(table,id_padre,*fetch_atributtes,'id_padre',**cursor_kwargs)[0]
                data.append(padre)
                id_padre = padre['id_padre']
    return data

def select_id_plus_name(table,pk=None,**cursor_kwargs): 
    return select_objects(table,pk,'id','nombre',**cursor_kwargs)


