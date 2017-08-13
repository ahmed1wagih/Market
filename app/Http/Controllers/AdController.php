<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Category;
use App\Product;

class AdController extends Controller
{
    

   public function newad(){

   	// $products=Product::join('category','category.id','=','products.cat_id')->select(['products.*','category.name as category_name'])->get();

   	$cats = Category::all();
   	return view('front.newad', compact('cats'));
   }

   public function newadins(Request $request){

   	// $this->validate($request, [
   			
    //         'name' => 'required',
    //         'cat_id' => 'required',
    //         'text' => 'required',
    //         'user' => 'required',
    //         'email' => 'required|email|unique:users,email',
    //         'phone' => 'required',
    //         'file' => 'required',
            
            
    //         ],
    //         [
            
    //         'name' => 'الإسم بالكامل مطلوب',
    //         'cat_id' => 'إسم القسم مطلوب',
    //         'text' => 'الوصف مطلوب',
    //         'user' => 'إسم المستخدم مطلوب',
    //         'email.required' => 'الإيميل مطلوب',
    //         'phone' => 'الهاتف مطلوب',
    //         'file.required' => 'الصورة مطلوبة'
            
    //         ]);

    	$product = new Product;

    	$product->fill($request->all());

        if($request->hasFile('file')){
            $path = public_path();
            $destinationPath = $path.'/uploads/products'; // upload path
            $image= $request->file('file');
            $extension = $image->getClientOriginalExtension(); // getting image extension
            $name = time().''.rand(11111,99999).'.'.$extension; // renameing image
            $image->move($destinationPath, $name); // uploading file to given path
            
            $product->file  = 'uploads/products/'.$name ;
            }

		if($product->save())
        {   
        
            return ('done');
        }else{
            
            return ('error');
        }
   }
}
