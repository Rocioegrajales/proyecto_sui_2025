module proceso_total::proceso_total;
    use std::debug::print;
    use std::string::{utf8, String};

    public struct Produccion has key, store {
        id: UID,
        recolecciones: vector<Recoleccion>,
        procesos: vector<Proceso>,
        controles: vector<Control>,
        almacenajes: vector<Almacenaje>
    }

    public struct Recoleccion has drop, store {              
        forma: String,
        nombre: String,
        kilos: u8,
        tratado: bool
    }

    public struct Proceso has drop, store {
        modo: String,
        dias: u8,
        lote: String
    }

    public struct Control has drop, store {
        color: String,
        temperatura: u8,
        ph: u8,
        humedad: u8,
        tamizado: bool
    }

    public struct Almacenaje has drop, store {
        bodega: String,
        temperatura: u8,
        dias: u8,
        empacado: bool     
    }    

    /// Inicializa
    public fun new(ctx: &mut TxContext) {
        let prod = Produccion {
            id: object::new(ctx),
            recolecciones: vector[],
            procesos: vector[],
            controles: vector[],
            almacenajes: vector[]
        };
        transfer::transfer(prod, tx_context::sender(ctx));
    }    

    public fun residuo () {
        let recoleccion1 = Recoleccion {                
            forma:utf8(b"domicilio"),
            nombre:utf8(b"alimento"),
            kilos: 55,
            tratado: true
        };
            
            print(&recoleccion1);
        }   

        public fun manejo () {
        let proceso1 = Proceso {
            modo:utf8(b"aerobico"),
            dias: 30,
            lote:utf8(b"am150825")
        };

            print(&proceso1);
        }
    
        public fun producto () {
        let control1 = Control {
            color:utf8(b"cafe1"),
            temperatura: 23,
            ph: 7,
            humedad: 50,
            tamizado: true
        };

        print(&control1);
    }
    
    fun bodegaje () {
        let almacenaje1 = Almacenaje {
            bodega: utf8(b"A5"),
            temperatura: 20,
            dias: 15,
            empacado: true       
        };

        print(&almacenaje1);
    }

    #[test]
        fun prueba() {
            residuo();
            manejo();
            producto();
            bodegaje();
        }
