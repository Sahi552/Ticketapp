import 'package:flutter/material.dart';
import 'package:ticket/Basement/Res/styles.dart';
import 'package:ticket/Basement/Utils/hotel_json.dart';

class HotelView extends StatefulWidget {
  const HotelView({super.key});

  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  late int hotelIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      hotelIndex = args["index2"];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                hotelList[hotelIndex]['hotel_name'],
                style: Appstyle.headLine02.copyWith(color: Appstyle.hotelText),
              ),
              background: Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(hotelList[hotelIndex]['image']),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    " Newsletter cover image Mega Walk-In Drive @Nov 9th 2024 Author image	Career For Freshers Read this article on LinkedIn to join the conversation Read on LinkedIn Mega Walk-In Jobs Recruitment at Many Big Multinationals Companies for Various sectors In Various Domain such Information Technology, Financial Services, Legal, HR, Human Resorcess, Engineering, automobile, construction, healthcare, oil and gas industries, Entertainment, Supply Chain, Logistics, Management, Operation, Customer services, Sales, Marketing, Digital Services, Cyber securities, AI, Legal, Power, Energy. Infrastructure, Solar, Energy, Digital, Robotics and so many more in 2024 Mega Walk-In Interview on 8th Nov - 9th Nov 2024 In L&T, HCLTech, Wipro, Infosys, TCS, Tata Technology, Deloitte, Biocon, Accenture, Hexaware, Suzlon, Tata Group, Hexaware, Tech Mahindra, Suzlon, Walmart, Bechtel and many more MNCS Walk-In Interview 2024, Walk-In Drive for Graduate Freshers, Entry Level and Mid Level to Experience professionals at anywhere in PAN India LocationsCapgemini Walk-In Interview | 9th Nov 2024 Mega L&T Walk-In Interview | 10th Nov 2024 Tata Consulting Engineers Virtual Interview | 9th Nov 2024 Atos Eviden Walk-In Interview | 8th Nov 2024 Wipro Walk-In Interview | 11th Nov to 15th Nov 2024 Accenture Walk-In Interview | 9th Nov 2024 Megha Engineering and Infrastructures MEIL Walk-In Interview | 9th Nov 2024 TATA Advanced Systems Virtual Interview 202 Mega TCS Walk-In Interview | 9th Nov 2024 Capgemini Virtual Interview Drive | 9th Nov 2024 TCS Walk-In Interview | 12th Oct 2024 Tata Projects Virtual Recruitment Drive | 12th Nov 2024 L&T Walk In Drive | 9th Nov 2024 L&T Walk-In Interview | 9th Nov 2024 L&T Virtual Hiring Drive | 8th Nov – 9th Nov 2024 For more detail's information Walk-In Interview"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    " Newsletter cover image Mega Walk-In Drive @Nov 9th 2024 Author image	Career For Freshers Read this article on LinkedIn to join the conversation Read on LinkedIn Mega Walk-In Jobs Recruitment at Many Big Multinationals Companies for Various sectors In Various Domain such Information Technology, Financial Services, Legal, HR, Human Resorcess, Engineering, automobile, construction, healthcare, oil and gas industries, Entertainment, Supply Chain, Logistics, Management, Operation, Customer services, Sales, Marketing, Digital Services, Cyber securities, AI, Legal, Power, Energy. Infrastructure, Solar, Energy, Digital, Robotics and so many more in 2024 Mega Walk-In Interview on 8th Nov - 9th Nov 2024 In L&T, HCLTech, Wipro, Infosys, TCS, Tata Technology, Deloitte, Biocon, Accenture, Hexaware, Suzlon, Tata Group, Hexaware, Tech Mahindra, Suzlon, Walmart, Bechtel and many more MNCS Walk-In Interview 2024, Walk-In Drive for Graduate Freshers, Entry Level and Mid Level to Experience professionals at anywhere in PAN India LocationsCapgemini Walk-In Interview | 9th Nov 2024 Mega L&T Walk-In Interview | 10th Nov 2024 Tata Consulting Engineers Virtual Interview | 9th Nov 2024 Atos Eviden Walk-In Interview | 8th Nov 2024 Wipro Walk-In Interview | 11th Nov to 15th Nov 2024 Accenture Walk-In Interview | 9th Nov 2024 Megha Engineering and Infrastructures MEIL Walk-In Interview | 9th Nov 2024 TATA Advanced Systems Virtual Interview 202 Mega TCS Walk-In Interview | 9th Nov 2024 Capgemini Virtual Interview Drive | 9th Nov 2024 TCS Walk-In Interview | 12th Oct 2024 Tata Projects Virtual Recruitment Drive | 12th Nov 2024 L&T Walk In Drive | 9th Nov 2024 L&T Walk-In Interview | 9th Nov 2024 L&T Virtual Hiring Drive | 8th Nov – 9th Nov 2024 For more detail's information Walk-In Interview"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    " Newsletter cover image Mega Walk-In Drive @Nov 9th 2024 Author image	Career For Freshers Read this article on LinkedIn to join the conversation Read on LinkedIn Mega Walk-In Jobs Recruitment at Many Big Multinationals Companies for Various sectors In Various Domain such Information Technology, Financial Services, Legal, HR, Human Resorcess, Engineering, automobile, construction, healthcare, oil and gas industries, Entertainment, Supply Chain, Logistics, Management, Operation, Customer services, Sales, Marketing, Digital Services, Cyber securities, AI, Legal, Power, Energy. Infrastructure, Solar, Energy, Digital, Robotics and so many more in 2024 Mega Walk-In Interview on 8th Nov - 9th Nov 2024 In L&T, HCLTech, Wipro, Infosys, TCS, Tata Technology, Deloitte, Biocon, Accenture, Hexaware, Suzlon, Tata Group, Hexaware, Tech Mahindra, Suzlon, Walmart, Bechtel and many more MNCS Walk-In Interview 2024, Walk-In Drive for Graduate Freshers, Entry Level and Mid Level to Experience professionals at anywhere in PAN India LocationsCapgemini Walk-In Interview | 9th Nov 2024 Mega L&T Walk-In Interview | 10th Nov 2024 Tata Consulting Engineers Virtual Interview | 9th Nov 2024 Atos Eviden Walk-In Interview | 8th Nov 2024 Wipro Walk-In Interview | 11th Nov to 15th Nov 2024 Accenture Walk-In Interview | 9th Nov 2024 Megha Engineering and Infrastructures MEIL Walk-In Interview | 9th Nov 2024 TATA Advanced Systems Virtual Interview 202 Mega TCS Walk-In Interview | 9th Nov 2024 Capgemini Virtual Interview Drive | 9th Nov 2024 TCS Walk-In Interview | 12th Oct 2024 Tata Projects Virtual Recruitment Drive | 12th Nov 2024 L&T Walk In Drive | 9th Nov 2024 L&T Walk-In Interview | 9th Nov 2024 L&T Virtual Hiring Drive | 8th Nov – 9th Nov 2024 For more detail's information Walk-In Interview"),
              )
            ]),
          )
        ],
      ),
    );
  }
}
