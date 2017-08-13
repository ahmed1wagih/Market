<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use Redirect;
use Session;
use Response;
use Auth;

class ProfileController extends Controller
{
    

	public function profile(){

    	return view('front.profile');
    }


    public function usersettings(){

    	$User = auth()->user();
    	
        return view('front.usersettings',compact('user'));
    }

    public function userupdate(Request $request,$id){

    	dd($request->all());

    	$useredit = User::find($id);   
        $useredit->fill($request->all());

        if($request->hasFile('file')){
            $path = public_path();
            $destinationPath = $path.'/uploads/users'; // upload path
            $image= $request->file('file');
            $extension = $image->getClientOriginalExtension(); // getting image extension
            $name = time().''.rand(11111,99999).'.'.$extension; // renameing image
            $image->move($destinationPath, $name); // uploading file to given path
            
            $useredit->file  = 'uploads/users/'.$name ;
            }
        
          

        // dd($useredit);

        if($useredit->save())
        {   
        
            return redirect('/profile');
        }else{
            
            return ('error');
        }



    }

}
