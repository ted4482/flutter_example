import 'package:flutter/material.dart';

const assetImagePath = 'assets/images/';
const bannerImage = '$assetImagePath/banner.jpg';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local 파일 활용하기"),
      ),
      body: const MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            // 네트워크 사용시 추천 cached_network_image
            children: [
              Image.asset(bannerImage),
              Image.network('https://naverpa-phinf.pstatic.net/MjAyMzExMjJfMjcy/MDAxNzAwNjE0NTI2NjQw.iC79XXU2zXiefH2zO0TPstP-0xm3nvn9COH7liLiIFsg.45NW7s60KRiJIdgkIaDJbdm6qLFzeAOq2U4BgmMw8Ssg.PNG/%ED%85%8C%EC%8A%A4%ED%8A%B8_%EC%99%84%EC%84%B1%EC%9A%A9_17006145266168860938584154193559.png',)
        ]));
  }
}
