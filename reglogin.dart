import 'dart:io';
void services(){
    String? option;
  print('How can we be of help to you?');
  print('Would you like to:');
  var service=['1 Learn a Course','2 Teach a Course'];
  print(service[0]);
  print(service[1]);
  print('Kindly select between option 1 and option 2');
  option= stdin.readLineSync();
  if(option=='1'){
    print('Welcome to our list of Courses');
    var courses=['Course : Tutor','Flutter : John','Dart : Doe','UI/UX : John Doe','Python : Micheal','REACT : Micheal Doe'];
    print(courses[0]);
    print(courses[1]);
    print(courses[2]);
    print(courses[3]);
    print(courses[4]);
    print(courses[5]);
  }else if(option=='2'){
    print('Welcome to our tutor section');
    String? expertise;
    print('What is your level of expertise?');
    print('Kindly make a selection from below:\n Note: Please ensure you type your level of expertise beginning with a Capital letter');
    var levels=['Beginner','Amateur','Professional'];
    print(levels[0]);
    print(levels[1]);
    print(levels[2]);
    expertise= stdin.readLineSync();
    if(expertise=='Beginner'){
      print('You would be taking the beginners section');
    }else if(expertise=='Amateur'){
      print('You would be taking the Amateur section');
    }else if(expertise=='Professional'){
      print('You would be taking the professionals');
    }else{
      print("You didn't enter a valid level of expertise");
    }
    
  }else{
    print('Your selection is invalid');
  }
}
void main(){
print('Registration Form');
print('-----------------');
String? name,password,age,cpassword,email;
print('Kindly input your name');
name= stdin.readLineSync();
if(name==''){
  throw Exception('Your name is not valid');
}else{
  print('Welcome $name');
}
print('Kindly Input a password');
print('Hints: Password should not contain anything that could easily be guessed by a third party');
password= stdin.readLineSync();
if(password==''){
  throw Exception('Your password is invalid');
}else{
  print('Your password is $password. Thanks for inputting a valid password');
}
print('Kindly input your current age');
age= stdin.readLineSync();
print('You are $age years');
print('Kindly confirm your password');
cpassword=stdin.readLineSync();
if(password==cpassword){
  print('Your password was confirmed');
}else{
  throw Exception('Password does not match');
}
print('Kindly input a valid email address');
email=stdin.readLineSync();
if(email==''){
  throw Exception('You email is invalid');
}else{
  print('Kindly give us a moment to confirm your email address');
}
print('..........................');
print('--------------------------');
print('Your profile details is as follows');
print('Your name is $name \n Your password is $password \n You are $age years of age \n Your inputted $email as your email. Email confirmation is in progress \n Kindly confirm all inputted data');
print('---------------------------\n');

print('Login Form');
String? logname,logpassword,fpassword,logemail;
print('----------');
print('Enter your name');
logname= stdin.readLineSync();
if(logname==name){
  print('Your name matches our database');
}else{
  throw Exception('Your name does not exist in our database');
}
print('Kindly input your password');
logpassword=stdin.readLineSync();
if(logpassword==password){
  print('Password Match');
  print('Welcome $name \n You have sucessfully logged in');
  print('--------------------------');
  services();
  
}else{
  print('Password is invalid');
  print('Would you like to try forgotten password?\n Kindly input Y/N');
  fpassword=stdin.readLineSync();
  if(fpassword=='Y'){
    print('Kindly your email for confirmation');
    logemail=stdin.readLineSync();
    print('-----------');
    if(logemail==email){
    print('Your password is $password');}else{
      print('You are not verified to retrieve this password');
    }
  }else if(fpassword=='N'){
    print('Please input a valid password');
    logpassword=stdin.readLineSync();
    if(logpassword==password){
      print('Password Confirmed');
    }else{
      throw Exception('You have inputted incorrect password multiple times. Please try again after few minutes.');
    }
  }
  
}

}
