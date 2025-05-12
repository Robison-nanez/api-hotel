<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


/**
 * @OA\Info(
 *     version="1.0.0",
 *     title="API de Hotel",
 *     description="Documentación de la API del sistema de hotel",
 *     @OA\Contact(
 *         email="soporte@tu-dominio.com"
 *     )
 * )
 *
 * @OA\SecurityScheme(
 *     securityScheme="bearerAuth",
 *     type="http",
 *     scheme="bearer",
 *     bearerFormat="JWT"
 * )
 */
class SwaggerController extends Controller
{
    //
}
