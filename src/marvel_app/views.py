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
                data['universo'] = api_bd.select_id_plus_name('Universo',pk=data.get('id_universo'),dictionary=True)[0]
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

            parientes = api_bd.select_query(f""" 
            SELECT 
            id_competidor_padre,
            id_competidor_hijo,
            id_personaje_padre,
            id_personaje_hijo,
            tipo_relacion,
            tipo_relacion_pariente 
            FROM Relacion
            WHERE (id_competidor_padre={pk}
            OR  id_competidor_hijo={pk})
            AND tipo_relacion='pariente'
            """,dictionary=True)
            if parientes:

                for rela in parientes:
                    if rela['id_competidor_padre']:
                        rela['padre'] = api_bd.select_query(
                            f""" 
                            SELECT id,nombre,nombre_real,apellido_real,genero,id_universo
                            FROM Personaje_Competidor
                            WHERE id={rela['id_competidor_padre']}
                            """,dictionary=True)[0]
                        rela['padre_tipo'] = 'pc'
                    else:
                        rela['padre'] = api_bd.select_query(
                            f""" 
                            SELECT id,nombre,nombre_real,apellido_real,genero,id_universo
                            FROM Personaje_NoCompetidor
                            WHERE id={rela['id_personaje_padre']}
                            """,dictionary=True)[0]
                        rela['padre_tipo'] = 'pnc'

                    if rela['id_competidor_hijo']:
                            rela['hijo'] = api_bd.select_query(
                            f""" 
                            SELECT id,nombre,nombre_real,apellido_real,genero,id_universo
                            FROM Personaje_Competidor
                            WHERE id={rela['id_competidor_hijo']}
                            """,dictionary=True)[0]
                            rela['hijo_tipo'] = 'pc'
                    else:
                        rela['hijo'] = api_bd.select_query(
                        f""" 
                        SELECT id,nombre,nombre_real,apellido_real,genero,id_universo
                        FROM Personaje_NoCompetidor
                        WHERE id={rela['id_personaje_hijo']}
                        """,dictionary=True)[0]
                        rela['hijo_tipo'] = 'pnc'

                    if  str(rela['padre']['id_universo']) == str(data['id_universo']) and  str(rela['padre']['nombre']) == str(data['nombre']):
                        genero = rela['hijo']['genero']
                        if rela['tipo_relacion_pariente']=='abuelo':
                            if genero=='F':
                                rela['tipo_relacion_pariente']='nieta'  
                            else:
                                 rela['tipo_relacion_pariente']='nieto'
                        elif rela['tipo_relacion_pariente']=='tio':
                            if genero=='F':
                                rela['tipo_relacion_pariente']='sobrina' 
                            else: 
                                rela['tipo_relacion_pariente']='sobrino'
                        elif rela['tipo_relacion_pariente']=='padre':
                            if genero=='F':
                                rela['tipo_relacion_pariente']='hija'  
                            else:
                                 rela['tipo_relacion_pariente']='hijo'
                        rela['pariente'] = rela['hijo']
                        rela['tipo'] = rela['hijo_tipo']
          
                    else:
                        genero = rela['padre']['genero']
                        if rela['tipo_relacion_pariente']=='abuelo' and genero=='F': 
                            rela['tipo_relacion_pariente']='abuela'
                        elif rela['tipo_relacion_pariente']=='tio' and genero=='F': 
                            rela['tipo_relacion_pariente']='tia'
                        elif rela['tipo_relacion_pariente']=='padre' and genero=='F': 
                            rela['tipo_relacion_pariente']='madre'
                        elif rela['tipo_relacion_pariente']=='hermano' and genero=='F': 
                            rela['tipo_relacion_pariente']='hermana'
                        elif rela['tipo_relacion_pariente']=='primo' and genero=='F': 
                            rela['tipo_relacion_pariente']='prima'
                        rela['pariente'] = rela['padre'] 
                        rela['tipo'] = rela['padre_tipo']
                        
                   
                        
                   
                    
            data['parientes'] = parientes or None
                        

            if afiliaciones:
                data['afiliaciones'] = afiliaciones
            else:
                data['afiliaciones'] = None


            if profesiones:
                data['profesiones'] = profesiones
            else:
                data['profesiones'] = None

            habilidades = api_bd.select_query(f""" 
            SELECT ha.id,ha.nombre,comp.valor
            
            FROM Habilidad ha,Habilidad_Competidor comp
            WHERE comp.id_competidor={pk}
            AND ha.id =  comp.id_habilidad

            
            """,dictionary=True)
            for hab in habilidades:
                if hab['valor']<4:
                    hab['width'] = int((hab['valor'] + 1 )* 10)
                elif hab['valor']<6:
                    hab['width'] = int((hab['valor'] + 2 )* 10)
                else:
                    hab['width'] = int((hab['valor'] + 3 )* 10)
                print( hab['valor'])
                print( hab['width'])
            data['habilidades'] = habilidades

            poderes = api_bd.select_query(
                f""" 
                SELECT id,nombre,descripcion 
                FROM Poder
                WHERE id in (
                    SELECT id_poder
                    FROM  Poder_Competidor
                    WHERE id_competidor={pk}
                )
                """,
                dictionary=True
            )
            data['poderes'] = poderes or None

            
        


        return render_template('competidor_info.html',data=data,table=table)

    elif table=='Personaje_NoCompetidor':
        data = api_bd.select_objects(table,pk,dictionary=True) 
        if data: 
            data = data[0]
            if data.get('id_universo'):
                data['universo'] = api_bd.select_id_plus_name('Universo',pk=data.get('id_universo'),dictionary=True)[0]
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
            parientes = api_bd.select_query(f""" 
            SELECT 
            id_competidor_padre,
            id_competidor_hijo,
            id_personaje_padre,
            id_personaje_hijo,
            tipo_relacion,
            tipo_relacion_pariente 
            FROM Relacion
            WHERE (id_personaje_padre={pk}
            OR  id_personaje_hijo={pk})
            AND tipo_relacion='pariente'
            """,dictionary=True)
            if parientes:

                for rela in parientes:
                    if rela['id_competidor_padre']:
                        rela['padre'] = api_bd.select_query(
                            f""" 
                            SELECT *
                            FROM Personaje_Competidor
                            WHERE id={rela['id_competidor_padre']}
                            """,dictionary=True)[0]
                        rela['padre_tipo'] = 'pc'
                    else:
                        rela['padre'] = api_bd.select_query(
                            f""" 
                            SELECT *
                            FROM Personaje_NoCompetidor
                            WHERE id={rela['id_personaje_padre']}
                            """,dictionary=True)[0]
                        rela['padre_tipo'] = 'pnc'

                    if rela['id_competidor_hijo']:
                            rela['hijo'] = api_bd.select_query(
                            f""" 
                            SELECT *
                            FROM Personaje_Competidor
                            WHERE id={rela['id_competidor_hijo']}
                            """,dictionary=True)[0]
                            rela['hijo_tipo'] = 'pc'
                    else:
                        rela['hijo'] = api_bd.select_query(
                        f""" 
                        SELECT *
                        FROM Personaje_NoCompetidor
                        WHERE id={rela['id_personaje_hijo']}
                        """,dictionary=True)[0]
                        rela['hijo_tipo'] = 'pnc'
                
                    if  str(rela['padre']['id_universo']) == str(data['id_universo']) and  str(rela['padre']['nombre_real']) == str(data['nombre_real']) and  str(rela['padre']['apellido_real']) == str(data['apellido_real']) and  str(rela['padre']['nombre']) == str(data['nombre']) and  str(rela['padre']['id_lugar_nacimiento']) == str(data['id_lugar_nacimiento']):
                        genero = rela['hijo']['genero']
                        if rela['tipo_relacion_pariente']=='abuelo':
                            if genero=='F':
                                rela['tipo_relacion_pariente']='nieta'  
                            else:
                                 rela['tipo_relacion_pariente']='nieto'
                        elif rela['tipo_relacion_pariente']=='tio':
                            if genero=='F':
                                rela['tipo_relacion_pariente']='sobrina' 
                            else: 
                                rela['tipo_relacion_pariente']='sobrino'
                        elif rela['tipo_relacion_pariente']=='padre':
                            if genero=='F':
                                rela['tipo_relacion_pariente']='hija'  
                            else:
                                 rela['tipo_relacion_pariente']='hijo'
                        
                        rela['pariente'] = rela['hijo']
                        rela['tipo'] = rela['hijo_tipo']
                       
                    else:
                        genero = rela['padre']['genero']
                        if rela['tipo_relacion_pariente']=='abuelo' and genero=='F': 
                            rela['tipo_relacion_pariente']='abuela'
                        elif rela['tipo_relacion_pariente']=='tio' and genero=='F': 
                            rela['tipo_relacion_pariente']='tia'
                        elif rela['tipo_relacion_pariente']=='padre' and genero=='F': 
                            rela['tipo_relacion_pariente']='madre'
                        elif rela['tipo_relacion_pariente']=='hermano' and genero=='F': 
                            rela['tipo_relacion_pariente']='hermana'
                        elif rela['tipo_relacion_pariente']=='primo' and genero=='F': 
                            rela['tipo_relacion_pariente']='prima'
                        rela['pariente'] = rela['padre'] 
                        rela['tipo'] = rela['padre_tipo']
                   
                        

            
            data['parientes'] = parientes or None

        return render_template('nocompetidor_info.html',data=data,table=table)

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

    elif table=='Universo':   
        data_pc = api_bd.select_query(f""" 
            SELECT id,nombre,nombre_real,apellido_real
            FROM Personaje_Competidor
            WHERE  id_universo={pk}
            """,dictionary=True)
        data_pnc = api_bd.select_query(f""" 
            SELECT id,nombre,nombre_real,apellido_real
            FROM Personaje_NoCompetidor
            WHERE  id_universo={pk}
            """,dictionary=True)
        data_bo = api_bd.select_query(f""" 
            SELECT id,nombre
            FROM Base_Operacion
            WHERE  id_universo={pk}
            """,dictionary=True)
        uni_info =  api_bd.select_objects(table,pk,'nombre','descripcion',dictionary=True)[0]
        data = {'pc':data_pc,'pnc':data_pnc,'bo':data_bo,'uni_info':uni_info}
        print(data)
        return render_template('universo_info.html',data=data,table=table)
    else:
        data = api_bd.select_objects(table,pk,'nombre','descripcion',dictionary=True)[0]
        return render_template('general_info.html',data=data,table=table)

    