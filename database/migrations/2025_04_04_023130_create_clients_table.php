<?php 
 use Illuminate\Database\Migrations\Migration; 
 use Illuminate\Database\Schema\Blueprint; 
 use Illuminate\Support\Facades\Schema; 
 class CreateClientsTable extends Migration 
{ 
    /** 
*	Run the migrations. 
     * 
*	@return void 
     */     public function up() 
    { 
        Schema::create('clients', function (Blueprint $table) {             
            $table->id(); 
            $table->string('npr'); 
            $table->text('adresse');      
            $table->string('email'); 
            $table->timestamps(); 
        }); 
    } 
 
    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clients');
    }
};
