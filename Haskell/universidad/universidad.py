class universidad :
    def __init__(self):
        self._listaFacultad =[]
        self._ListaEmpleados=[]
##-------------------------------------------
        self._listaFacultad.append(facultad1.get_instace())
        self._listaFacultad.append(facultad2.get_instace())
        self._listaFacultad.append(facultad3.get_instace())        
##---------------------------------------------
        self._ListaEmpleados.append(Investigador("johan",1234567,"johanandresa@hotmail.com"))
        self._ListaEmpleados.append(Investigador("laura",1277820,"laura@hotmail.com"))  
        self._ListaEmpleados.append(Administrativo("rosmery",1200020213,"rodiaz@gamil.com"))
##----------------------------------------------------
        self._listaFacultad[0].addInstituto(Instituto("ILUD","calle 42 sur #29-54").addInvestigador(self._ListaEmpleados[0]))
        self._listaFacultad[1].addInstituto(Instituto("Extension","calle 45 sssss").addInvestigador(self._ListaEmpleados[0]))
##----------------------------------------------------------------------------------------------------
        
        for i in self._listaFacultad:
            print(i.tamaño())   

class FacultadAbstracta:
    def __init__(self) :
        self._ListaInstituto=[]

    def addInstituto(self,valor):
        self._ListaInstituto.append(valor)         

    def tamaño(self):
        return len (self._ListaInstituto)

class facultad1(FacultadAbstracta):
    _instance=None
    
    def __init__(self):
        super().__init__()

    @classmethod
    def get_instace(cls):
        if not cls._instance:
            cls._instance=cls()
        return cls._instance
     
    
class facultad2(FacultadAbstracta):
    _instance=None
    
    def __init__(self):
        super().__init__()
    
    @classmethod
    def get_instace(cls):
        if not cls._instance:
            cls._instance=cls()
        return cls._instance
     

class facultad3(FacultadAbstracta):
    _instance=None
    
    def __init__(self):
        super().__init__()
    
    @classmethod
    def get_instace(cls):
        if not cls._instance:
            cls._instance=cls()
        return cls._instance
    
     

class Instituto :
    def __init__(self,nombre,direccion):
        self._nombre=nombre
        self._direccion=direccion
        self._listaInvstigador=[]
    
    def addInvestigador(self,investigador):
        self._listaInvstigador.append(investigador)

    def Investigadores(self):
        for i in self._listaInvstigador:
            print(i)


class Empleado:
    def __init__(self,nombre,num_seguridad,correo):
        self._nombre=nombre
        self._num_seguridad=num_seguridad
        self._correo=correo
        

class Investigador(Empleado):
    
    def __init__(self, nombre, num_seguridad, correo):
        super().__init__(nombre, num_seguridad, correo)
    
    
class Administrativo(Empleado):
    
    def __init__(self, nombre, num_seguridad, correo):
        super().__init__(nombre, num_seguridad, correo)


class Proyecto :
    pass

class Curso:
    pass

if __name__ == "__main__":
  universidad()