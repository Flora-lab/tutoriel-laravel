<?php 
 namespace App\Http\Controllers;
  
 use App\Models\Categorie; 
 use Illuminate\Http\Request; 
 
class CategorieController extends Controller 
{ 
    /** 
*	Display a listing of the resource. 
     * 
*	@return \Illuminate\Http\Response      */ 
    public function index() 
    { 
        $categories = Categorie::all()->toArray();         
        return array_reverse($categories);   
    } 
 
    /** 
    *	Store a newly created resource in storage.      * 
    *	@param  \Illuminate\Http\Request  $request 
    *	@return \Illuminate\Http\Response 

     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $categorie = new Categorie([
            'nomcategorie' => $request ->input('nomcategorie'),
            'imagecategorie'=> $request ->input('imagecategorie')
        ]);
        $categorie -> save();
        return response()->json('categorie reussi!');
    }

    /**
     * Display the specified resource.
     * 
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $categorie = Categorie::find($id);
       return response() -> json($categorie);
    }

    /**
     * Update the specified resource in storage.
     * 
     * @param \Illuminate\Http\Request $Request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $categorie = Categorie::find($id);
        $categorie -> update($request->all());

        return response()->json('Categorie MAJ !');
    }

    /**
     * Remove the specified resource from storage.
     * 
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $categorie = Categorie::find($id);
        $categorie ->delete();
        return response()->json('Categorie supprimée');
    }
}
