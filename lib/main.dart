import 'package:flutter/material.dart';
import 'package:movie_ticket_app/components/red_rounded_action_button.dart';
import 'package:movie_ticket_app/const.dart';
import 'package:movie_ticket_app/screens/buy_ticket.dart';
import 'components/background_gradient_image.dart';
import 'components/dark_borderless_button.dart';
import 'components/movie_app_bar.dart';
import 'components/primary_rounder_button.dart';
import 'model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Ticket app ',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int index = 1;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final String backgroundImage = movies[widget.index].imageURL;
    final String age = movies[widget.index].age;
    final String rating = movies[widget.index].rating.toString();
    final String year = movies[widget.index].date.year.toString();
    final String categories = movies[widget.index].categorires;
    final String technology = movies[widget.index].technology;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundGradientImage(
            image: Image.network(
              backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                MovieAppBar(),
                Padding(padding: EdgeInsets.symmetric(vertical: 50.0)),
                Text(
                  'NEW.MOVIE',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset('assets/images/logo.png'),
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    DarkBorderlessButton(
                      text: 'Popular with Friends',
                      callback: () {},
                    ),
                    DarkBorderlessButton(text: age, callback: () {}),
                    PrimaryRoundedButton(
                      text: rating,
                      callback: () {},
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        year,
                        style: kSmallMainTextStyle,
                      ),
                      Text('•', style: kPromaryColorTextStyle),
                      Text(categories, style: kSmallMainTextStyle),
                      Text('•', style: kPromaryColorTextStyle),
                      Text(technology, style: kSmallMainTextStyle),
                    ],
                  ),
                ),
                Image.asset('assets/images/divider.png'),
                RedRoundedActionButton(
                    text: 'BUY TICKET',
                    callback: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BuyTicket(movies[widget.index].title),
                        ),
                      );
                    }),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return MovieCard(
                              title: movies[index].title,
                              imageLink: movies[index].imageURL,
                              active: index == widget.index ? true : false,
                              callBack: () {
                                setState(() {
                                  widget.index = index;
                                });
                              });
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String imageLink;

  final String title;

  final Function callBack;

  final bool active;

  MovieCard(
      {@required this.title,
      @required this.imageLink,
      @required this.callBack,
      @required this.active});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: InkWell(
            onTap: callBack,
            child: SizedBox(
              width: active
                  ? MediaQuery.of(context).size.width / 3
                  : MediaQuery.of(context).size.width / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.network(imageLink),
              ),
            ),
          ),
        ),
        Text(active ? title : '', style: kMovieNameStyle)
      ],
    );
  }
}
