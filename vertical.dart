import 'package:flutter/material.dart';

class ShimmerBox extends StatelessWidget {
  const ShimmerBox({super.key, required this.fex, required this.widthFactor});

  final int fex;
  final double widthFactor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: fex,
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}

class ShimmerDetialsLoading extends StatefulWidget {
  const ShimmerDetialsLoading({super.key});

  @override
  State<ShimmerDetialsLoading> createState() => _ShimmerDetialsLoadingState();
}

class _ShimmerDetialsLoadingState extends State<ShimmerDetialsLoading> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerBox(fex: 6, widthFactor: 1),
          SizedBox(height: 10,),
          ShimmerBox(fex: 1, widthFactor: 1),
          SizedBox(height: 10,),
          ShimmerBox(fex:1, widthFactor:0.73),
          SizedBox(height: 10,),
          ShimmerBox(fex: 6, widthFactor: 1),
          SizedBox(height: 10,),
          ShimmerBox(fex: 1, widthFactor: 1),
          SizedBox(height: 10,),
          ShimmerBox(fex:1, widthFactor:0.73),
          SizedBox(height: 10,),ShimmerBox(fex: 6, widthFactor: 1),
          SizedBox(height: 10,),
          ShimmerBox(fex: 1, widthFactor: 1),
          SizedBox(height: 10,),
          ShimmerBox(fex:1, widthFactor:0.73),
          SizedBox(height: 10,),
          
        ],
      ),
    );
  }
}
