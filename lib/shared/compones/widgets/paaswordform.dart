import 'package:flutter/material.dart';

class PasswordForm extends StatefulWidget {
  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: 'Password',
          hintText: 'Enter your password',
          suffixIcon: IconButton(
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: Theme.of(context).primaryColorDark,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              }),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          fillColor: Colors.grey,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).accentColor),
            borderRadius: BorderRadius.circular(10),
            gapPadding: 10,
          ),
        ),
      ),
    );
  }
}
