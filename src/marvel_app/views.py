from flask import request,redirect,render_template
from . import api_bd
from . import app
import datetime
import difflib
def get_inscrito_as_pc(inscrito_id):
    return api_bd.select_query(
                    f""" 
                    SELECT *
                    FROM Personaje_Competidor
                    WHERE id = (
                        SELECT a.id_competidor 
                        FROM Afiliacion_Personaje a
                        WHERE a.id = (
                            SELECT id_afiliacion_personaje FROM Inscrito
                            WHERE id={inscrito_id}
                        )

                    )
                    """,dictionary=True
    )[0]




@app.route('/')
def home():
    return render_template('base.html')

categorias_default = (
    'dioses',
    'mujeres',
    'hombres',
    'grupos',
    'personajes generales',
    )

@app.route('/categoria/<keyword>')
def categoria(keyword):
    keyword = str(keyword).lower()
    data_pc = None
    message = []
    for idx,cat in enumerate(categorias_default):
        if keyword==cat:
            if idx==0:
           

                data_pc = api_bd.select_query(f""" 
                SELECT id,nombre_real,apellido_real,nombre,id_universo
                FROM Personaje_Competidor
                WHERE id IN (
                    SELECT  id_competidor 
                    FROM C_P
                    WHERE id_categoria = (
                        SELECT id 
                        FROM Categoria 
                        WHERE nombre='{cat}'
                        LIMIT 1
                    )
                )
                ORDER BY nombre
                """,dictionary=True)
                

            

            elif idx==1:
                data_pc = api_bd.select_query(f""" 
                SELECT id,nombre_real,apellido_real,nombre,id_universo
                FROM Personaje_Competidor
                WHERE genero='F'
                ORDER BY nombre
                """,dictionary=True)

            elif idx==2:
                data_pc = api_bd.select_query(f""" 
                SELECT id,nombre_real,apellido_real,nombre,id_universo
                FROM Personaje_Competidor
                WHERE genero='M'
                ORDER BY nombre
                """,dictionary=True)
                break
            elif idx==3:
                data_pc = api_bd.select_query(f""" 
                SELECT p.id,nombre_real,p.apellido_real,p.nombre, ins.grupo,id_universo
                FROM Personaje_Competidor, Inscrito ins
                WHERE p.id=ins.id_competidor
                ORDER BY nombre
                """,dictionary=True)

                break
            elif idx==4:
                data_pc = api_bd.select_query(f""" 
                SELECT id,nombre_real,apellido_real,nombre,id_universo
                FROM Personaje_Competidor
                WHERE id  NOT IN (
                    SELECT  id_competidor 
                    FROM C_P
                    WHERE id_categoria = (
                        SELECT id 
                        FROM Categoria 
                        WHERE nombre='{cat}'
                        LIMIT 1
                    )
                )
                ORDER BY nombre
                """,dictionary=True)
            
      
             
    else:
        afiliaciones = api_bd.select_query(f""" 
                SELECT id,nombre 
                FROM Afiliacion
                """,dictionary=True)
        for afi in afiliaciones:

            if keyword==str(afi['nombre']).lower():
                data_pc = api_bd.select_query(f""" 
                SELECT id,nombre_real,apellido_real,nombre,id_universo
                FROM Personaje_Competidor
                WHERE id IN (
                    SELECT id_competidor 
                    FROM Afiliacion_Personaje
                    WHERE id_afiliacion={afi['id']}
                )
                ORDER BY nombre
                """,dictionary=True)
                
                break
        else:
            afiliaciones_nombres = [str(afi['nombre']).lower() for afi in afiliaciones]

            first = difflib.get_close_matches(keyword,afiliaciones_nombres)
            second = difflib.get_close_matches(keyword,categorias_default)
            
            if first:
                for x in first:
                    message.append(
                    x
                    )
            if second:
                for x in second:
                    message.append(
                    x
                    )
    if data_pc:
         for per in data_pc:
            if per['id_universo']:
                per['universo'] = api_bd.select_query(f"""
                SELECT nombre FROM Universo
                WHERE id={per['id_universo']}
                    """,dictionary=True)[0]['nombre']
            else:
                per['universo'] = None
  
    return render_template('categoria_personaje.html',data=data_pc,table='Personaje_Competidor',message=message,categoria=keyword) 







            
            



            








@app.route('/list/<table>')
@app.route('/list/<table>/<pk>')
def get_table_list(table,pk=None):
    
    if table=='Personaje_Competidor' or table=='Personaje_NoCompetidor':
        data = api_bd.select_query(f"""
    SELECT id,nombre_real,apellido_real,nombre,id_universo FROM {table}
    ORDER BY nombre,nombre_real
    """,dictionary=True)

        html = 'list_personaje.html'
        for per in data:
            if per['id_universo']:
                per['universo'] = api_bd.select_query(f"""
                SELECT nombre FROM Universo
                WHERE id={per['id_universo']}
                    """,dictionary=True)[0]['nombre']
            else:
                per['universo'] = None
 


    elif table=='Evento':
        data = api_bd.select_query(f"""
    SELECT * FROM {table}
    ORDER BY id
    """,dictionary=True)
        for evento in data:
            datetime.datetime
            evento['fecha_i'] = evento['fecha_hora_inicio'].strftime('%d/%m/%Y')
            evento['hora_i'] = evento['fecha_hora_inicio'].strftime('%I:%M %p')
        html = 'list_eventos.html'


    else:
        order = 'id'
        if table=='Afiliacion' or 'Base_Operacion':
            order = 'nombre'
        data = api_bd.select_query(f"""
    SELECT * FROM {table}
    ORDER BY {order}
    """,dictionary=True)
     
        html = 'list_general.html'
        for per in data:
            if per.get('id_universo'):
                per['universo'] = api_bd.select_query(f"""
                SELECT nombre FROM Universo
                WHERE id={per['id_universo']}
                    """,dictionary=True)[0]['nombre']
            else:
                per['universo'] = None



    return render_template(html,data=data,table=table)

   
    


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

            parafernalia = api_bd.select_query(f""" 
            SELECT nombre,descripcion,tipo
            FROM Parafernalia
            where id in 
            (SELECT id_parafernalia
            FROM Parafernalia_Competidor
            where
            id_competidor={pk}
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

            data['parafernalia'] = parafernalia or None
            data['armaduras'] = [par for par in parafernalia if par['tipo']=='armadura']
            data['armas'] = [par for par in parafernalia if par['tipo']=='arma']
            data['otros'] = [par for par in parafernalia if par['tipo']=='otro']
         
            
            id_enemigos = api_bd.select_query(f""" 
            SELECT 
            id_competidor_padre,
            id_competidor_hijo,
            id_personaje_padre,
            id_personaje_hijo,
            tipo_relacion
            FROM Relacion
            WHERE id_competidor_padre={pk}
            AND tipo_relacion='enemigo'
            """,dictionary=True)

            id_aliados = api_bd.select_query(f""" 
            SELECT 
            id_competidor_padre,
            id_competidor_hijo,
            id_personaje_padre,
            id_personaje_hijo,
            tipo_relacion
            FROM Relacion
            WHERE id_competidor_padre={pk}
            AND tipo_relacion='aliado'
            """,dictionary=True)

            enemigos = []
            aliados = []
            
            for ene in id_enemigos:
                rel = api_bd.select_query(
                        f""" 
                        SELECT id,nombre,nombre_real,apellido_real
                        FROM {'Personaje_Competidor' if ene['id_competidor_hijo'] else 'Personaje_NoCompetidor'}
                        WHERE id={ene['id_competidor_hijo'] if ene['id_competidor_hijo'] else ene['id_personaje_hijo']}
                        """,dictionary=True)[0]
                rel['tipo'] = 'pc' if ene['id_competidor_hijo'] else 'pnc'
                enemigos.append(rel)

            for ene in id_aliados:
                rel = api_bd.select_query(
                        f""" 
                        SELECT id,nombre,nombre_real,apellido_real
                        FROM {'Personaje_Competidor' if ene['id_competidor_hijo'] else 'Personaje_NoCompetidor'}
                        WHERE id={ene['id_competidor_hijo'] if ene['id_competidor_hijo'] else ene['id_personaje_hijo']}
                        """,dictionary=True)[0]
                rel['tipo'] = 'pc' if ene['id_competidor_hijo'] else 'pnc'
                aliados.append(rel)

                    




            data['enemigos'] = enemigos or None
            data['aliados'] = aliados or None





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

          


            indicador_poder = 0
            for hab in habilidades:
                if hab['valor']<4:
                    hab['width'] = int((hab['valor'] + 1 )* 10)
                elif hab['valor']<6:
                    hab['width'] = int((hab['valor'] + 2 )* 10)
                else:
                    hab['width'] = int((hab['valor'] + 3 )* 10)
                indicador_poder+=hab['valor']

            data['habilidades'] = habilidades
            data['indicador_poder'] = round(float(indicador_poder / len(habilidades)),1)

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

            ocupaciones = api_bd.select_query(
                f""" 
                SELECT id,nombre,descripcion 
                FROM Ocupacion
                WHERE id in (
                    SELECT id_Ocupacion
                    FROM  Ocupacion_Competidor
                    WHERE id_competidor={pk}
                )
                """,
                dictionary=True
            )
            data['ocupaciones'] = ocupaciones or None
        


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
        SELECT *
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
        id_integrantes_pc = api_bd.select_query(f""" 
        SELECT id_competidor,activo
        FROM Afiliacion_Personaje
        where id_competidor is not null and id_afiliacion={pk}
        
        """,dictionary=True)
        id_integrantes_pnc = api_bd.select_query(f""" 
        SELECT id_personaje,activo
        FROM Afiliacion_Personaje
        where id_personaje is not null and id_afiliacion={pk}
        
        """,dictionary=True)
 
        integrantes_activos = []
        integrantes_noactivos = []

        for per in id_integrantes_pc:
            persona = api_bd.select_query(f""" 
        SELECT nombre_real,apellido_real,nombre
        FROM Personaje_Competidor
        WHERE id={per['id_competidor']}
        
        """,dictionary=True)
            if persona:
                persona[0]['tipo'] = 'pc'
                persona[0]['id'] = per['id_competidor']
                if per['activo']:
                    integrantes_activos.append(persona[0])
                else:
                    integrantes_noactivos.append(persona[0])
        for per in id_integrantes_pnc:
            persona = api_bd.select_query(f""" 
        SELECT nombre_real,apellido_real,nombre
        FROM Personaje_NoCompetidor
        WHERE id={per['id_personaje']}
        
        """,dictionary=True)
            if persona:
                persona[0]['tipo'] = 'pnc'
                persona[0]['id'] = per['id_personaje']
                if per['activo']:
                    integrantes_activos.append(persona[0])
                else:
                    integrantes_noactivos.append(persona[0])

        data['integrantes_activos'] = integrantes_activos or None
        data['integrantes_noactivos'] = integrantes_noactivos or None


        
        


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
        uni_info =  api_bd.select_objects(table,pk,dictionary=True)[0]
        data = {'pc':data_pc,'pnc':data_pnc,'bo':data_bo,'uni_info':uni_info}

        return render_template('universo_info.html',data=data,table=table)


    elif table=='Lugar':
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

        uni_info =  api_bd.select_objects(table,pk,dictionary=True)[0]
        data = {'pc':data_pc,'pnc':data_pnc,'bo':data_bo,'uni_info':uni_info}

        return render_template('lugar_info.html',data=data,table=table)


    elif table=='Evento':
        data = {}
        evento = api_bd.select_objects(table,pk,'id','fecha_hora_inicio',dictionary=True)
        if evento:
            data['evento'] = evento[0]
            data['evento']['fecha_i'] = data['evento']['fecha_hora_inicio'].strftime('%d/%m/%Y')
            data['evento']['hora_i'] = data['evento']['fecha_hora_inicio'].strftime('%I:%M %p')
            grupos_uid = api_bd.select_query(f""" 
            SELECT DISTINCT grupo_id 
            FROM Inscrito 
            WHERE id_evento={pk};
            """,dictionary=True)
            grupos = []
            list_etapa1 = []
            list_etapa2 = []
            list_etapa3 = []
            for grupo_id in grupos_uid:

               
                inscritos = api_bd.select_query(
                    f""" 
                    SELECT *
                    FROM Inscrito
                    WHERE grupo_id= '{grupo_id['grupo_id']}'
                    """,dictionary=True)
                integrantes = []
                for ins in inscritos:
                    integrantes.append(api_bd.select_query(
                        f""" 
                        SELECT p.id,p.nombre,a.id as id_afi,a.nombre as nombre_afi
                        FROM Personaje_Competidor p, Afiliacion a
                        WHERE p.id = (
                            SELECT a.id_competidor 
                            FROM Afiliacion_Personaje a
                            WHERE a.id = {ins['id_afiliacion_personaje']}
                        )
                        AND a.id = (
                            SELECT a.id_afiliacion
                            FROM Afiliacion_Personaje a
                            WHERE a.id = {ins['id_afiliacion_personaje']}
                        )
                        """,dictionary=True
                    )[0])
                

                etapa1 = api_bd.select_query(
                    f""" 
                    SELECT * FROM
                    Enfrentamiento
                    WHERE tipo_etapa='1' AND id_inscrito1 IN ({','.join( str(ins['id']) for ins in inscritos) })
                    ORDER BY fecha_hora_inicio
                    """,dictionary=True
                )
                etapa2 = api_bd.select_query(
                    f""" 
                    SELECT * FROM
                    Enfrentamiento
                    WHERE tipo_etapa='2' AND id_inscrito1 IN ({','.join( str(ins['id']) for ins in inscritos) })
                    """,dictionary=True
                )
                etapa3 = api_bd.select_query(
                    f""" 
                    SELECT * FROM
                    Enfrentamiento
                    WHERE tipo_etapa='3' AND id_inscrito1 IN ({','.join( str(ins['id']) for ins in inscritos) })
                    """,dictionary=True
                )
                for enf in etapa1:
                    inscrito1 = get_inscrito_as_pc( enf['id_inscrito1'])
                    inscrito2 = get_inscrito_as_pc( enf['id_inscrito2'])
                    enf['inscrito1'] = inscrito1
                    enf['inscrito2'] = inscrito2
                    ganador = enf['ganador']
                   
                    if ganador:
                        enf['ganador_pc'] = enf['inscrito1'] if ganador== enf['id_inscrito1'] else enf['inscrito2']
                    else:
                        enf['ganador_pc'] = None
                    enf['fecha_i'] = enf['fecha_hora_inicio'].strftime('%d/%m/%Y')
                    enf['hora_i'] = enf['fecha_hora_inicio'].strftime('%I:%M %p')
                    
                    enf['duracion'] = (datetime.datetime.min + enf['duracion']).time()
                    enf['duracion'] = enf['duracion'].strftime("%M minutos con %S segundos")

                for enf in etapa2:
                    inscrito1 = get_inscrito_as_pc( enf['id_inscrito1'])
                    inscrito2 = get_inscrito_as_pc( enf['id_inscrito2'])
                    enf['inscrito1'] = inscrito1
                    enf['inscrito2'] = inscrito2
                    ganador = enf['ganador']
                    if ganador:
                        enf['ganador_pc'] = enf['inscrito1'] if ganador== enf['id_inscrito1'] else enf['id_inscrito2']
                    else:
                        enf['ganador_pc'] = None
                    enf['fecha_i'] = enf['fecha_hora_inicio'].strftime('%d/%m/%Y')
                    enf['hora_i'] = enf['fecha_hora_inicio'].strftime('%I:%M %p')
                    
                    enf['duracion'] = (datetime.datetime.min + enf['duracion']).time()
                    enf['duracion'] = enf['duracion'].strftime("%M minutos con %S segundos")


                for enf in etapa3:
                    inscrito1 = get_inscrito_as_pc( enf['id_inscrito1'])
                    inscrito2 = get_inscrito_as_pc( enf['id_inscrito2'])
                    enf['inscrito1'] = inscrito1
                    enf['inscrito2'] = inscrito2
                    ganador = enf['ganador']
                    if ganador:
                        enf['ganador_pc'] = enf['inscrito1'] if ganador== enf['id_inscrito1'] else enf['id_inscrito2']
                    else:
                        enf['ganador_pc'] = None
                    enf['fecha_i'] = enf['fecha_hora_inicio'].strftime('%d/%m/%Y')
                    enf['hora_i'] = enf['fecha_hora_inicio'].strftime('%I:%M %p')
                    
                    enf['duracion'] = (datetime.datetime.min + enf['duracion']).time()
                    enf['duracion'] = enf['duracion'].strftime("%M minutos con %S segundos")

                    
                grupos.append(
                {
                'grupo_id':grupo_id['grupo_id'],
                'inscritos': inscritos,
                'integrantes' : integrantes,
                })
                for enf in etapa1:
                    list_etapa1.append([enf['fecha_hora_inicio'],
                    
                    {
                        'grupo_id':grupo_id['grupo_id'],
                        'enf':enf,
                      
                    }])
                for enf in etapa2:
                    list_etapa2.append([enf['fecha_hora_inicio'],
                    
                    {
                        'grupo_id':grupo_id['grupo_id'],
                        'enf':enf,
                      
                    }])
                for enf in etapa3:
                    list_etapa3.append([enf['fecha_hora_inicio'],
                    
                    {
                        'grupo_id':grupo_id['grupo_id'],
                        'enf':enf,
                      
                    }])

                
            


     
            data['list_etapa1'] = sorted(list_etapa1, key=lambda x: x[0])
            data['list_etapa2'] = sorted(list_etapa2, key=lambda x: x[0])
            data['list_etapa3'] = sorted(list_etapa3, key=lambda x: x[0])
            data['grupos'] = grupos
        
            enfrentamientos =  [ enf[1]['enf'] for enf in data['list_etapa1'] + data['list_etapa2'] + data['list_etapa3']] 
           
            enfrentamientos_ganados = [(enf['ganador'],enf['ganador_pc']) for enf in enfrentamientos]
            enfrentamientos_ganados2 = [enf['ganador'] for enf in enfrentamientos]
            data['ganador_evento'] = {'ganador':None,'ganador_pc':None,'numero':0}
            for ganador,ganador_pc in enfrentamientos_ganados:
                if data['ganador_evento']['numero'] < enfrentamientos_ganados2.count(ganador):
                    data['ganador_evento']['ganador'] = ganador
                    if ganador_pc:
                        for grup in grupos:
                            for ins in grup['integrantes']:
                                if ins['id']==ganador_pc['id']:
                                    ganador_pc['id_afi'] = ins['id_afi']
                                    ganador_pc['nombre_afi'] = ins['nombre_afi']
                                    break
                                    
                       
                    data['ganador_evento']['ganador_pc'] = ganador_pc
                    data['ganador_evento']['numero'] = enfrentamientos_ganados2.count(ganador)

                    
            habilidades = api_bd.select_query(f""" 
            SELECT ha.id,ha.nombre,comp.valor
            
            FROM Habilidad ha,Habilidad_Competidor comp
            WHERE comp.id_competidor={ data['ganador_evento']['ganador_pc']['id']}
            AND ha.id =  comp.id_habilidad
            """,dictionary=True)

            pc_indicador_poder = 0
            afi_aumento_indicador_poder = 0
            pc_indicador_poder_nuevo = 0
            for hab in habilidades:
                pc_indicador_poder += int(hab['valor']) -1
                pc_indicador_poder_nuevo += int(hab['valor'])

            pc_indicador_poder = pc_indicador_poder / len(habilidades)
            pc_indicador_poder_nuevo = pc_indicador_poder_nuevo / len(habilidades)

            if all(int(valor['valor'])==7 for valor in habilidades):
                afi_aumento_indicador_poder = 5
            data['ganador_evento']['incrementos'] = ({
                'pc_indicador_poder':pc_indicador_poder,
                'pc_indicador_poder_nuevo':pc_indicador_poder_nuevo,
                'afi_aumento_indicador_poder':afi_aumento_indicador_poder,
            })

            

                
            

            

            
            

                

            

            
            
            return render_template('evento_info.html',data=data,table=table)


    else:
        data = api_bd.select_objects(table,pk,'nombre','descripcion',dictionary=True)[0]
        return render_template('general_info.html',data=data,table=table)

    