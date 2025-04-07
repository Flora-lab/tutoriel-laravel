<?php
use App\Http\Controllers\CategorieController; 
use App\Http\Controllers\ScategorieController;
use App\Http\Controllers\ArticleController;
 
Route::middleware('api')->group(function () { 
    Route::resource('categories', CategorieController::class); 
}); 

 
Route::middleware('api')->group(function () { 
    Route::resource('scategories', ScategorieController::class);       

}); 


Route::get('/scat/{idcat}', 
[ScategorieController::class,'showSCategorieByCAT']); 

Route::middleware('api')->group(function () { 
    Route::resource('articles', ArticleController::class); 
}); 

?>