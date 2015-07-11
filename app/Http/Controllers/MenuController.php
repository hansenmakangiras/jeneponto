<?php namespace App\Http\Controllers;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\View;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */

    public function index()
    {
        $menu = MainMenu::orderBy('urutan', 'ASC')->get();
        $data = "Coba test data";
        //$this->menus = $menu
        return view('layouts.nav',['menu' => $menu]);
        // return View::make('layouts.master')->withMenus($this->menus);
    }
    public function welcome()
    {
        return view('pages.welcome');
    }
    public function about()
    {
        return view('pages.about');
    }

    public function contact()
    {
        return view('pages.contact');
    }
}
