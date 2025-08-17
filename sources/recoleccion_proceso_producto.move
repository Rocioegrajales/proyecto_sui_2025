module proceso_total::proceso_total;
    use std::debug::print;
    use std::string::(utf8, String);

    public struct Residuo has drop {
        nombre: String,
        cantidad: u8,
        tratado: bool
    }

        fun
