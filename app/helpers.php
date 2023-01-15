<?php

use App\Models\Category;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;

/**
 * Check user permission
 * @returns int
 */
if(! function_exists('hasPermission')) {
    function hasPermission($user_id,$permission): bool
    {
        $conditions = [
          'user_id'=>$user_id,
          'permission'=>$permission
        ];
       if(UserPermission::where($conditions)->exists()){
           return true;
       } else{
           return false;
       }
    }
}

/**
 * Get settings date format
 * @returns string
 */

if (! function_exists('orgDateFormat')) {
    function orgDateFormat($date): string
    {
        $date_format = Auth::check() ? Auth::user()->date_format : 'Y-m-d';
        if(isset($date)){
            return date($date_format,strtotime($date));
        } else{
            return "N/A";
        }

    }
}

/**
 * Get months
 * @returns string
 */

if (! function_exists('getMonths')) {
    function getMonths()
    {
        return array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
    }
}


/**
 * Get number to words
 * @returns string
 */

if (! function_exists('numberToWords')) {
    function numberToWords($number): string
    {
        $word = "";
        if($number == 0){
            $word =  "Zero";
        } elseif($number == 1){
            $word = "One";
        } elseif ($number == 2){
            $word = "Two";
        } elseif ($number == 3){
            $word = "Three";
        } elseif ($number == 4){
            $word = "Four";
        } elseif ($number == 5){
            $word = "Five";
        } elseif ($number == 6){
            $word = "Six";
        } elseif ($number == 7){
            $word = "Seven";
        } elseif ($number == 8){
            $word = "Eight";
        } elseif ($number == 9){
            $word = "Nine";
        } elseif ($number == 10){
            $word = "Ten";
        }
        return $word;
    }
}


/**
 * Get user language
 * @returns string
 */

if (! function_exists('getUserLanguage')) {
    function getUserLanguage(): string
    {
        if((Auth::check()) AND (Auth::user()->language != null)){
            $language  = Auth::user()->language;
        }else{
            $language = "en";
        }
        return $language;
    }
}

/**
 * Convert title
 * @returns string
 */

if (! function_exists('titleConverter')) {
    function titleConverter($title): string
    {
       return strtolower(str_ireplace([':', '\\', '/', '*',' '],'_',$title)) ?? "Title";
    }
}

/**
 * Convert error
 * @returns string
 */

if (! function_exists('validationError')) {
    function validationError($message, $label): string
    {
        //return $label;
       $string = explode(" ",$message);
       $first = $string[0];
       $label = explode(" ",$label);
       $label_first = $label[0] ?? "";
       $label_second = $label[1] ?? "";
       $label_third = $label[2] ?? "";
       $label_fourth = $label[3] ?? "";
       $label_fifth = $label[5] ?? "";
       $combine_word = ucfirst($label_first)." ".ucfirst($label_second)." ".ucfirst($label_third)." ".ucfirst($label_fourth)." ".ucfirst($label_fifth);
       $scip_word = ucfirst($first)." ".lcfirst($label_first)." ".lcfirst($label_second)." ".lcfirst($label_third)." ".lcfirst($label_fourth)." ".lcfirst($label_fifth);
       $message_word = Str::after($message,$scip_word);
       return $first ." ". $combine_word." ".$message_word;
    }
}

/**
 * Convert hour minute
 * @returns string
 */

if (! function_exists('displayHourMinute')) {
    function displayHourMinute($time, $format = '%02d:%02d'): string
    {
        $hours = floor($time / 60);
        $minutes = ($time % 60);
        return sprintf($format, $hours, $minutes);
    }
}

/**
 * Get user name by id
 * @returns string
 * @param  int  $id
 */

if (! function_exists('getUserName')) {
    function getUserName($id): string
    {
        return User::find($id)->full_name ?? "N/A";
    }
}

/**
 * Upload image
 */
if (! function_exists('uploadImage')) {
    function uploadImage($file,$path="files/",$size="",$width="",$height=""): string
    {
        $imageName = time().$file->getClientOriginalName();
        $image_resize = Image::make($file->getRealPath());
        if((isset($height)) AND (isset($width))) {
            $image_resize->resize($width, $height);
        }
        if(isset($size)) {
            $image_resize->filesize($size);
        }
        $image_resize->save($path .$imageName);
        return $path.$imageName;
    }
}

/**
 * Upload file
 */
if (! function_exists('uploadFile')) {
    function uploadFile($file,$path): string
    {
        $uniqueFileName = time().'_' . '.'.$file->getClientOriginalExtension();
        if (!file_exists($path)) {
            mkdir($path, 0755, true);
        }
        $file->move($path,$uniqueFileName);
        return $path.$uniqueFileName;
    }
}

/**
 * Get number to word amount
 * @returns string
 * @param $number
 */

if(! function_exists('number_to_words')) {
    function number_to_words( $num = '' )
    {
        $num    = ( string ) ( ( int ) $num );

        if( ( int ) ( $num ) && ctype_digit( $num ) )
        {
            $words  = array( );

            $num    = str_replace( array( ',' , ' ' ) , '' , trim( $num ) );

            $list1  = array('','one','two','three','four','five','six','seven',
                'eight','nine','ten','eleven','twelve','thirteen','fourteen',
                'fifteen','sixteen','seventeen','eighteen','nineteen');

            $list2  = array('','ten','twenty','thirty','forty','fifty','sixty',
                'seventy','eighty','ninety','hundred');

            $list3  = array('','thousand','million','billion','trillion',
                'quadrillion','quintillion','sextillion','septillion',
                'octillion','nonillion','decillion','undecillion',
                'duodecillion','tredecillion','quattuordecillion',
                'quindecillion','sexdecillion','septendecillion',
                'octodecillion','novemdecillion','vigintillion');

            $num_length = strlen( $num );
            $levels = ( int ) ( ( $num_length + 2 ) / 3 );
            $max_length = $levels * 3;
            $num    = substr( '00'.$num , -$max_length );
            $num_levels = str_split( $num , 3 );

            foreach( $num_levels as $num_part )
            {
                $levels--;
                $hundreds   = ( int ) ( $num_part / 100 );
                $hundreds   = ( $hundreds ? ' ' . $list1[$hundreds] . ' Hundred' . ( $hundreds == 1 ? '' : 's' ) . ' ' : '' );
                $tens       = ( int ) ( $num_part % 100 );
                $singles    = '';

                if( $tens < 20 ) { $tens = ( $tens ? ' ' . $list1[$tens] . ' ' : '' ); } else { $tens = ( int ) ( $tens / 10 ); $tens = ' ' . $list2[$tens] . ' '; $singles = ( int ) ( $num_part % 10 ); $singles = ' ' . $list1[$singles] . ' '; } $words[] = $hundreds . $tens . $singles . ( ( $levels && ( int ) ( $num_part ) ) ? ' ' . $list3[$levels] . ' ' : '' ); } $commas = count( $words ); if( $commas > 1 )
            {
                $commas = $commas - 1;
            }

            $words  = implode( ', ' , $words );

            $words  = trim( str_replace( ' ,' , ',' , ucwords( $words ) )  , ', ' );
            if( $commas )
            {
                $words  = str_replace( ',' , ' and' , $words );
            }

            return $words;
        }
        else if( ! ( ( int ) $num ) )
        {
            return 'Zero';
        }
        return '';
    }

    /**
     * Data saved notification message
     */
    if (! function_exists('saveMessage')) {
        function saveMessage($message = 'Information has been saved successfully !'): array
        {
            return [
                'type'=> 'success',
                'message' => $message,
                'sign' => 'check'
            ];
        }
    }

    /**
     * Data update notification message
     */
    if (! function_exists('updateMessage')) {
        function updateMessage($message = 'Information has been updated successfully !'): array
        {
            return [
                'type'=> 'success',
                'message'=> $message,
                'sign' => 'check'
            ];
        }
    }
    /**
     * Data update notification message
     */
    if (! function_exists('dangerMessage')) {
        function dangerMessage($message = ' !'): array
        {
            return [
                'type'=> 'danger',
                'message'=> $message,
                'sign' => 'times'
            ];
        }
    }

    /**
     * Warning notification message
     */
    if (! function_exists('waringMessage')) {
        function waringMessage($message = "Something wrong !"): array
        {
            return [
                'type'=>'warning',
                'message'=> $message,
                'sign' => 'exclamation-triangle'
            ];
        }
    }

    /**
     * Error notification message
     */
    if (! function_exists('errorMessage')) {
        function errorMessage($message = "Information has been deleted successfully !"): array
        {
            return [
                'type'=> 'success',
                'message'=> $message,
                'sign' => 'check'
            ];
        }
    }
    /**
     * Error notification message
     */
    if (! function_exists('deleteMessage')) {
        function deleteMessage($message = "Information has been deleted successfully !"): array
        {
            return [
                'type'=> 'success',
                'message'=> $message,
                'sign' => 'check'
            ];
        }
    }

    /**
     * Display alert dynamically
     */
    if (! function_exists('alertMessage')) {
        function alertMessage()
        {
            return view('alert_message');
        }
    }

    /**
     * Display required star dynamically
     */
    if(!function_exists('starSign')){
        function starSign()
        {
            return "<span class='required_star'>"." *"."</span>";
        }
    }
    /**
     * Display required star dynamically
     */
    if(!function_exists('pre')){
        function pre($param)
        {
            echo "<pr>";
            print_r($param);
            echo "</pr>";
            exit;
        }
    }

    /**
     * Encryption and Decryption value
     */
    if(!function_exists('encryptDecrypt')) {

        function encryptDecrypt($key, $type)
        {
            # type = encrypt/decrypt
            $str_rand = "XxOx*4e!hQqG5b~9a";

            if (!$key) {
                return false;
            }
            if ($type == 'decrypt') {
                $en_slash_added = trim(str_replace(array('sPesCho'), '/', $key));
                $key_value = $return = openssl_decrypt($en_slash_added, "AES-128-ECB", $str_rand);
                return $key_value;

            } elseif ($type == 'encrypt') {
                $key_value = openssl_encrypt($key, "AES-128-ECB", $str_rand);
                $en_slash_remove = trim(str_replace(array('/'), 'sPesCho', $key_value));
                return $en_slash_remove;
            }
            return FALSE;    # if function is not used properly
        }
    }

}
