import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main()
{
  runApp(const BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  const BasketballPointsCounter({super.key});

  @override
  State<BasketballPointsCounter> createState() => _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {

  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Basketball Points Counter',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: HexColor('#F26F15'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    Image.asset(
                      'images/basketball.png',
                      height: 150,
                      width: 150,
                    ),
                    const Text(
                      'Team A',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 96,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: ()
                      {
                        setState(()
                        {
                          teamAPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor('#F26F15'),
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                      ),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: ()
                      {
                        setState(()
                        {
                          teamAPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#F26F15'),
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                      ),
                      child: const Text(
                        'Add 2 Points',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                    onPressed: ()
                    {
                      setState(()
                      {
                        teamAPoints += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: HexColor('#F26F15'),
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                    ),
                    child: const Text(
                      'Add 3 Points',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ],
                ),
                const SizedBox(
                  height: 525,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    Image.asset(
                        'images/basketball.png',
                        height: 150,
                        width: 150,
                      ),
                    const Text(
                      'Team B',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 96,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: ()
                      {
                        setState(()
                        {
                          teamBPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#F26F15'),
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                      ),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: ()
                      {
                        setState(()
                        {
                          teamBPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#F26F15'),
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                      ),
                      child: const Text(
                        'Add 2 Points',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: ()
                      {
                        setState(()
                        {
                          teamBPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#F26F15'),
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                      ),
                      child: const Text(
                        'Add 3 Points',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 75,
            ),
            ElevatedButton(
              onPressed: ()
              {
                setState(()
                {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('#F26F15'),
                  minimumSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
              ),
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
