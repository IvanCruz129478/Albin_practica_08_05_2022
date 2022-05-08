<?php namespace App\Models;
use CodeIgniter\Model;
//
//Albin Ivan Cruz Castellanos 6E
class TipoTransaccionModel extends Model
{
    protected $table            ='tipo_transaccion';
    protected $primaryKey       ='id';
    
    protected $returnType       ='array';
    protected $allowedFields    =['descripcion'];

    protected $useTimestamps    =true;
    protected $createdField     ='created_at';
    protected $updatedField     ='updated_at';

    protected $validationRules  =[
        'descripcion'        =>  'required|alpha_space|min_length[5]|max_length[65]',
                
    ];

    protected $skipValidation = false;

}
