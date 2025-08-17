module proceso_total::proceso_total;
    use std::debug::print;
    use std::string::{utf8, String};

    public struct Recoleccion has drop {        
        forma: String,
        nombre: String,
        kilos: u8,
        tratado: bool
    }

        fun residuo () {
            let recoleccion1 = Recoleccion {
                forma:utf8(b"domicilio"),
                nombre:utf8(b"alimento"),
                kilos: 55,
                tratado: true
            };

            print(&recoleccion1);
        }
       
    public struct Proceso has drop {
        modo: String,
        dias: u8,
        lote: String
    }

    fun manejo () {
        let proceso1 = Proceso {
            modo:utf8(b"aerobico"),
            dias: 30,
            lote:utf8(b"am150825")
        };

        print(&proceso1);
    }

    public struct Producto has drop {
        color: String,
        temperatura: u8,
        ph: u8,
        humedad: u8,
        tamizado: bool
    }

    fun control () {
        let producto1 = Producto {
            color:utf8(b"cafe1"),
            temperatura: 23,
            ph: 7,
            humedad: 50,
            tamizado: true
        };

        print(&producto1);
    }

    #[test]
        fun prueba() {
            residuo();
            manejo();
            control();
        }
