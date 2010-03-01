package com.thesven.formvalidation {

	/**
	 * @author mikesven
	 */
	public class FormValidation {
	
		/**
		 * Checks to see if the input string is not empty
		 */
		public static function isNotEmpty(str:String):Boolean{
			return (str.length > 0) ? true : false;
		}
	
		/**
		 * Checks to see if the input string is a valid email address
		 */
		public static function isValidEmail(emailAddress:String):Boolean{
			var reg:RegExp = /^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)+)@(([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)){2,}\.([A-Za-z]){2,4}+$/g;
			return reg.test(emailAddress);
		}
		
		/**
		 *Checks to see if the input string is composed of alpha numeric characters 
		 */		
		public static function isAlphaNumeric(stringToTest:String):Boolean{
			var reg:RegExp = /^[a-zA-Z\s0-9]+$/;
			return reg.test(stringToTest);
		}
		
		/**
		 * Matches US phone numbers in style of:222-222-1234, (222)222-1234, (222) 222-1234, 222.222.1234, 2222221234
		 */
		public static function isTenDigitPhoneNumber(str:String):Boolean{
			var reg:RegExp = /\(?\d{3}\W?\s?\d{3}\W?\d{4}/;
			return reg.test(str);
		}
		
		public static function validateURL(theURL:String):Boolean{
			var regexp:RegExp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
			//var regexp:RegExp = /^[a-zA-Z]+[:\/\/]+[A-Za-z0-9\-_]+\\.+[A-Za-z0-9\.\/%&=\?\-_]+$/i;
			return regexp.test(theURL);
		}
		
	}
	
}
