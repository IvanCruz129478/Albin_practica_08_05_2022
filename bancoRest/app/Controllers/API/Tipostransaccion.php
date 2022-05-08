<?php namespace App\Controllers\API;
//Albin Ivan Cruz Castellanos 6E


use App\Models\TipoTransaccionModel;
use CodeIgniter\RESTful\ResourceController;

class Tipostransaccion extends ResourceController
{

    public function __construct() {
        $this->model = $this->setModel(new TipoTransaccionModel());
    }

    public function index()
    {
        $tipostransacciones = $this->model->finAll();
        return $this->respond($tipostransacciones);
    }

    public function create()
    {
        try {
           $tipostransaccion = $this->request->getJSON();
           if($this->model->insert($tipostransaccion)):
                $tipostransaccion->id = $this->model->insertID();
                return $this->respondCreated($tipostransaccion);
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

                $tipostransaccion = $this->model->find($id);
                if($tipostransaccion == null)
                return $this->failNotFound('no se ha encontrado un tipo de transaccion con el ID: '.$id);

                return $this->respond($tipostransaccion);

         } catch (\Exception $e) {
             return $this->failServerError('Ha ocurrido un error en el servidor');
         }
    }

    public function update($id = null)
    {
        try {

            if($id == null)
                return $this->failValidationErrors('no se ha pasado un ID valido');

                $tipostransaccionVerificada = $this->model->find($id);
                if($tipostransaccionVerificada == null)
                return $this->failNotFound('no se ha encontrado un tipo de transaccion con el ID: '.$id);

                $tipostransaccion = $this->request->getJSON();
                if($this->model->update($id, $tipostransaccion)):
                    $tipostransaccion->id = $id;
                    return $this->respondUpdated($tipostransaccion);
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

                $tipostransaccionVerificada = $this->model->find($id);
                if($tipostransaccionVerificada == null)
                return $this->failNotFound('no se ha encontrado un tipo de transaccion con el ID: '.$id);

                if($this->model->delete($id)):  
                    return $this->respondDeleted($tipostransaccionVerificada);
                else:
                    return $this->failServerError('No se ha podido eliminar el tipo de transaccion');
                endif; 

         } catch (\Exception $e) {
             return $this->failServerError('Ha ocurrido un error en el servidor');
         }
    } 

    

}