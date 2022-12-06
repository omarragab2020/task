import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullSnackScreen extends StatelessWidget {
  const FullSnackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_sharp),
                    const SizedBox(width: 10),
                    const CircleAvatar(
                      backgroundImage: ExactAssetImage(
                        'assets/images/image1.png',
                      ),
                      maxRadius: 20,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: const [
                        Text(
                          'Fullsnack Designers',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text("7 Online,from 12 peoples"),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.video_call),
                    const Spacer(),
                    const Icon(Icons.access_time_filled),
                  ],
                ),
              ),
              const Divider(thickness: 2, height: 50),
              Container(
                width: Get.width * 0.7,
                decoration: const BoxDecoration(color: Color(0xffF7F7F7)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Mike Mazowski ',
                                style: TextStyle(color: Colors.orange),
                              ),
                              Spacer(),
                              Text('admin',
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                              'Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination'),
                          const Align(
                              alignment: Alignment.centerRight,
                              child: Text('16.4')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 68),
                child: Image.asset(
                  'assets/images/Rectangle.png',
                  fit: BoxFit.fill,
                  height: 100,
                  width: 204,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    backgroundImage: ExactAssetImage(
                      'assets/images/image1.png',
                    ),
                    maxRadius: 20,
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  Image.asset(
                    'assets/images/Rectangle2.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Image.asset(
                    'assets/images/Rectangle1.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: Get.width * 0.5,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          color: Color(0xff2F80ED)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            'That’s very nice place! you guys made a very good decision. Can’t wait to go on vacation!'),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const CircleAvatar(
                      backgroundImage: ExactAssetImage(
                        'assets/images/image1.png',
                      ),
                      maxRadius: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: const [
                    Text('. . .'),
                    SizedBox(width: 10),
                    CircleAvatar(
                      backgroundImage: ExactAssetImage(
                        'assets/images/image1.png',
                      ),
                      maxRadius: 10,
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      backgroundImage: ExactAssetImage(
                        'assets/images/image1.png',
                      ),
                      maxRadius: 10,
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      backgroundImage: ExactAssetImage(
                        'assets/images/image1.png',
                      ),
                      maxRadius: 10,
                    ),
                    Text('+2 others are typing')
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: const [
                        Text(
                          '#Genral',
                          style: TextStyle(color: Color(0xff2F80ED)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_drop_up_outlined,
                          color: Color(0xff2F80ED),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Color(0xff2F80ED),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.emoji_emotions_outlined),
                        SizedBox(width: 10),
                        Text('write a message....'),
                        Spacer(),
                        Icon(Icons.attach_file),
                        Icon(
                          Icons.keyboard_voice_sharp,
                          color: Color(0xff2F80ED),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
