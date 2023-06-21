<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User; 
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Response;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return "test";
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $validated = $request->validate([
            'username' => 'required|max:255',
            'password' => 'required',
            'email' => 'required|email|unique:users'
        ]);

    //    Validator::make($data, [
    //         'name' => ['required', 'string', 'max:255'],
    //         'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
    //         'password' => ['required', 'string', 'min:8', 'confirmed'],
    //     ]);

         $user = new User();
         $user->name = $request->username;
         $user->password = $request->password;
         $user->email = $request->email;
         $user->save();

         return "success";
    }

    // public function save(){

    //     return "test team";
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       return "test new";
    }

    public function login(Request $request){

     //   return $request->email.$request->password; 

     $validated = $request->validate([
        'username' => 'required|max:255',
        'password' => 'required',
    ]);

        $username = $request->username;
        $password = $request->password;

        // return $username.$password;

    //   $users = User::find('email','ramzan123@gmail.com')->first();

        $users = DB::table('users')->where('email',$username)->first();

       // foreach ($users as $user) {
        //    echo $users->password;
     //   }

        if($password==$users->password){
           // return "success";
            return Response::json(array('status' => "success", 'name' => $users->name, 'id' => $users->id));

        }
else{
            return response()->json('Error 500',500);;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
}
