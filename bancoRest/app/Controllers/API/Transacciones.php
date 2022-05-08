<?php namespace App\Controllers\API;
//
//Albin Ivan Cruz Castellanos 6E

use App\Models\ClienteModel;
use App\Models\CuentaModel;
use App\Models\TransaccionModel;
use CodeIgniter\RESTful\ResourceController;

class Transacciones extends ResourceController
{

    public function __construct() {
        $this->model = $this->setModel(new TransaccionModel());
    }

    public function index()
    {
        $transacciones = $this->model->finAll();
        return $this->respond($transacciones);
    }

    public function create()
    {
        try {
           $transaccion = $this->request->getJSON();
           if($this->model->insert($transaccion)):
                $transaccion->id = $this->model->insertID();
                return $this->respondCreated($transaccion);
            else:
                return $this->failValidationErrors($this->model->validation->listErrors());
            endif; 
        } catch (\Exception $e) {
            return $this->failServerError('Ha ocurrido un error en el servidor');
        }
    }

    public function edit($id = null)
    {
        try {

            if($id == null)
                return $this->failValidationErrors('no se ha pasado un ID valido');

                $transaccion = $this->model->find($id);
                if($transaccion == null)
                return $this->failNotFound('no se ha encontrado una transaccion con el ID: '.$id);

                return $this->respond($transaccion);

         } catch (\Exception $e) {
             return $this->failServerError('Ha ocurrido un error en el servidor');
         }
    }

    public function update($id = null)
    {
        try {

            if($id == null)
                return $this->failValidationErrors('no se ha pasado un ID valido');

                $transaccionVerificada = $this->model->find($id);
                if($transaccionVerificada == null)
                return $this->failNotFound('no se ha encontrado una transaccion con el ID: '.$id);

                $transaccion = $this->request->getJSON();
                if($this->model->update($id, $transaccion)):
                    $transaccion->id = $id;
                    return $this->respondUpdated($transaccion);
                else:
                    return $this->failValidationErrors($this->model->validation->listErrors());
                endif; 

         } catch (\Exception $e) {
             return $this->failServerError('Ha ocurrido un error en el servidor');
         }
    }

    public function delete($id = null)
    {
        try {

            if($id == null)
                return $this->failValidationErrors('no se ha pasado un ID valido');

                $transaccionVerificada = $this->model->find($id);
                if($transaccionVerificada == null)
                return $this->failNotFound('no se ha encontrado una transaccion con el ID: '.$id);

                if($this->model->delete($id)):  
                    return $this->respondDeleted($transaccionVerificada);
                else:
                    return $this->failServerError('No se ha podido eliminar la transaccion');
                endif; 

         } catch (\Exception $e) {
             return $this->failServerError('Ha ocurrido un error en el servidor');
         }
    } 

    public function getTransaccionesByCliente($id = null)
    {
        try {
            $modelCliente = new ClienteModel();
            if($id == null)
                return $this->failValidationErrors('no se ha pasado un ID valido');

                $cliente = $modelCliente->find($id);
                if($cliente == null)
                return $this->failNotFound('no se ha encontrado un cliente con el ID: '.$id);

                $transacciones = $this->model->getTransaccionesByCliente();
               
                return $this->respond($transacciones);

         } catch (\Exception $e) {
             return $this->failServerError('Ha ocurrido un error en el servidor');
         }
    }

 /*   private function actualizarFondoCuenta($tipoTransaccionId, $monto, $cuentaId)
    {
        $modelCuenta = new CuentaModel();
        $cuenta = $modelCuenta->find($cuentaId);

        switch ($tipoTransaccionId) {
            case 1: 
                $cuenta["fondo"] += $monto;
                break;
        }
    }*/

}