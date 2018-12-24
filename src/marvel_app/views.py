from flask import request,redirect,render_template
from . import api_bd
from . import app


@app.route('/')
def home():
    return render_template('base.html')



@app.route('/list/<table>')
@app.route('/list/<table>/<pk>')
def get_table_list(table,pk=None):
    data = api_bd.select_objects(table,pk,dictionary=True)
    return render_template('list_personaje.html',data=data,table=table)


@app.route('/get/<table>')
@app.route('/get/<table>/<pk>')
def get_object_info(table,pk=None):
    if table=='Personaje_Competidor':
        data = api_bd.select_objects(table,pk,dictionary=True) 
        if data: 
            data = data[0]
            if data.get('color_ojos_id'):
                data['color_ojos'] = api_bd.select_id_plus_name('Color',pk=data.get('color_ojos_id'),dictionary=True)[0] #for href later
            else: data['color_ojos'] = None
            if data.get('color_pelo_id'):
                data['color_pelo'] = api_bd.select_id_plus_name('Color',pk=data.get('color_pelo_id'),dictionary=True)[0]
            else: data['color_pelo'] = None
            if data.get('id_universo'):
                data['universo'] = api_bd.select_id_plus_name('Universo',pk=data.get('color_pelo_id'),dictionary=True)[0]
            else: data['universo'] = None
            if data.get('id_lugar_nacimiento'):
                data['lugar_nacimiento'] = api_bd.select_recursively_child_parent(
                'Lugar',
                data.get('id_lugar_nacimiento'),
                'id','nombre',
                dictionary=True
                )
            else:
                data['lugar_nacimiento'] = None
            otros_alias = api_bd.select_query(f""" 
            SELECT id,nombre 
            FROM Alias
            WHERE id_competidor={pk}
            """,dictionary=True)
            if otros_alias:
                data['otros_alias'] = otros_alias
            else:
                data['otros_alias'] = None
                
            profesiones = api_bd.select_query(f""" 
            SELECT a.id,a.nombre 
            FROM Profesion a
            WHERE a.id 
            IN (
            SELECT id_profesion 
            FROM Profesion_Competidor
            WHERE id_competidor={pk}
            )
            """,dictionary=True)

            pc =  api_bd.select_objects('Personaje_Competidor',None,'id')
            pnc =  api_bd.select_objects('Personaje_NoCompetidor',None,'id')
         
            parientes_1 = api_bd.select_query(f""" 
            SELECT a.id,a.nombre 
            FROM  Personaje_Competidor a
            WHERE a.id 
            IN ({','.join(str(p) for p in pc[0])})
            AND (
            a.id  IN (
                SELECT id_competidor1
                FROM Relacion 
                WHERE tipo_relacion='pariente'
            )
            OR a.id IN (
                SELECT id_personaje1
                FROM Relacion 
                WHERE tipo_relacion='pariente'
            ))
            """,dictionary=True)
            
            parientes_2 = api_bd.select_query(f""" 
            SELECT a.id,a.nombre 
            FROM  Personaje_Competidor a
            WHERE a.id 
            IN ({','.join(str(p) for p in pnc[0])})
            AND (
            a.id  IN (
                SELECT id_competidor1
                FROM Relacion 
                WHERE tipo_relacion='pariente'
            )
            OR a.id IN (
                SELECT id_personaje1
                FROM Relacion 
                WHERE tipo_relacion='pariente'
            ))
            """,dictionary=True)

            afiliaciones = api_bd.select_query(f""" 
            SELECT id,nombre 
            FROM Afiliacion
            WHERE id IN
            (
                SELECT id_afiliacion
                FROM Afiliacion_Personaje
                WHERE {pk}=id_competidor
            )
            """,dictionary=True)


            if afiliaciones:
                data['afiliaciones'] = afiliaciones
            else:
                data['afiliaciones'] = None


            if profesiones:
                data['profesiones'] = profesiones
            else:
                data['profesiones'] = None
            if parientes_1:
                data['parientes_1'] = parientes_1
            else:
                data['parientes_1'] = None
            if parientes_2:
                data['parientes_2'] = parientes_2
            else:
                data['parientes_2'] = None
            
            


        return render_template('competidor_info.html',data=data,table=table)

    elif table=='Afiliacion':
        data = api_bd.select_query(f""" 
        SELECT id,nombre,descripcion 
        FROM Afiliacion
        WHERE id={pk}
        """,dictionary=True)[0]
        bases_operaciones = api_bd.select_query(f""" 
        SELECT id,nombre 
        FROM Base_Operacion
        WHERE id IN (
            SELECT id_base
            FROM Base_Afiliacion
            WHERE id_afiliacion = {pk}

        )
        """,dictionary=True)
        
        data['bases_operaciones'] = bases_operaciones or None
        return render_template('afiliacion_info.html',data=data,table=table)

    elif table=='Base_Operacion':

        data = api_bd.select_query(f""" 
        SELECT * 
        FROM Base_Operacion
        WHERE id={pk}
        """,dictionary=True)[0]
        if data['id_universo']:
            universo = api_bd.select_query(f""" 
            SELECT id,nombre 
            FROM Universo
            WHERE id={data['id_universo']}
            
            """,dictionary=True)
            data['universo'] = universo[0]

        if data['id_lugar']:

            localizacion = api_bd.select_recursively_child_parent(
                'Lugar',
                data.get('id_lugar'),
                'id','nombre',
                dictionary=True
                )
            data['localizacion'] = localizacion
            

        return render_template('base_operacion_info.html',data=data,table=table)

    else:
        data = api_bd.select_objects(table,pk,'nombre','descripcion',dictionary=True)[0]
        return render_template('general_info.html',data=data,table=table)

    