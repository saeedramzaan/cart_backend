<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Mail;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class MailController extends Controller {
   public function basic_email() {

      $data = array('name'=>"Virat Gandhi");
   
      Mail::send(['text'=>'mail'], $data, function($message) {
         $message->to('saeedramzaan@gmail.com', 'Tutorials Point')->subject
            ('Laravel Basic Testing Mail');
         $message->from('saeedtestmail92@gmail.com','Virat Gandhi');
      });
      echo "Basic Email Sent. Check your inbox.";
   }
   public function html_email() {
      $data = array('name'=>"Virat Gandhi");
      Mail::send('mail', $data, function($message) {
         $message->to('saeedramzaan@gmail.com', 'Tutorials Point')->subject
            ('Laravel HTML Testing Mail');
         $message->from('saeedtestmail92@gmail.com','Virat Gandhi');
      });
      echo "HTML Email Sent. Check your inbox.";
   }
   public function attachment_email() {
      $data = array('name'=>"Virat Gandhi");

      Mail::send('mail', $data, function($message) {
         $message->to('saeedramzaan@gmail.com', 'Tutorials Point')->subject
            ('Laravel Testing Mail with Attachment');
         $message->attach('http://localhost:8000/storage/uploadedFiles/Anchor-400g-2023-04-29.png');
         $message->attach('http://localhost:8000/storage/uploadedFiles/Anchor-400g-2023-04-29.png');
         $message->from('saeedtestmail92@gmail.com','Virat Gandhi');
      });
      echo "Email Sent with attachment. Check your inbox.";
   }

   public function test() {
        
    return "test";
   }
}
