import 'package:flutter/material.dart';
import 'package:untitled23/5admati.dart';
void main() => runApp(const SignUpApp());

class SignUpApp extends StatelessWidget {
  const SignUpApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SignUpScreen(),
        '/welcome': (context) => const WelcomeScreen(),
      },
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: SignUpForm(),
          ),
        ),
      ),
    );
  }
}
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(color:Colors.black,),),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
        child: SingleChildScrollView(
          child:
          Column(
            children: [Image.network(
            'https://files.fm/thumb_show.php?i=dhzdkyszu',),

              SizedBox(
                  height: 100,
                  width: 200,
                  ),

              Text('Welcome!', style: Theme.of(context).textTheme.headline2),
              SizedBox(
                height: 120,

              ),
              SizedBox(width: 200,
                height: 40,
                child: ElevatedButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => khadmati(),),);}, child: Text('Next')
                ),
              )

            ],
          ),
        ),
      ),

    ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _emailaddressTextController = TextEditingController();
  final _phonenumberTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmpasswordTextController = TextEditingController();
  double _formProgress = 0;

  void _updateFormProgress() {
    var progress = 0.0;
    final controllers = [
      _firstNameTextController,
      _lastNameTextController,
      _emailaddressTextController,
      _phonenumberTextController,
      _passwordTextController,
      _confirmpasswordTextController,
    ];

    for (final controller in controllers) {
      if (controller.value.text.isNotEmpty) {
        progress += 1 / controllers.length;
      }
    }

    setState(() {
      _formProgress = progress;
    });
  }

  void _showWelcomeScreen() {
    Navigator.of(context).pushNamed('/welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Form(
      // onChanged: _updateFormProgress,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '5adamti',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedProgressIndicator(value: _formProgress),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sign up', style:
                TextStyle(
                  color:Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),

                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _firstNameTextController,
                decoration: const InputDecoration(
                  hintText: 'First name',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                controller: _lastNameTextController,
                decoration: const InputDecoration(hintText: 'Last name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _emailaddressTextController,
                decoration: const InputDecoration(
                  hintText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                controller: _phonenumberTextController,
                decoration: const InputDecoration(hintText: 'Phone number',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                controller: _passwordTextController,
                decoration: const InputDecoration(hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                controller: _confirmpasswordTextController,
                decoration: const InputDecoration(hintText: 'Confirm Password',
                  border: OutlineInputBorder(),
                ),
              ),


              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                      return states.contains(MaterialState.disabled) ? null : Colors.white;
                    }),
                    backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                      return states.contains(MaterialState.disabled) ? null : Colors.blue;
                    }),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>WelcomeScreen()));
                  },
                  // onPressed: _formProgress == 1 ? _showWelcomeScreen : null,
                  child: const Text('Sign up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedProgressIndicator extends StatefulWidget {
  final double value;

  const AnimatedProgressIndicator({
    required this.value,
  });

  @override
  State<StatefulWidget> createState() {
    return _AnimatedProgressIndicatorState();
  }
}

class _AnimatedProgressIndicatorState extends State<AnimatedProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _curveAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    final colorTween = TweenSequence([
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.red, end: Colors.orange),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.orange, end: Colors.yellow),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.yellow, end: Colors.green),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin:Colors.green, end: Colors.black),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin:Colors.black, end: Colors.pinkAccent),
        weight:1,
      )
    ]);


    _colorAnimation = _controller.drive(colorTween);
    _curveAnimation = _controller.drive(CurveTween(curve: Curves.easeIn));
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.animateTo(widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => LinearProgressIndicator(
        value: _curveAnimation.value,
        valueColor: _colorAnimation,
        backgroundColor: _colorAnimation.value?.withOpacity(0.4),
      ),
    );
  }
}