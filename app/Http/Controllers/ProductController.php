<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\product;
use App\Models\Item;
use App\Models\User; 
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
Use \Carbon\Carbon;
use App\Models\Item_master; 
use App\Models\Category;
use Illuminate\Support\Facades\DB;

use Mail; 

 


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $date = Carbon::now()->toDateString();
        // return $date;
        return "test";
    }

    public function test(Request $request)
    {
        //  $date = Carbon::now()->toDateString();
        // // return $date;\

        // $username = $request->username; 
        // $userid = $request->userid;
        // $grand_total = $request->cartTotal; 

        // foreach($request->items as $req){

        //   //  return $req['id'];

        //     $item = new Item();
        //     $item->user_id = $userid;
        //     $item->user_name = $username;
        //     $item->pid = $req['id'];
        //     $item->pname = $req['pname'];
        //     $item->price = $req['price'];
        //     $item->qty = $req['quantity'];
        //     $item->total = $req['price'] * $req['quantity'];
        //     $item->save();
            
        // }

        // $item_master = new Item_master();
        // $item_master->user_id = $userid;
        // $item_master->user_name = $username;
        // $item_master->date = $date;
        // $item_master->g_total = $request->cartTotal;
        // $item_master->d_charge = "150";
        // $item_master->save();

        // $data = array('userid'=> $userid,'username'=> $username, 'date' => $date, 'grand_total' => $grand_total);

        // //$test = "test";
        
        //  Mail::send('mail', $data, function($message) {
         
        //  $message->to('saeedramzaan@gmail.com', 'Check Out')->subject('Purchase Order');
        //  $message->from('saeedtestmail92@gmail.com', 'Booking Confirmed');

        // });
   

        return $request;

       // return $request->items[0];
      
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

        $validated = $request->validate([
            'username' => 'required|max:255',
            'password' => 'required',
            'email' => 'required|email|unique:users'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

    // return $request;
          
      //  return $request->proName;

    $date = Carbon::now()->toDateString();

        //    $validated = $request->validate([
        //     'proName' => 'required',
        //     'proPrice' => 'required',
        //     'proQty' => 'required',
        // ]);

        // $validator = Validator::make($request->all(), [
        // 'proName' => ['required'],
        // 'proPrice' => ['required'],
        // 'proQty' => ['required'],
        // ]);

        $ProName = $request->proName;

        $str_ProName = str_replace(' ','-',$ProName);

      //  $request->file('selectedFile') reactJs file name

    if ($request->file('file')) {
        $uploadedFile = $request->file('file');
        
          if ($uploadedFile) {
          $filename = $str_ProName."-".$date . '.' . $uploadedFile->getClientOriginalExtension();
          Storage::disk('public')->putFileAs('uploadedFiles/', $uploadedFile, $filename);
          }
     }
    

         $product = new Product();
         $product->pname = $request->proName;
         $product->pqty =  $request->proQty;
         $product->price = $request->proPrice;
         $product->image = $filename;
         $product->category = "cat";
         $product->save();
  
       return "success";

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
    
           $search = $request->keyword;

           $product = DB::table('products')->where('category', 'LIKE', '%'.$search.'%')->get();

           return $product;

        //   return $request->keyword;

    }

    public function showAll(Request $request)
    {
       // $product = Product::whereIn('category',$request->getCat);

             $product = DB::table('products')->get();

            return $product;

           // return $request->getCat;

         //return "test";
    }

    

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function searchCategory(){
         
       $user =  Category::select('id','cat_name')->get();
       return $user;
    }

    public function delete(Request $request)
    {
        try {
            $post=DB::table('users')->Where('id', 25);
            $post->delete();
            return "deleted successfully";
          } catch (ModelNotFoundException $e) {
            return "Failed";
          }
        
   
        
        // $user = User::find(12)->delete();
        // return $request;
    }
}
