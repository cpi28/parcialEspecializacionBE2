package com.elaparato.controller;

import com.elaparato.model.Producto;
import com.elaparato.model.Venta;
import com.elaparato.service.IProductoService;
import com.elaparato.service.IVentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class VentaController {


    @Autowired
    private IVentaService ventServ;

    //crear una nueva venta
    @PostMapping("/ventas/create")
    @PreAuthorize("hasAnyRole('ROLE_admin-client-role', 'ROLE_vendedor-client-role')")
    public String createVentao(@RequestBody Venta vent) {
        ventServ.saveVenta(vent);
        return "Venta creada correctamente";
    }

    //obtener todas las ventas
    @GetMapping("/ventas/getall")
    @PreAuthorize("hasAnyRole('ROLE_admin-client-role', 'ROLE_vendedor-client-role')")
    public List<Venta> getVentas () {
        return ventServ.getVentas();
    }

    //Modificar los datos de una venta
    @PutMapping("/ventas/edit")
    @PreAuthorize("hasAnyRole('ROLE_admin-client-role', 'ROLE_vendedor-client-role')")
    public String editVenta(@RequestBody Venta vent) {
        ventServ.editVenta(vent);
        return "Venta editada correctamente";
    }


}
