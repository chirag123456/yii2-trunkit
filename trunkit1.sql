/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 5.7.24-0ubuntu0.16.04.1-log : Database - trunkit1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`trunkit1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `trunkit1`;

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `city` */

/*Table structure for table `cms` */

DROP TABLE IF EXISTS `cms`;

CREATE TABLE `cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `is_active` enum('Y','N') DEFAULT NULL,
  `is_delete` enum('Y','N') DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `cms` */

insert  into `cms`(`id`,`name`,`content`,`is_active`,`is_delete`,`created_by`,`updated_by`,`date_created`,`date_updated`,`slug`) values 
(1,'What is Trunkit','<p>Trunkit is a package ride share website that will enable you to quickly find someone with an empty trunk, truck or trailer that that is going your way and can take your item for you. It will also enable drivers to post their trips so they can fill their trunk, truck or trailer to off-set the cost of their travel or their daily commute.</p>\r\n\r\n<p>Trunkit will provide a fast and environmentally friendly way to get any item (big or small) to any destination and at a fraction of the cost. Imagine getting a computer, bike, skis or even a couch anywhere you need fast and cheap. When a Trunkit driver arrives, simply &ldquo;trunkit&rdquo; - no packaging required. We will even have drivers with a hitch! Need to get a boat or travel trailer somewhere? Trunkit!</p>\r\n\r\n<p>At Trunkit.com you will be able to search your location and destination to find people with space for your item already going your way - today!</p>\r\n','Y','N',1,1,'2018-11-05 04:22:12','2018-11-05 04:22:12','what-is-trunkit'),
(2,'Affordable Delivery','Time is NOT money with Trunkit because the drivers are already going your way and there is no return trip. Trunkit drivers are simply off-setting the cost of their travel to destinations they were already going to.','Y','N',1,1,'2018-08-28 01:09:31','2018-08-28 01:09:31','affordable-delivery'),
(3,'Trustworthy Delivers','Trunkit deliverers are just like you - in fact they will be you. Trunkit doesn&rsquo;t employ &ldquo;drivers.&rdquo; We provide people the ability to capitalize on filling their trunks for trips when they&rsquo;re going your way. We provide you the ability to offset the cost of your trip or commute. In addition, Trunkit will provide profiles of drivers including their photo, verifications and feedback from other users.','Y','N',1,1,'2018-08-23 00:43:22','2018-08-23 00:43:22','trustworthy-drivers'),
(4,'Environmentally Friendly','Using Trunkit will reduce the number of trucks on the road and will save trees as no packaging is required. There simply isn&rsquo;t a greener way to get your stuff to where it needs to go.','Y','N',1,1,'2018-08-28 01:09:53','2018-08-28 01:09:53','environmentally-friendly'),
(5,'About Us','<p class=\"maintype\">Meet the Smith Boys, the founders of Trunkit, Greg (dad), Carter (right), Alex (left). The Smith Boys first thought about package ride sharing after seeing so many empty trucks and trailers when traveling on the famous Coquihalla Hwy in Beautiful BC. Instead of counting road signs when traveling, they started counting empty pick-up trucks and realized that the majority had no load. Station wagons and hatchbacks were the same - plenty of room in their trunks for more stuff, your stuff! The idea was born!\r\n                    </p>\r\n<p class=\"maintype\">The Smith Boys live in Pitt Meadows, BC. When they’re not working on Trunkit you can find them at the hockey rink, football field or a track. In their spare time they enjoy water sports or tearing down some trails on their mountain bikes.</p>','Y','N',1,1,'2018-08-30 08:08:47','2018-08-30 08:08:47','about-us'),
(6,'Home Footer Text','<p>The Smith Boys are super excited to launch Trunkit and look forward to solving your delivery needs with fast, cheap and environmentally friendly transport.</p>\r\n                    <p class=\"email-text\">Please e-mail us at  <a href=\"mailto:info@trunkit.com\">info@trunkit.com</a> if you want to learn more about us.	</p>','Y','N',1,1,'2018-08-03 03:00:17','2018-08-03 03:00:17','home-footer-text'),
(7,'What is Trunkit','Trunkit is a package ride share website that will enable you to quickly find someone with an empty trunk, truck or trailer that that is going your way and can take your item for you. It will also enable drivers to post their trips so they can fill their trunk, truck or trailer to off-set the cost of their travel or their daily commute. Trunkit will provide a fast and environmentally friendly way to get any item (big or small) to any destination and at a fraction of the cost. Imagine getting a computer, bike, skis or even a couch anywhere you need fast and cheap. When a Trunkit driver arrives, simply &ldquo;trunkit&rdquo; - no packaging required. We will even have drivers with a hitch! Need to get a boat or travel trailer somewhere? Trunkit! At Trunkit.com you will be able to search your location and destination to find people with space for your item already going your way - today!','Y','Y',1,1,'2018-08-28 01:09:05','2018-08-28 01:09:05','what-is-trunkit'),
(8,'Contact Us','What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','Y','N',74,74,'2018-08-29 09:21:52','2018-08-29 09:21:52','contact-us'),
(9,'Terms of Service','<p>These Terms of Service apply to all services provided by Trunkit (a company registered in British Columbia, Canada and incorporated on April 10, 2018 under the BC Business Corporations Act with Certificate of Incorporation 76732 5715 BC0001)<br>\r\n&nbsp;<br>\r\nThe following Terms of Service will inform you of what we do, how we do it and everything in between.&nbsp; If you still have questions, please contact us at <a href=\"mailto:info@trunkit.com\">info@trunkit.com</a><br>\r\n&nbsp;<br>\r\nTrunkit provides an online platform that connects people who have empty space in their vehicle and will be making a trip, with individuals who are seeking to transport items, which are made available through our Website at <a href=\"https://trunkit.xceltec.com\">www.trunkit.com</a> and any other Subdomains or Mobile Applications which Trunkit makes the Services available.<br>\r\n&nbsp;<br>\r\nBy using the Service, you understand and agree to be legally bound by these Terms of Service (&ldquo;<strong>Terms of Service</strong>&rdquo;) whether you register to use the Service or not. Please read carefully as these Terms of Service govern your access and use of the Service, and all Members&#39; (described below) and Trunkit content. If you do not agree with the Terms of Service, then you have no right to continue using or accessing the Service and all Members&#39; and Trunkit content. Failure to abide by the Terms of Service as hereby stated may subject you to civil and criminal penalties.<br>\r\n&nbsp;<br>\r\nThe Service is offered as an online platform through which Drivers (defined below) and Users (defined below) may post and arrange Trips (defined below) for transport (defined below) purposes directly with each other and in a strictly non-commercial or professional context. By proceeding to use and access the Service, you confirm that you acknowledge that Trunkit is in no way a party to any agreements entered into between Drivers and Users, and has no control over the conduct of Drivers, Users or Members of our Service. You understand that Trunkit is not an insurer, agent or broker, and you disclaim us of all liability in this regard to maximum extent permitted by law.<br>\r\nIt is important to remember that Trunkit does not hire drivers.&nbsp; We certainly care about your experience and we provide guidance to Drivers on our website, but we do not take responsibility for any actions a Driver takes.&nbsp; We encourage all users to provide reviews about Drivers and also Users and Trunkit has the right to remove the accounts of any Driver or User on our website at any time.&nbsp; Be safe, be smart, use common sense and contact us if you have an issue with any Driver or User.&nbsp;&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Common Definitions </strong></p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&bull; A &ldquo;<strong>Member</strong>&rdquo; is a Driver, a User, both or any other registered user of the Service.<br>\r\n&bull; A &ldquo;<strong>Driver</strong>&rdquo; is a person using the Service and offering space in in their vehicle to share with other Users.<br>\r\n&bull; A &ldquo;<strong>User</strong>&rdquo; is a person using the Service and booking space in a Driver&rsquo;s vehicle.<br>\r\n&bull; An &ldquo;<strong>Account</strong>&rdquo; is created by a Member to access the Trunkit service.<br>\r\n&bull; A &ldquo;<strong>Trip</strong>&rdquo; occurs between an origin and a destination at a given date and time and includes details such as a pick-up point, drop-off point, space for items and the amount of space available. A Trip is created and maintained by a Driver.<br>\r\n&bull; A &ldquo;<strong>Booking</strong>&rdquo; refers to the act of paying the Contribution for a Trip through the Service before the Trip happens.<br>\r\n&bull; A &quot;<strong>Request</strong>&rdquo; is posted by a User looking for a Trip between an origin and a destination on a particular date.<br>\r\n&bull; A &ldquo;<strong>Contribution</strong>&rdquo; or <strong>&quot;Trip Contribution</strong>&quot; refers to a sum of money agreed and paid by the Passenger to the Driver to cover the costs of a particular Trip and can&rsquo;t accrue profit for the Driver.<br>\r\n&bull; A &quot;<strong>Booking Fee</strong>&rdquo; is a service fee of 15% added atop of a Contribution and paid by the User when Booking on a Trip.<br>\r\n&bull; A &ldquo;<strong>Payment</strong>&rdquo; refers to the total amount of money paid by a User when Booking on a Trip (Contribution + Booking Fee).<br>\r\n&bull; A &ldquo;<strong>Payout</strong>&rdquo; refers to the Contributions accrued from Bookings on a Trip and sent back to the Driver using their preferred Payout Method.<br>\r\n&bull; A &ldquo;<strong>Payout Method</strong>&rdquo; refers to the method used to send a Payout to a Driver, either Direct Deposit or PayPal.<br>\r\n&bull; The &quot;<strong>Cancellation Allowance</strong>&quot; is the ability for Drivers to cancel a maximum of one Trip with approved space or one approved Booking every six months.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Changes to the Terms of Service</strong></p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Trunkit reserves the right, at its sole discretion, to modify the Service or to modify these Terms of Service, including the Booking Fee, at any time and without prior notice. If we modify these Terms of Service, we will either post the modification on the Website or via the Mobile Application or otherwise provide you with notice of the modification. We will also update the &quot;Last Updated&quot; date at the top of these Terms of Service. By continuing to access or use the Service after we have posted a modification on the Website or via the Mobile Application or have provided you with notice of a modification, you are indicating that you agree to be bound by the modified Terms of Service. If the modified Terms of Service are not acceptable to you, your only recourse is to cease using the Service.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Your Responsibilities </strong></p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>3.1</strong> We ask Members to verify their identity through their email or phone number. We do not investigate any Member&#39;s reputation, conduct, morality, criminal background or any other information posted on the Service. You are responsible for exercising common sense and determining the suitability of other Members of the Service. We encourage you to communicate directly with potential Drivers or Users through the Service and to take the same precautions you would when meeting a person for the first time.<br>\r\n<strong>3.2</strong> You are solely responsible for your interactions with other Members of our Service. We will not be responsible for any damage or harm resulting from your interactions with other Members. We reserve the right to monitor interactions and restrict access to any Member who is posting material we consider objectionable.<br>\r\n<strong>3.3</strong> Release.<br>\r\nAs our Service is a facilitator, in the event of a dispute between you and another Member, you release us (and our affiliates) from claims, demands and damages (actual or consequential) of any kind and nature, known or unknown, suspected and unsuspected, disclosed and undisclosed, arising out or in any way connected with such disputes.<br>\r\n&nbsp;<br>\r\n<strong>4. Your Conduct </strong><br>\r\nAs a Member of this Service, you must act responsibly and exercise good judgment. This includes, but is not limited to, the following:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Driving carefully, respecting the rules of the road, not being under the influence and not violating any applicable laws or regulations and driving a vehicle in good functioning order that has passed any required vehicle inspections.</p>\r\n	</li>\r\n	<li>\r\n	<p>Not infringing the rights of any third party, including without limitation, intellectual property, privacy, publicity or contractual rights.</p>\r\n	</li>\r\n	<li>\r\n	<p>Not using information obtained through this Service for any unauthorized purpose.</p>\r\n	</li>\r\n	<li>\r\n	<p>Not interfering with or damaging the Service.</p>\r\n	</li>\r\n	<li>\r\n	<p>Not using this Service to distribute spam.</p>\r\n	</li>\r\n	<li>\r\n	<p>Respecting other Members: no harassment, abuse (verbal or physical) or stalking is tolerated on the Service.</p>\r\n	</li>\r\n	<li>\r\n	<p>Not using the Site for commercial activities, unless otherwise agreed directly with Trunkit.</p>\r\n	</li>\r\n	<li>\r\n	<p>Not registering to the site on behalf of another individual.</p>\r\n	</li>\r\n	<li>\r\n	<p>To being at least 18 years old and able to enter into legally binding contracts to access and use the Trunkit Service or register for a Trunkit account. By accessing or using the Trunkit Service you represent and warrant that you are 18 or older and have the legal capacity and authority to enter into a contract.</p>\r\n	</li>\r\n	<li>\r\n	<p>Not assisting a third party in doing any of the above.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Report misconduct if you feel that another Member of the Trunkit Service has acted inappropriately including but not limited to offensive, violent or sexually inappropriate behavior, or engages in other disturbing conduct, you must immediately report such person to the appropriate authorities and to us by contacting us, providing that your report does not obligate us to take any action or cause us to incur any liability.<br>\r\n<strong>5. Use and Access of the Service </strong><br>\r\n<strong>5.1</strong> NO commercial activities, unless otherwise agreed by contract with Trunkit. The Service is strictly limited to providing a Service for Drivers and Users to transport items in a private capacity. The Services may not be used to offer or accept transport for profit or in any commercial or professional context, unless otherwise agreed by contract with Trunkit.<br>\r\n<strong>5.2</strong> Drivers may not profit from any Trip. The Service and the cost Contribution may only be used to discharge the Driver&rsquo;s costs and may not be used to generate any profit for the Driver. The Driver is not entitled to make profit by virtue of the amount of the Trip Contribution, the types of Trips offered by a Driver, the frequency of such Trips or the number of items transported. This applies to all activities, arrangements and services booked using the Service and any additional services or activities which may be agreed between Driver and User.<br>\r\n<strong>5.3</strong> The Driver must not provide additional services to any User for profit or gain (and the User may not accept or ask for any such services) including (without limitation), waiting time, additional drop-off and pick-up points and collecting additional items.<br>\r\n<strong>5.4</strong> All Trips and pick-up and drop-off points must be pre-agreed through the Service in advance. Drivers may not collect any items from any location which has not been pre-agreed with the Users through the Service.<br>\r\n<strong>5.5</strong> Drivers may NOT post trips speculatively. Drivers can only post trips if they are 100% sure of when and where they are traveling, to ensure a reliable service for Users.<br>\r\n<strong>5.6</strong> Drivers are reminded that using the Service in a commercial or professional capacity may invalidate a Driver&rsquo;s insurance. Trunkit&rsquo;s liability is limited in accordance with these Terms of Service and in particular Trunkit is not liable in respect to any breach of any agreement between Members or breach by a Member of these Terms of Service including where any Driver (in breach of these Terms of Service) offers services through the Service in a professional or commercial capacity (thereby potentially invalidating their insurance). It is up to Members to be vigilant in ensuring that services are not provided on a commercial basis.<br>\r\n<strong>5.7</strong> Trunkit only provides transport services. The Service is a communications platform for Members to transact with one another. Trunkit does not interfere with Trips, destinations or timings. The agreement is between the Driver and the User. Trunkit is not a party to any agreement or transaction between Members, nor is Trunkit liable in respect of any matter arising which relates to a Booking between Members. Trunkit will not act as an agent for any Member.<br>\r\n<strong>5.8</strong> Any breach of these Terms of Service will give rise to immediate suspension of a Member&rsquo;s account and they may be restricted from accessing any further Services.<br>\r\n<strong>5.9</strong> Access to Trunkit services requires each Member of Trunkit to create an Account to access the Service. To create an Account, you must:<br>\r\n5.9.1 Register with your email and password, and complete all required fields on the registration form.<br>\r\n5.9.2 Verify your email address and have access to that email address while making use of the Service.<br>\r\n5.9.3 Verify your cell phone number and have access to communicate with other Members via calls and text messages while making use of the Service.<br>\r\n5.9.4 Provide a well-lit profile photo of yourself that clearly shows your face.<br>\r\n5.9.5 Provide an accurate description of yourself.<br>\r\n5.9.6 Provide your age and gender.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Agree to our Terms of Service and Privacy Policy.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>5.10</strong> When creating your Account, you agree to provide accurate and true information, and to update it through your profile or by notifying Trunkit.<br>\r\n<strong>5.11</strong> You agree to be the sole owner of your Account, and to not share its access with anyone.<br>\r\n<strong>5.12</strong> You agree that all representations, communications, bookings, payments and the use of any of the other features provided by Service are only made by you, and never by a third party, or on behalf of a third party.<br>\r\n<strong>5.13</strong> You agree not to create or use, under your own identity or that of a third party, Accounts other than that initially created by you.<br>\r\n<strong>5.14</strong> You may have to enter an email and password as part of the registration process. You are solely responsible for the confidentiality and use of these. You must notify us immediately of any unauthorized use of your login details or any other breach of security.<br>\r\n<strong>5.15</strong> Eligibility to use the Service: Trunkit offers a service which allows Members to contact each other to arrange transport of items (not people). The User is expected to contact the Driver through the Trunkit service to arrange transport and any other conditions.<br>\r\nThe eligibility of a Member to use this service is to Trunkit&rsquo;s discretion and as such Trunkit reserves the right to withdraw that service from any Member at any time.<br>\r\n<strong>5.16</strong> Conditions under which the Service is provided, Trunkit reserves the right to:<br>\r\n(i) Withdraw the Service it provides and restrict it to a cohort of Members and / or only several destinations.<br>\r\n(ii) Make exceptions to the policies of the Service</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Features of the Service </strong></p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.1</strong> Trips: The Driver proposes Trips on the Service by providing the origin and destination, date and time of departure, space available and any other relevant information.<br>\r\nIn the scope of a Trip, Users can exchange Messages and place Bookings with the driver.<br>\r\nTrunkit provides a messaging service to enable communication between Trunkit Members. There are two types of Messages that can be exchanged through the Trunkit messaging service.<br>\r\n<strong>6.1.1</strong> Public Messages can be exchanged between the Driver and the User before a Booking is made to discuss finer details about the Trip.<br>\r\nPublic Messages are visible to other Trunkit Members, as they contain information that could be relevant to the Trunkit community.<br>\r\n<strong>6.1.2</strong> Private Messages can be exchanged between the Driver and the User once a Booking has been made, or if the Driver has invited a User to transport additional items.<br>\r\nPrivate messages are only visible by the Driver and the User who are part of the message.<br>\r\n<strong>6.1.3</strong> Please note that we do not allow the exchange of personal contact details such as phone numbers, email addresses or website URLs through the User messaging service until a Booking has been approved.<br>\r\n<strong>6.2</strong> Bookings: The User may book from the Service only by performing an online payment with a valid credit or debit card. The payment is received by Trunkit and constitutes a Booking on the Trip.<br>\r\nAfter performing a successful Booking on a Trip, the Driver and User are bound to that Booking and any cancellations are subject to the Cancellations terms.<br>\r\nThe Driver and User are informed of the Booking by notifications sent to their email address or phone registered with Trunkit. The Booking is only valid under the Member&rsquo;s registered name on the Service and is void under any other name. The Driver is subject, upon a Booking placed by a User, to complete the Trip as agreed by each party. The Driver must ensure there is enough space in their vehicle to accommodate each and every item securely in their vehicle or towed in a safe and legal manner.<br>\r\nDrivers have the choice between two systems to receive bookings on their Trip:<br>\r\n<strong>6.2.1</strong> Request to book: Under the Request to book system, the driver indicates they wish to manually approve or decline each Booking Request on their Trip.<br>\r\n<strong>6.2.2</strong> Users: Request to book on a Trip with a driver by placing a payment authorization on their card. Users may also specify a Booking Request expiry time between 1 and 24 hours, during which the driver has to manually approve or decline the Booking Request.<br>\r\n<strong>6.2.3</strong> If the driver approves the Booking Request, the booking is confirmed and the User&rsquo;s payment is captured and a charge is made on the User&rsquo;s card.<br>\r\nIf the driver declines the Booking Request, the booking is voided and the User&rsquo;s payment is not captured and the authorization is released from the User&rsquo;s card.<br>\r\n<strong>6.2.4</strong> If the driver doesn&rsquo;t approve or decline the Booking Request, the Booking Request automatically expires once the Booking Request expiry time is reached and the user&rsquo;s payment is not captured.<br>\r\n<strong>6.2.5</strong> The User can also withdraw a Booking Request at no charge if the driver hasn&rsquo;t previously approved it. The User&rsquo;s payment is not captured and the authorization is released from the User&rsquo;s card.<br>\r\n<strong>6.3</strong> Currency: All Payments and Payouts on Trunkit are processed in Canadian Dollars (currency symbol $CAD).</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Payments by Users</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.4.1</strong> Online payments - NO cash. To provide a reliable and successful experience, Trunkit operates a Service with online payments. Within the scope of this Service, all Payments are to be processed online using Trunkit&rsquo;s secure payment service.<br>\r\nAny other forms of online or offline payments, including but not limited to cash and e-transfers, are not allowed and may lead to the closure of your Account.<br>\r\n<strong>6.4.2</strong> Collection of payments:&nbsp; To collect payments, the Service uses Paypal a third-party, secure online payments gateway. Paypal is certified to PCI Service Provider Level 1, the most stringent level of certification. Your credit card information is kept safely with Paypal and no sensitive information hits the Trunkit servers.<br>\r\nBy using Trunkit, you agree for Paypal to securely store and retrieve your personal credit information as depicted in the Paypal Terms of Service<br>\r\nOnce your money is processed with Paypal, it is safely kept in escrow with Trunkit</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Booking fee: In the scope of the Service with Bookings, Trunkit collects a service fee on each Booking (&quot;Booking fee&quot;).</p>\r\n	</li>\r\n	<li>\r\n	<p>The Booking fee is added during the online payment process to the Trip Contribution as specified by the Driver to cover their driving costs.</p>\r\n	</li>\r\n	<li>\r\n	<p>The Booking fee equates to 15% of the total Trip Contribution.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.5.1</strong> Interests: The payments for Contributions placed through the Service&rsquo;s Booking service and owed to Drivers might accrue interests over time if they are not paid out in a timely manner. This might happen under exceptional circumstances. The Member agrees never to claim any interest accrued on any payment they are due.<br>\r\n<strong>6.5.2</strong> Fraud and Identity Members agree to respond to any demand from Trunkit, the bank or any legal entities with regards to preventing or fighting fraud and/or money laundering. In particular, Members agree to comply with such requests by supplying valid identification documents. In the event of an immediate response to such requests, Members agree in advance to allow Trunkit to freeze any funds they might be owed in relation to any Trips or Bookings on the Service or/and to restrict their access to the Service.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Payouts to Drivers</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.6.1</strong> Payout methods Bank account and PayPal Payouts are the only two Payout Methods supported by Trunkit.<br>\r\nDrivers can receive a Payout either:<br>\r\n(i) Into their bank account by entering their bank account details into their Trunkit account<br>\r\n(ii) Into their Paypal account by linking their Paypal account to their Trunkit account<br>\r\nBank account payouts can only be processed to Canadian bank accounts in $CAD.<br>\r\nPayPal payouts can be processed in both $CAD currency and foreign currencies. For payouts in foreign currencies on PayPal, an exchange rate applies.<br>\r\nTrunkit is not responsible for verifying bank account numbers and PayPal accounts, and any payouts sent to erroneous bank accounts or PayPal accounts cannot be reverted.<br>\r\n<strong>6.6.2</strong> Payout process after a Trip, the Payment made by a Passenger goes through a clearing period of four (4) days. During this clearing period, Users have the opportunity to dispute their Booking on the Trip. In the absence of a dispute during this clearing period, the Payment is cleared on the fourth (4th) day.<br>\r\nOnce the Payment is cleared, the Contribution portion of the Payment (the Payment minus the Booking Fee) is ready to be sent out to the Driver as a Payout.<br>\r\nAt this point, the Driver must have a valid Payout Method set in their Trunkit account.<br>\r\n<strong>6.6.3</strong> Once a valid Payout Method has been entered by the Driver and the Payment has passed the clearing period, a Payout is ready to be sent to the Driver. Payouts are sent to Drivers once per week.<br>\r\nAfter a Payout has been sent to a Driver, there are additional Processing Times for the Payout to reach the Driver&rsquo;s preferred Payout account, depending on the selected Payout Method:<br>\r\n(i) For bank accounts: estimated 2-8 business days<br>\r\n(ii) For PayPal: estimated 0-2 business days<br>\r\nIf a valid Payout Method isn&rsquo;t entered within twelve (12) months of the Payout being created, the Payout is forfeited and funds are deemed to belong to Trunkit.<br>\r\n<strong>6.6.4</strong> Conditions for the Driver to get paid in the scope of a Trip between a Driver and one or many Users, the Driver must:<br>\r\na) Turn up to the pick-up point five (5) minutes in advance.<br>\r\nb) Before departure, inform the Users approved on a Trip of any modifications to the Trip details that might affect the Users, included but not restricted to changes in the timing of the Trip and/or the pick-up or drop-off points. If a User refuses a change on that Trip before departure, they are in full right to cancel their Booking without fees and without any Contribution going towards the Driver&rsquo;s costs.<br>\r\nc) Wait for the User (or the items) at the pick-up point for up to 10 minutes past the agreed upon pick-up time, and give any missing Users a courtesy call before leaving without their item(s)<br>\r\nTrunkit reserves the right to refund a User and/or close the Driver&rsquo;s Account if they fail to fulfil the above conditions on a Trip.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Policies on cancellations, no-shows and disputes</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.7.1</strong> Driver Cancellation Policy: A driver may cancel a trip without approved items for transport at any time, with no penalty.<br>\r\nA driver may cancel a maximum of either one trip with approved booking(s) or one approved booking in a six-month period, called the &quot;cancellation allowance&quot;. If a second cancellation occurs in the six-month period following the first cancellation, the driver&#39;s Trunkit account will be put under review and may be blocked.<br>\r\nWhen a driver cancels a trip with approved booking(s) or an approved booking, the following rules apply:<br>\r\n<strong>6.7.1A</strong> A refund to the passenger(s) is processed: they are refunded 100% of the Trip Contribution and the 15% Booking fee.<br>\r\n<strong>6.7.1B</strong> The driver receives a cancellation auto-review on their profile.<br>\r\n<strong>6.7.1C</strong> An issue is raised with the Trunkit team to assess whether the driver was at fault and if the cancellation counts towards their cancellation allowance.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>If the driver is considered at fault, the cancellation counts towards the driver&#39;s cancellation allowance.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the driver is considered not at fault, the cancellation isn&#39;t counted towards their cancellation allowance.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.7.2</strong> Trunkit reserves the right to block a driver&#39;s account at any time in the scope of a cancellation if there is reason to believe they are providing a negative experience for other members.<br>\r\n<strong>6.7.3</strong> Driver No-show Policy:&nbsp; A driver not showing up on a trip with approved items for transport is serious and may lead to immediate account termination.<br>\r\nWhen a driver receives a no-show from a User in the scope of a trip, an issue is raised with the Trunkit team to collect more information on the no-show:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>If the no-show cannot be verified or was left by mistake, it is rejected and there is no penalty for the driver.</p>\r\n	</li>\r\n	<li>\r\n	<p>If the no-show is verified and the driver was not at fault, a no-show review is added to the driver&rsquo;s profile and the driver&rsquo;s account is kept open</p>\r\n	</li>\r\n	<li>\r\n	<p>If the no-show is verified and the driver was at fault, a no-show review is added to the driver&rsquo;s profile and the driver&rsquo;s account may be blocked by our team.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trunkit reserves the right to block a driver&#39;s account at any time in the scope of a no-show if there is reason to believe they are providing a negative experience for other members.</p>\r\n	</li>\r\n	<li>\r\n	<p>User Cancellation Policy</p>\r\n\r\n	<ol>\r\n		<li>\r\n		<p>If the User cancels a Booking more than 24 hours before the Trip&rsquo;s scheduled departure time, the User receives a refund for the full amount of the Trip Contribution and as a Cancellation fee, Trunkit keeps the 15% Booking fee.</p>\r\n		</li>\r\n		<li>\r\n		<p>If the User cancels less than 24 hours before the Trip&rsquo;s scheduled departure time, the Driver is granted 50% of the Contribution amount, the User receives a refund for the remaining 50% of the Contribution amount and Trunkit keeps the 15% Booking fee.</p>\r\n		</li>\r\n		<li>\r\n		<p>If the User cancels after the Trip&rsquo;s scheduled departure time or does not show up within 10 minutes of the Trip&rsquo;s scheduled departure time, the Driver receives the 100% of the Contribution amount and Trunkit keeps the 15% Booking fee. No refund is granted to the User. In the event of a cancellation, space freed up by the User on the Trip are offered to other Members of the Service and subject to the Booking and Cancellations policies in this document.</p>\r\n		</li>\r\n		<li>\r\n		<p>If a Driver cancels a Trip subsequently to a User cancelling a Booking, a full refund is issued to the User, including the 15% Booking fee.</p>\r\n		</li>\r\n		<li>\r\n		<p>Under Request to book:</p>\r\n\r\n		<ol>\r\n			<li>\r\n			<p>A User may withdraw a Booking Request before it has been approved at no charge.</p>\r\n			</li>\r\n			<li>\r\n			<p>If the Booking Request expires, the User is not charged.</p>\r\n			</li>\r\n			<li>\r\n			<p>In both cases, the 15% Booking fee isn&rsquo;t charged and a full refund is issued.</p>\r\n			</li>\r\n		</ol>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n	<li>\r\n	<p>Repeated cancellation of Bookings by a User may lead to the closure of their Trunkit Account.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.7.6</strong> User No-show Policy<br>\r\nIf a User was booked on a trip and does not show up, or does not have an item ready for pick-up, our User no-show policy applies.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>The driver receives 100% of the Users payment, and Trunkit keeps the 15% booking fee</p>\r\n	</li>\r\n	<li>\r\n	<p>A no-show review is added to the Users profile</p>\r\n	</li>\r\n	<li>\r\n	<p>Trunkit reserves the right to block a User&rsquo;s account at any time in the scope of a no-show if there is reason to believe they are providing a negative experience for other members.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.7.7</strong> Disputing cancellations, bookings or payments:&nbsp; A Driver or User has four (4) days after a Trip was scheduled to depart on the Service to dispute a Booking, Cancellation or Payment that would result in the Driver receiving a Payout. If there has been no disputes from the Driver or User within four (4) days after the Trip was scheduled to depart on the Service on any Bookings, Cancellations or Payments on that Trip resulting in Contributions for the Driver, or the User has indicated the Trip has successfully happened through the Service or through any other communication channels, including our Support channels or any other online or offline communication channels, inside or outside the scope of our Service, the Payment to the Driver will proceed as per usual and under the rules defined in this Section.<br>\r\nA Driver or User may raise a dispute for a Booking within the four (4) day dispute window by using the review system provided by the Service.<br>\r\nBeyond the four (4) day dispute window after a Trip was scheduled to depart on the Service, we will not process a refund to the User or the Driver.<br>\r\n<strong>6.7.8</strong> Insurance: The Driver takes the responsibility to insure their vehicle as per the laws in effect and to check the validity of their insurance before every Trip. The Driver must also have a valid driver&rsquo;s license.<br>\r\nIt is each Driver&rsquo;s and User&rsquo;s responsibility to verify with their insurance company they are covered while using the Trunkit Service.<br>\r\nFor Drivers with company issued vehicles, it is also their duty to check their insurance policies.<br>\r\nBoth Driver and Users are informed of the possibility for their insurance companies to refuse to cover the damage caused in a possible incident while using a private vehicle for commercial purposes.<br>\r\nThe Member accepts the full financial responsibility for any uncovered insurance claims that might result from an accident, and agrees that Trunkit is in no way liable.<br>\r\nTrunkit reserves the right to suspend at any time a Member&rsquo;s Account and withhold any outstanding payments in suspicion or acknowledgement of the Member practicing any commercial activity related to the Service. Trunkit also reserves the right to communicate any illegal activity through the Service to the relevant authorities.<br>\r\n<strong>6.7.9</strong> Litigations &amp; conflicts Trunkit can provide a contact form for Members to report any conflicts and resolve litigations. This form is destined, in particular, to help Members resolve litigations around Bookings and cancellations.<br>\r\nTrunkit does its best to address all demands in a timely manner but has no obligation to solve all conflicts that arise on the Service between Members.<br>\r\nIf a litigation goes unsolved between Driver and User, Trunkit reserves the right to withhold any outstanding money paid by the User until an agreeable solution is found between User and Driver or a legal decision is imposed.<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In Plain terms, all members (Drivers and Users) need to ensure that either their vehicle or item being transported have proper insurance.&nbsp; Trunkit does not cover or take responsibility for damage or items lost or stolen.&nbsp;<br>\r\n<strong>6.8</strong> Verification: Verification is available from the Trunkit Service. We reserve the right to expand or limit the availability of our verification or terminate the verification program at any time.<br>\r\n<strong>6.8.1 </strong>Security: Trunkit is very concerned with safeguarding your information. When you enter sensitive information (such as a digital copy of your identity documents: driver&#39;s license, ID card, passport or any other form of ID) on our verification form, we encrypt that information using secure socket layer technology (SSL). We follow generally accepted industry standards to protect the personal information submitted to us, both during transmission and once we receive it. No method of transmission over the Internet, or method of electronic storage, is 100% secure, however. Therefore, we cannot guarantee its absolute security. If you have any questions about security on our Service, you can contact us.<br>\r\nWe will make any legally required disclosures of any breach of the security, confidentiality, or integrity of your unencrypted electronically stored personal data to you via email or conspicuous posting on the Service and application in the most expedient time possible and without unreasonable delay, insofar as consistent with (i) the legitimate needs of law enforcement or (ii) any measures necessary to determine the scope of the breach and restore the reasonable integrity of the data system.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Your responsibilities</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>We ask Members to verify their identity by linking:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Their email address to the Service</p>\r\n	</li>\r\n	<li>\r\n	<p>At least one social media account to the Service</p>\r\n	</li>\r\n	<li>\r\n	<p>Their cell phone number to the Service</p>\r\n	</li>\r\n	<li>\r\n	<p>Uploading a legal form of identification to the Service</p>\r\n\r\n	<ol>\r\n		<li>\r\n		<p>For Drivers, the only accepted forms of identification are their personal driver&rsquo;s license with a valid expiry date or a recent ICBC abstract.</p>\r\n		</li>\r\n		<li>\r\n		<p>For Users, the only accepted forms of identification are their personal driver&rsquo;s license with a valid expiry date, a recent driver&#39;s license abstract, a national identity document or a passport.</p>\r\n		</li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>6.8.3</strong> We do not investigate any Member&#39;s reputation, conduct, morality, criminal background or any other information. You are responsible for exercising common sense when determining the suitability of other Members of the Service. Be smart, be safe.<br>\r\n<strong>6.8.4</strong> Privacy: Information collected by Trunkit during the verification process will not be sold, shared or rented to others. Changes to the verification will be communicated via notifications on the Service, our newsletter or email updates.<br>\r\nThe files collected as part of the verification process on the Service will be used for manually verifying validity of details provided. Once the information has been verified, we will destroy any document you might have uploaded to our server (photo or scan of passport, ID card, driver&#39;s license) within 7 days of verification. The documents might stay in backup files for up to 30 days, and then destroyed forever. We do not keep any other copies of your personal files anywhere, in accordance with Canadian Law.<br>\r\nThe information in the files collected will not be copied to text or stored in our database. We merely use the process to visually verify identities and do not store the information present on the documents on our servers or in our database.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Third-Party Content</strong></p>\r\n	</li>\r\n</ol>\r\n\r\n<p>In using our Service, you may be exposed to content from other Members or third parties (&quot;<strong>Third-Party Content</strong>&quot;) either on our Service or through links to third-party websites. We do not control and have no responsibility for Third-Party Content. You must evaluate and bear all risks associated with Third-Party Content.<br>\r\nLiability, Warranties, Indemnity, Intellectual property and other Legal matters<br>\r\n<strong>7.1</strong> Limits of liability: We shall not be liable for damages of any kind (including but not limited to direct, indirect, incidental, general, special, consequential, exemplary or punitive damages) even if we have been advised of the possibility of such damages, arising from or relating to a) the Member or inability to use our Service b) the cost of replacement of any goods, services or information obtained as a result of our Service c) disclosure of, unauthorized access to or alteration of your content d) damages for loss or corruption of data or programs, service interruptions or procurement of substitute services, even if we know or have been advised of the possibility of such damages e) your or anyone else&#39;s conduct or acts in connection with the use of the services, including without limitation, bodily injury, emotional distress, death or any other damages resulting from communication or meeting with other registered Members or persons introduced to you via registered Members, whether online or offline) any other matter arising from, relating to or connected with our services or these terms. Trunkit&rsquo;s liability to any Member&rsquo;s claim won&rsquo;t exceed the maximum amount of $25.<br>\r\n<strong>7.2</strong> Disclaimer of warranties: If you use our Service, you do so at your sole risk. Our services are provided on an &#39;as available&#39; basis. We expressly disclaim, and you waive, all warranties of any kind, whether express or implied, including, without limitation, implied warranties of merchantability, fitness for a particular purpose and non-infringement.<br>\r\nWe do not warrant that:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Our services will meet your requirements or expectations.</p>\r\n	</li>\r\n	<li>\r\n	<p>Our services will be uninterrupted, timely, secure, or error-free.</p>\r\n	</li>\r\n	<li>\r\n	<p>Any information that you obtain through our services will be accurate or reliable.</p>\r\n	</li>\r\n	<li>\r\n	<p>Any errors in any data or software will be corrected.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>7.3</strong> Indemnity: You shall defend, indemnify and hold us harmless from any claim, demand, action, damage, loss, cost or expense, including without limitation reasonable attorneys&#39; fees, arising out or relating to your use of our Service. If you are obligated to indemnify us, we will have the right, to control any action or proceeding and determine whether we wish to settle it, and if so, on what terms.<br>\r\n<strong>7.4</strong> Intellectual Property: All material on our Service is protected by rights copyright, trademarks, service marks, patents, trade secrets or other proprietary right and laws as may be applicable. Unless expressly authorized by us, you may not sell, license, rent, modify, distribute, copy, reproduce, transmit, publicly display, publicly perform, publish, adapt, edit or create derivative works from such material.<br>\r\nYou may not systematically retrieve data or other content from our Service for your own devious plans, including re-creating databases, directories or downloads. You may not display any portion of our Service in a frame without our prior written consent. You may however, establish ordinary links to the Service without our written permission.<br>\r\n<strong>7.5</strong> Legal compliance<br>\r\nYou shall use the Service in a manner consistent with any and all applicable national and international laws and regulations.<br>\r\n&nbsp;<br>\r\n&nbsp;<br>\r\n<strong>8. Termination &amp; Discontinuance of Service</strong><br>\r\n<strong>8.1</strong> Termination<br>\r\nWe may, in our discretion and without liability to you, with or without cause (such cause may include your breach of these Terms of Service) with or without prior notice and at any time, terminate your access to the Service.<br>\r\n<strong>8.2</strong> Discontinuance of Service We may, in our discretion and without liability to you, with or without prior notice and at any time, modify or discontinue, temporarily or permanently, any portion of the Service.</p>\r\n&nbsp;<br>\r\n&nbsp;<br>\r\n','Y','N',1,1,'2018-11-06 00:53:18','2018-11-06 00:53:18','terms-of-service'),
(10,'Privacy Policy','<p><strong>Current version: 1.0</strong></p>\r\n\r\n<p>Trunkit is the sole owner of the information collected on this Service. We will not sell, share, or rent information to others in ways different from what is disclosed in this statement.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Registration</strong></p>\r\n\r\n<p>In order to sign up on Trunkit.com, a Member might be required to provide their contact information (name and email address). This information is used for verification and to contact the Member regarding services on Trunkit for which they have expressed interest. By registering on Trunkit, a Member consents to their data being used on any other existing or future websites operated by Trunkit.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>A cookie is a piece of data stored on the Member&rsquo;s hard drive containing information about the Member. Usage of a cookie is in no way linked to any personally identifiable information while on our Site. For instance, by setting a cookie on Trunkit, the Member would not have to enter in a password more than once, thereby saving time while on Trunkit. If a Member rejects the cookie, they may still use Trunkit.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>Trunkit takes every precaution to protect our Members&rsquo; information. If you have any questions about the security of the Service, please contact us.</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Safety and Compliance with Law</strong></p>\r\n\r\n<p>Trunkit may disclose your information to courts, law enforcement or governmental authorities, or authorized third parties, if and to the extent we are required to do so by law or if such disclosure is reasonably necessary.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Notification of changes</strong></p>\r\n\r\n<p>If we make changes to our privacy policy, we will email a link to this page to all our Members so they are always aware of what information we collect, how we use it and under what circumstances, if any, we disclose it. We will use information in accordance with the privacy policy under which the information was collected.</p>\r\n','Y','N',1,1,'2018-09-14 05:45:39','2018-09-14 05:45:39','privacy-policy');

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `country` */

insert  into `country`(`id`,`country_name`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'India',1,'2018-03-24 09:54:53',1,'2018-03-24 09:54:53','Y','N'),
(2,'United States of America',1,'2018-04-05 12:46:18',1,'2018-04-05 12:46:18','Y','N');

/*Table structure for table `home_image` */

DROP TABLE IF EXISTS `home_image`;

CREATE TABLE `home_image` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `created_by` int(5) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(5) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  `is_delete` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `home_image` */

insert  into `home_image`(`id`,`image_name`,`name`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'',NULL,1,'2018-08-09 02:46:07',1,'2018-08-09 02:46:07','Y','Y'),
(2,'5b6d5842edaee.jpg','Img4',1,'2018-08-09 02:59:05',1,'2018-08-10 05:17:54','Y','Y'),
(3,'5b6d62be993a7.jpg','Img3',1,'2018-08-09 03:05:35',1,'2018-08-10 06:02:38','Y','Y'),
(4,'5b6d57e6787e0.jpg','Img2',1,'2018-08-09 05:30:51',1,'2018-08-10 05:16:22','N','Y'),
(5,'5b6d62abd6726.jpg','Test',1,'2018-08-09 06:33:32',1,'2018-08-10 06:02:19','Y','Y'),
(6,'5b6d700cc7a09.png','Volvo Truck',1,'2018-08-10 06:59:24',1,'2018-08-10 06:59:24','Y','N'),
(7,'5b7eae468c8dd.jpeg','Box Truck',1,'2018-08-10 06:59:46',1,'2018-08-23 08:53:26','Y','Y'),
(8,'5b7d32f6621f8.png','Image1',1,'2018-08-22 05:55:02',1,'2018-08-29 01:53:02','Y','N'),
(9,'https://trunkit.xceltec.com/media/home_image/5b7d330829b42.png','Test55',1,'2018-08-22 05:55:20',1,'2018-08-23 08:55:38','Y','Y'),
(10,'5b920824c855b.png','Test99',1,'2018-08-22 05:55:55',1,'2018-09-07 01:09:56','Y','N'),
(11,'5b7e3ee093eea.png','Pic1',1,'2018-08-23 00:58:08',1,'2018-08-23 00:58:08','Y','N'),
(12,'5b7e3fd061187.png','Pic2',1,'2018-08-23 01:02:08',1,'2018-08-23 01:02:08','Y','N'),
(13,'5b7e4002b1cb4.png','Pic3',1,'2018-08-23 01:02:58',1,'2018-08-23 01:02:58','Y','N'),
(14,'5b7e401b84a19.png','Pic4',1,'2018-08-23 01:03:23',1,'2018-08-29 01:52:50','Y','N'),
(15,'5b7ea58a85223.jpeg','Image1',1,'2018-08-23 08:09:29',1,'2018-08-23 08:16:10','Y','Y'),
(16,'5b7eaf4c1f5e2.jpeg','Test111',1,'2018-08-23 08:57:48',1,'2018-08-23 08:57:48','Y','Y'),
(17,'5b7eb91e3d956.png','Test9999',1,'2018-08-23 08:58:28',1,'2018-08-23 09:39:42','Y','Y'),
(18,'5b7eb935cab25.png','ttt',1,'2018-08-23 09:40:05',1,'2018-08-23 09:40:05','Y','Y'),
(19,'5b7f8fb7531ed.jpeg','test9',1,'2018-08-24 00:24:41',1,'2018-08-24 00:55:23','Y','Y'),
(20,'5b7f92bfa4c72.jpeg','Test5',1,'2018-08-24 01:08:00',1,'2018-08-24 01:08:15','Y','Y'),
(21,'5b7f9c6ebfc26.jpeg','test',1,'2018-08-24 01:49:34',1,'2018-08-24 01:49:34','Y','Y'),
(22,'5b8634e82802e.jpeg','im1',1,'2018-08-29 01:53:44',1,'2018-08-29 01:53:44','Y','Y'),
(23,'5b86697da9376.jpeg','Truck Image',1,'2018-08-29 05:38:05',1,'2018-08-29 05:38:05','Y','N'),
(24,'5b868628ddace.jpeg','Home ',74,'2018-08-29 07:40:24',1,'2018-09-05 08:00:14','Y','N'),
(25,'5b868f7817b87.jpeg','Heavy Truck',74,'2018-08-29 08:17:43',74,'2018-08-29 08:20:08','Y','Y'),
(26,'5ba47be1d2336.jpeg','test',1,'2018-09-21 01:04:33',1,'2018-10-02 00:50:34','Y','N'),
(27,'5bd2dcf40b037.jpeg','New',1,'2018-10-26 05:23:00',1,'2018-10-26 05:23:00','N','Y');

/*Table structure for table `item_size` */

DROP TABLE IF EXISTS `item_size`;

CREATE TABLE `item_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `item_size` */

insert  into `item_size`(`id`,`name`,`is_active`,`is_delete`) values 
(1,'Small Item','Y','N'),
(2,'Medium Item','Y','N'),
(3,'Large Item','Y','N'),
(4,'XLarge Item','Y','N'),
(5,'XXLarge Item','Y','Y'),
(6,'Testtt','Y','Y'),
(7,'test','N','Y');

/*Table structure for table `item_type` */

DROP TABLE IF EXISTS `item_type`;

CREATE TABLE `item_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `item_type` */

insert  into `item_type`(`id`,`name`,`is_active`,`is_delete`) values 
(1,'Briefcase','Y','N'),
(2,'Box','Y','N'),
(3,'Trolly Bag','Y','N'),
(4,'Large Bag','Y','N'),
(5,'Others','Y','N'),
(6,'NewWWWW','Y','Y'),
(36,'New Item','N','Y'),
(37,'chair','Y','Y'),
(38,'test','N','Y'),
(45,'person','N','N'),
(46,'Juan','N','N');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `type` enum('TRIP','REQUEST') DEFAULT NULL,
  `title` text,
  `description` text,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  `is_delete` enum('Y','N') DEFAULT 'N',
  `is_seen` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`id`,`order_id`,`from_user_id`,`to_user_id`,`post_id`,`type`,`title`,`description`,`created_date`,`updated_date`,`created_by`,`updated_by`,`is_active`,`is_delete`,`is_seen`) values 
(4,2,100,101,4,'REQUEST','Trip Notification','You have a trip notification for order number \"2\" from \"Steve Smith\" for \"Washington, DC, USA\" to \"Tampa, FL, USA\".','2018-11-05 07:21:47','2018-11-05 08:19:20',100,101,'Y','N','Y'),
(5,3,101,100,4,'REQUEST','Trip Notification','You have a trip notification for order number \"3\" from \"Adam Voges\" for \"Washington\" to \"tampa\".','2018-11-05 07:24:47','2018-11-05 08:19:48',101,100,'Y','N','Y'),
(6,3,100,101,4,'REQUEST','Trip Notification','Your trip status for order number \"3\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-05 08:16:07','2018-11-05 08:56:36',100,101,'Y','N','Y'),
(7,3,100,100,4,'TRIP','Trip Notification','Your request has been accepted for order number \"3\" by \"Steve Smith\" for \"Washington\" to \"tampa\". Please chat with \"Steve Smith\" to finalize the trip detail.','2018-11-05 08:16:13','2018-11-05 08:56:48',100,100,'Y','N','Y'),
(8,2,101,101,4,'REQUEST','Trip Notification','Your trip status for order number \"2\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-05 08:19:10','2018-11-05 08:22:51',101,101,'Y','N','Y'),
(9,2,101,100,4,'TRIP','Trip Notification','Your request has been accepted for order number \"2\" by \"Adam Voges\" for \"Washington\" to \"tampa\". Please chat with \"Adam Voges\" to finalize the trip detail.','2018-11-05 08:19:15','2018-11-05 08:19:39',101,100,'Y','N','Y'),
(10,2,101,100,4,'REQUEST','Payment Notification','You have received a payment from \'Adam Voges\'. Your trip status has been updated to \'paid\'. Please start the trip','2018-11-05 08:21:15','2018-11-05 08:39:13',101,100,'Y','N','Y'),
(11,2,100,101,4,'REQUEST','Trip Notification','Your trip status for order number \'2\' has been updated to \'in transit\'. ','2018-11-05 08:26:58','2018-11-05 08:46:10',100,101,'Y','N','Y'),
(12,4,101,109,6,'REQUEST','Trip Notification','You have a trip notification for order number \"4\" from \"Adam Voges\" for \"Vancouver, BC\" to \"Whistler, BC\".','2018-11-05 08:49:15','2018-11-05 08:51:55',101,109,'Y','N','Y'),
(13,4,109,101,6,'REQUEST','Trip Notification','Your trip status for order number \"4\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-05 08:51:45','2018-11-05 08:52:00',109,101,'Y','N','Y'),
(14,4,109,109,6,'TRIP','Trip Notification','Your request has been accepted for order number \"4\" by \"Shane Watson\" for \"Vancouver, BC\" to \"Whistler, BC\". Please chat with \"Shane Watson\" to finalize the trip detail.','2018-11-05 08:51:51','2018-11-05 09:31:23',109,109,'Y','N','Y'),
(15,3,101,100,4,'REQUEST','Payment Notification','You have received a payment from \'Adam Voges\'. Your trip status has been updated to \'paid\'. Please start the trip','2018-11-05 08:57:42','2018-11-05 08:57:42',101,101,'Y','N','N'),
(16,3,109,101,4,'REQUEST','Trip Notification','Your trip status for order number \'3\' has been updated to \'in transit\'. ','2018-11-05 08:58:58','2018-11-05 09:04:44',109,101,'Y','N','Y'),
(17,3,101,101,4,'REQUEST','Thank you for choosing Trunkit','Thank you for choosing Trunkit to deliver your items. Your trip status for order number \'3\' has been updated to \'delivered\'. Please review your experience.','2018-11-05 09:00:42','2018-11-05 09:04:59',101,101,'Y','N','Y'),
(18,3,101,101,4,'REQUEST','Trip Notification','Thank you for choosing Trunkit. Your trip status for order number . \'3\' has been \'reviewed and commented\'. From “My Account” check the “Profile and Reviews” for more details.  ','2018-11-05 09:01:42','2018-11-05 09:08:59',101,101,'Y','N','Y'),
(19,3,109,101,4,'REQUEST','Trip Notification','Thank you for choosing Trunkit to deliver your items. Your trip status for order number \'3\' has been updated to \'completed\'. ','2018-11-05 09:02:42','2018-11-05 09:08:47',109,101,'Y','N','Y'),
(20,5,83,80,8,'REQUEST','Trip Notification','You have a trip notification for order number \"5\" from \"Chirag Kakkad\" for \"Los Angeles, CA, USA\" to \"Chicago, IL, USA\".','2018-11-05 12:20:46','2018-11-05 12:28:06',83,80,'Y','N','Y'),
(21,5,80,83,8,'REQUEST','Trip Notification','Your trip status for order number \"5\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-05 12:22:15','2018-11-05 12:28:15',80,83,'Y','N','Y'),
(22,5,80,80,8,'TRIP','Trip Notification','Your request has been accepted for order number \"5\" by \"Samir Pathan\" for \"Los Angeles, CA, USA\" to \"Chicago, IL, USA\". Please chat with \"Samir Pathan\" to finalize the trip detail.','2018-11-05 12:22:20','2018-11-05 12:27:53',80,80,'Y','N','Y'),
(23,6,83,80,10,'REQUEST','Trip Notification','You have a trip notification for order number \"6\" from \"Chirag Kakkad\" for \"Vancouver, BC\" to \"Whistler, BC\".','2018-11-05 13:01:19','2018-11-05 13:02:34',83,80,'Y','N','Y'),
(24,6,80,83,10,'REQUEST','Trip Notification','Your trip status for order number \"6\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-05 13:02:25','2018-11-05 13:02:25',80,80,'Y','N','N'),
(25,6,80,80,10,'TRIP','Trip Notification','Your request has been accepted for order number \"6\" by \"Samir Pathan\" for \"Vancouver, BC\" to \"Whistler, BC\". Please chat with \"Samir Pathan\" to finalize the trip detail.','2018-11-05 13:02:30','2018-11-05 13:25:39',80,80,'Y','N','Y'),
(26,7,83,80,12,'REQUEST','Trip Notification','You have a trip notification for order number \"7\" from \"Chirag Kakkad\" for \"Las Vegas, NV, USA\" to \"Chicago, IL, USA\".','2018-11-05 13:26:15','2018-11-05 13:26:49',83,80,'Y','N','Y'),
(27,7,80,83,12,'REQUEST','Trip Notification','Your trip status for order number \"7\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-05 13:26:41','2018-11-05 13:26:41',80,80,'Y','N','N'),
(28,7,80,80,12,'TRIP','Trip Notification','Your request has been accepted for order number \"7\" by \"Samir Pathan\" for \"Las Vegas, NV, USA\" to \"Chicago, IL, USA\". Please chat with \"Samir Pathan\" to finalize the trip detail.','2018-11-05 13:26:46','2018-11-05 13:26:46',80,80,'Y','N','N'),
(32,9,85,86,15,'REQUEST','Trip Notification','You have a trip notification for order number \"9\" from \"Arta A\" for \"Vancouver, BC\" to \"Whistler, BC\".','2018-11-05 15:19:21','2018-11-05 15:22:52',85,86,'Y','N','Y'),
(33,9,86,85,15,'REQUEST','Trip Notification','Your trip status for order number \"9\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-05 15:20:24','2018-11-05 15:27:31',86,85,'Y','N','Y'),
(34,9,86,86,15,'TRIP','Trip Notification','Your request has been accepted for order number \"9\" by \"Juan Aguas\" for \"Vancouver, BC\" to \"Whistler, BC\". Please chat with \"Juan Aguas\" to finalize the trip detail.','2018-11-05 15:20:28','2018-11-05 15:23:41',86,86,'Y','N','Y'),
(35,9,85,86,15,'REQUEST','Payment Notification','You have received a payment from \'Arta A\'. Your trip status has been updated to \'paid\'. Please start the trip','2018-11-05 15:25:53','2018-11-05 15:30:34',85,86,'Y','N','Y'),
(36,9,86,85,15,'REQUEST','Trip Notification','Your trip status for order number \'9\' has been updated to \'in transit\'. ','2018-11-05 15:27:07','2018-11-05 15:28:20',86,85,'Y','N','Y'),
(37,9,85,85,15,'REQUEST','Thank you for choosing Trunkit','Thank you for choosing Trunkit to deliver your items. Your trip status for order number \'9\' has been updated to \'delivered\'. Please review your experience.','2018-11-05 15:28:33','2018-11-05 15:30:41',85,85,'Y','N','Y'),
(38,9,85,86,15,'REQUEST','Rating Notification','Thank you for choosing Trunkit.Your trip status for order number \'9\' has been \'reviewed and commented\'. From “My Account” check the “Profile and Reviews” for more details. ','2018-11-05 15:29:50','2018-11-05 15:30:51',85,86,'Y','N','Y'),
(39,9,86,85,15,'REQUEST','Trip Notification','Thank you for choosing Trunkit to deliver your items. Your trip status for order number \'9\' has been updated to \'completed\'. ','2018-11-05 15:31:19','2018-11-06 17:25:06',86,85,'Y','N','Y'),
(43,11,80,83,3,'REQUEST','Trip Notification','You have a trip notification for order number \"11\" from \"Samir Pathan\" for \"Whistler, BC\" to \"Vancouver, BC\".','2018-11-06 03:27:09','2018-11-06 03:27:45',80,83,'Y','N','Y'),
(44,11,83,80,3,'REQUEST','Trip Notification','Your trip status for order number \"11\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-06 03:27:36','2018-11-06 03:27:36',83,83,'Y','N','N'),
(45,11,83,83,3,'TRIP','Trip Notification','Your request has been accepted for order number \"11\" by \"Chirag Kakkad\" for \"Whistler, BC\" to \"Vancouver, BC\". Please chat with \"Chirag Kakkad\" to finalize the trip detail.','2018-11-06 03:27:42','2018-11-06 03:27:42',83,83,'Y','N','N'),
(46,12,80,83,22,'REQUEST','Trip Notification','You have a trip notification for order number \"12\" from \"Samir Pathan\" for \"Vancouver, BC\" to \"Whistler, BC\".','2018-11-06 03:32:39','2018-11-06 03:33:16',80,83,'Y','N','Y'),
(47,12,83,80,22,'REQUEST','Trip Notification','Your trip status for order number \"12\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-06 03:33:08','2018-11-06 03:47:26',83,80,'Y','N','Y'),
(48,12,83,83,22,'TRIP','Trip Notification','Your request has been accepted for order number \"12\" by \"Chirag Kakkad\" for \"Vancouver, BC\" to \"Whistler, BC\". Please chat with \"Chirag Kakkad\" to finalize the trip detail.','2018-11-06 03:33:13','2018-11-06 03:33:13',83,83,'Y','N','N'),
(49,13,80,83,24,'REQUEST','Trip Notification','You have a trip notification for order number \"13\" from \"Samir Pathan\" for \"Los Angeles, CA, USA\" to \"Chicago, IL, USA\".','2018-11-06 03:39:53','2018-11-06 03:40:30',80,83,'Y','N','Y'),
(50,13,83,80,24,'REQUEST','Trip Notification','Your trip status for order number \"13\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-06 03:40:22','2018-11-06 03:46:53',83,80,'Y','N','Y'),
(51,13,83,83,24,'TRIP','Trip Notification','Your request has been accepted for order number \"13\" by \"Chirag Kakkad\" for \"Los Angeles, CA, USA\" to \"Chicago, IL, USA\". Please chat with \"Samir Pathan\" to finalize the trip detail.','2018-11-06 03:40:27','2018-11-06 03:40:27',83,83,'Y','N','N'),
(52,14,80,109,27,'REQUEST','Trip Notification','You have a trip notification for order number \"14\" from \"Samir Pathan\" for \"North Carolina, USA\" to \"South Carolina, USA\".','2018-11-06 03:51:48','2018-11-06 03:54:15',80,109,'Y','N','Y'),
(53,14,109,80,27,'REQUEST','Trip Notification','Your trip status for order number \"14\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-06 03:52:39','2018-11-06 03:54:06',109,80,'Y','N','Y'),
(54,14,109,109,27,'TRIP','Trip Notification','Your request has been accepted for order number \"14\" by \"Shane Watson\" for \"North Carolina, USA\" to \"South Carolina, USA\". Please chat with \"Samir Pathan\" to finalize the trip detail.','2018-11-06 03:52:44','2018-11-06 03:54:28',109,109,'Y','N','Y'),
(55,14,80,109,27,'REQUEST','Payment Notification','You have received a payment from \'Samir Pathan\'. Your trip status has been updated to \'paid\'. Please start the trip','2018-11-06 03:55:44','2018-11-06 03:56:20',80,109,'Y','N','Y'),
(56,14,109,80,27,'REQUEST','Trip Notification','Your trip status for order number \'14\' has been updated to \'in transit\'. ','2018-11-06 03:56:25','2018-11-06 03:56:25',109,109,'Y','N','N'),
(57,14,80,80,27,'REQUEST','Thank you for choosing Trunkit','Thank you for choosing Trunkit to deliver your items. Your trip status for order number \'14\' has been updated to \'delivered\'. Please review your experience.','2018-11-06 03:57:02','2018-11-06 03:57:02',80,80,'Y','N','N'),
(58,14,80,109,27,'REQUEST','Rating Notification','Thank you for choosing Trunkit.Your trip status for order number \'14\' has been \'reviewed and commented\'. From “My Account” check the “Profile and Reviews” for more details. ','2018-11-06 03:59:02','2018-11-06 03:59:11',80,109,'Y','N','Y'),
(59,14,109,80,27,'REQUEST','Trip Notification','Thank you for choosing Trunkit to deliver your items. Your trip status for order number \'14\' has been updated to \'completed\'. ','2018-11-06 03:59:31','2018-11-06 03:59:31',109,109,'Y','N','N'),
(60,15,86,85,29,'REQUEST','Trip Notification','You have a trip notification for order number \"15\" from \"Juan Aguas\" for \"2017 London Street, New Westminster, BC\" to \"1200 Whistler Road, Whistler, BC\".','2018-11-06 17:23:23','2018-11-06 17:23:51',86,85,'Y','N','Y'),
(61,15,85,85,29,'REQUEST','Trip Notification','Your trip status for order number \"15\" has been updated to \"Make a Payment\". Please make a payment.','2018-11-06 17:23:44','2018-11-06 17:24:49',85,85,'Y','N','Y'),
(62,15,85,86,29,'TRIP','Trip Notification','Your request has been accepted for order number \"15\" by \"Arta A\" for \"Vancouver, BC\" to \"Whistler, BC\". Please chat with \"Arta A\" to finalize the trip detail.','2018-11-06 17:23:48','2018-11-06 17:24:15',85,86,'Y','N','Y');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `origin` varchar(250) NOT NULL,
  `origin_lat` varchar(50) DEFAULT NULL,
  `origin_long` varchar(50) DEFAULT NULL,
  `destination` varchar(250) NOT NULL,
  `destination_lat` varchar(50) DEFAULT NULL,
  `destination_long` varchar(50) DEFAULT NULL,
  `post_date` datetime NOT NULL,
  `year` int(11) DEFAULT NULL,
  `post_type` enum('TRIP','REQUEST') NOT NULL,
  `routes_via` varchar(250) DEFAULT NULL,
  `routes_via_lat` varchar(50) DEFAULT NULL,
  `routes_via_long` varchar(50) DEFAULT NULL,
  `routes_via_lat1` varchar(50) DEFAULT NULL,
  `routes_via_long1` varchar(50) DEFAULT NULL,
  `routes_via_lat2` varchar(50) DEFAULT NULL,
  `routes_via_long2` varchar(50) DEFAULT NULL,
  `routes_via_lat3` varchar(50) DEFAULT NULL,
  `routes_via_long3` varchar(50) DEFAULT NULL,
  `routes_via_lat4` varchar(50) DEFAULT NULL,
  `routes_via_long4` varchar(50) DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `order_status` enum('INITILISED','ACCEPT','IN_TRIP','DELIVERED','PAID','RATED','FINISHED','DECLINED') DEFAULT 'INITILISED',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`id`,`user_id`,`origin`,`origin_lat`,`origin_long`,`destination`,`destination_lat`,`destination_long`,`post_date`,`year`,`post_type`,`routes_via`,`routes_via_lat`,`routes_via_long`,`routes_via_lat1`,`routes_via_long1`,`routes_via_lat2`,`routes_via_long2`,`routes_via_lat3`,`routes_via_long3`,`routes_via_lat4`,`routes_via_long4`,`departure_date`,`order_status`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,100,'Washington, DC, USA','','','Tampa, FL, USA','27.950575','-82.45717760000002','2018-11-05 06:51:57',NULL,'TRIP','USAF Academy, CO, USA','','','','','','','','','','','2018-11-29','IN_TRIP',100,'2018-11-05 06:51:57',100,'2018-11-05 06:51:57','Y','N'),
(2,109,'Whistler, BC','49.255714','-123.08970099999999','Vancouver, BC','49.2827291','-123.12073750000002','2018-11-05 06:52:46',NULL,'TRIP','Vancouver, BC','53.4825575','-113.48140009999997','','','','','','','','','2018-11-07','INITILISED',109,'2018-11-05 06:52:46',109,'2018-11-05 06:52:46','Y','Y'),
(3,80,'Whistler, BC','50.1163196','-122.95735630000001','Vancouver, BC','49.2827291','-123.12073750000002','2018-11-05 06:53:54',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-07','ACCEPT',80,'2018-11-05 06:53:54',83,'2018-11-06 03:27:36','Y','N'),
(4,101,'Washington','','','tampa','','','2018-11-05 07:07:30',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-30','PAID',101,'2018-11-05 07:07:30',101,'2018-11-05 08:19:10','Y','N'),
(5,109,'Whistler Way, Whistler, BC','','','Vancouver, BC','37.4315734','-78.65689420000001','2018-11-05 08:47:57',NULL,'TRIP','Vancouver, BC','49.88415579999999','-97.19920960000002','','','','','','','','','2018-11-07','INITILISED',109,'2018-11-05 08:47:57',109,'2018-11-05 08:47:57','Y','N'),
(6,101,'Vancouver, BC','49.2827291','-123.12073750000002','Whistler, BC','','','2018-11-05 08:48:47',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-07','ACCEPT',101,'2018-11-05 08:48:47',109,'2018-11-05 08:51:45','Y','N'),
(7,80,'Los Angeles, CA, USA','34.0522342','-118.2436849','Chicago Heights, IL, USA','41.506146','-87.63559950000001','2018-11-05 12:17:23',NULL,'TRIP','Colorado Springs, CO, USA','38.8338816','-104.8213634','','','','','','','','','2018-11-10','INITILISED',80,'2018-11-05 12:17:23',80,'2018-11-05 12:17:23','Y','N'),
(8,83,'Los Angeles, CA, USA','34.0522342','-118.2436849','Chicago, IL, USA','41.8781136','-87.62979819999998','2018-11-05 12:18:47',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-10','ACCEPT',83,'2018-11-05 12:18:47',80,'2018-11-05 12:22:15','Y','N'),
(9,80,'Vancouver, BC','49.2827291','-123.12073750000002','Whistler, BC','50.1163196','-122.95735630000001','2018-11-05 12:59:28',NULL,'TRIP','Whistler, BC','50.1163196','-122.95735630000001','','','','','','','','','2018-11-10','INITILISED',80,'2018-11-05 12:59:28',80,'2018-11-05 12:59:28','Y','N'),
(10,83,'Vancouver, BC','49.2827291','-123.12073750000002','Whistler, BC','50.1163196','-122.95735630000001','2018-11-05 13:00:12',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-10','ACCEPT',83,'2018-11-05 13:00:12',80,'2018-11-05 13:02:25','Y','N'),
(11,80,'Las Vegas, NV, USA','36.1699412','-115.13982959999998','Chicago, IL, USA','41.8781136','-87.62979819999998','2018-11-05 13:20:09',NULL,'TRIP','Colorado Springs, CO, USA','38.8338816','-104.8213634','','','','','','','','','2018-11-10','INITILISED',80,'2018-11-05 13:20:09',80,'2018-11-05 13:20:09','Y','N'),
(12,83,'Las Vegas, NV, USA','36.1699412','-115.13982959999998','Chicago, IL, USA','41.8781136','-87.62979819999998','2018-11-05 13:25:00',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-10','ACCEPT',83,'2018-11-05 13:25:00',80,'2018-11-05 13:26:41','Y','N'),
(13,101,'1030 West Georgia Street, Vancouver, BC','49.2845313','-123.12192590000001','1200 Whistler Rd, Whistler, BC','50.0976973','-122.98904090000002','2018-11-05 13:37:14',NULL,'TRIP','Sea-to-Sky Highway, Whistler, BC','50.3020302','-122.57421899999997','','','','','','','','',NULL,'INITILISED',101,'2018-11-05 13:37:14',101,'2018-11-05 13:37:14','Y','Y'),
(14,109,'1030 West Georgia Street, Vancouver, BC','49.2845313','-123.12192590000001','1200 Whistler Rd, Whistler, BC','50.0976973','-122.98904090000002','2018-11-05 13:41:08',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INITILISED',109,'2018-11-05 13:41:08',101,'2018-11-05 13:44:37','Y','N'),
(15,85,'Vancouver, BC','37.4315734','-78.65689420000001','Whistler, BC','','','2018-11-05 15:17:45',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PAID',85,'2018-11-05 15:17:45',86,'2018-11-05 15:20:24','Y','N'),
(16,86,'1030 West Georgia Street, Vancouver, BC','49.2845313','-123.12192590000001','1200 Whistler Road, Whistler, BC','50.0976973','-122.98904090000002','2018-11-05 15:18:01',NULL,'TRIP','Sea-to-Sky Highway, Whistler, BC','49.6755282','-123.1569839','','','','','','','','',NULL,'IN_TRIP',86,'2018-11-05 15:18:01',86,'2018-11-05 15:18:01','Y','N'),
(18,86,'Vancouver, BC','49.2827291','-123.12073750000002','Whistler, BC','43.4722854','-80.5448576','2018-11-05 15:33:50',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INITILISED',86,'2018-11-05 15:33:50',85,'2018-11-05 15:34:34','Y','N'),
(19,85,'1075 West Broadway, Vancouver, BC','43.1057711','-83.67516330000001','1200 Whistler Way, Whistler, BC','','','2018-11-05 15:33:52',NULL,'TRIP','Sea to Sky Gondola, British Columbia 99, Squamish, BC','50.3020302','-122.57421899999997','','','','','','','','',NULL,'INITILISED',85,'2018-11-05 15:33:52',85,'2018-11-05 15:33:52','Y','Y'),
(20,83,'Vancouver, BC','49.2827291','-123.12073750000002','Whistler, BC','50.1163196','-122.95735630000001','2018-11-06 03:26:30',NULL,'TRIP','Sea to Sky Gondola, British Columbia 99, Squamish, BC','49.6755282','-123.1569839','','','','','','','','','2018-11-08','INITILISED',83,'2018-11-06 03:26:30',83,'2018-11-06 03:26:30','Y','N'),
(21,83,'Vancouver, BC','49.2827291','-123.12073750000002','Whistler, BC','50.1163196','-122.95735630000001','2018-11-06 03:31:31',NULL,'TRIP','Sea to Sky Gondola, British Columbia 99, Squamish, BC','49.6755282','-123.1569839','','','','','','','','','2018-11-08','INITILISED',83,'2018-11-06 03:31:31',83,'2018-11-06 03:31:31','Y','N'),
(22,80,'Vancouver, BC','49.2827291','-123.12073750000002','Whistler, BC','50.1163196','-122.95735630000001','2018-11-06 03:32:07',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-08','ACCEPT',80,'2018-11-06 03:32:07',83,'2018-11-06 03:33:08','Y','N'),
(23,83,'Los Angeles, CA, USA','34.0522342','-118.2436849','Chicago, IL, USA','41.8781136','-87.62979819999998','2018-11-06 03:39:28',NULL,'TRIP','Colorado Springs, CO, USA','38.8338816','-104.8213634','','','','','','','','','2018-11-10','INITILISED',83,'2018-11-06 03:39:28',83,'2018-11-06 03:39:28','Y','N'),
(24,80,'Los Angeles, CA, USA','34.0522342','-118.2436849','Chicago, IL, USA','41.8781136','-87.62979819999998','2018-11-06 03:39:41',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-10','ACCEPT',80,'2018-11-06 03:39:41',83,'2018-11-06 03:40:22','Y','N'),
(25,109,'North Carolina, USA','35.7595731','-79.01929969999998','South Carolina, USA','33.836081','-81.1637245','2018-11-06 03:48:38',NULL,'TRIP','South Carolina, USA','33.836081','-81.1637245','','','','','','','','','2018-11-08','INITILISED',109,'2018-11-06 03:48:38',109,'2018-11-06 03:48:38','Y','N'),
(26,109,'North Carolina, USA','35.7595731','-79.01929969999998','South Carolina, USA','33.836081','-81.1637245','2018-11-06 03:48:38',NULL,'TRIP','South Carolina, USA','33.836081','-81.1637245','','','','','','','','','2018-11-08','IN_TRIP',109,'2018-11-06 03:48:38',109,'2018-11-06 03:48:38','Y','N'),
(27,80,'North Carolina, USA','35.7595731','-79.01929969999998','South Carolina, USA','33.836081','-81.1637245','2018-11-06 03:50:41',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-11-08','PAID',80,'2018-11-06 03:50:41',109,'2018-11-06 03:52:39','Y','N'),
(28,86,'2017 London Street, New Westminster, BC','49.2044508','-122.95175360000002','1200 Whistler Road, Whistler, BC','50.1163196','-122.95735630000001','2018-11-06 17:05:57',NULL,'TRIP','Sea-to-Sky Highway, Whistler, BC','49.6755282','-123.1569839','','','','','','','','',NULL,'INITILISED',86,'2018-11-06 17:05:57',86,'2018-11-06 17:05:57','Y','N'),
(29,85,'Vancouver, BC','49.2827291','-123.12073750000002','Whistler, BC','','','2018-11-06 17:23:07',NULL,'REQUEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ACCEPT',85,'2018-11-06 17:23:07',85,'2018-11-06 17:23:44','Y','Y'),
(35,82,'19311 116B Avenue, Pitt Meadows, BC','49.214949','-122.68635030000002','367 Killarney Way, Vernon, BC','50.188252','-119.49924720000001','2018-11-15 11:27:55',NULL,'TRIP','Merritt, BC','50.1113079','-120.7862222','','','','','','','','',NULL,'INITILISED',82,'2018-11-15 11:27:55',82,'2018-11-15 11:27:55','Y','N');

/*Table structure for table `post_order` */

DROP TABLE IF EXISTS `post_order`;

CREATE TABLE `post_order` (
  `traking_number` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `post_request_id` int(11) DEFAULT NULL,
  `post_accept_id` int(11) DEFAULT NULL,
  `order_status` enum('INITILISED','ACCEPT','IN_TRIP','DELIVERED','PAID','RATED','FINISHED','DECLINED') DEFAULT 'INITILISED',
  `order_date` date DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `total_price` varchar(50) DEFAULT NULL,
  `add_tip` int(50) DEFAULT NULL,
  `payment_status` enum('FAIL','PENDING','COMPLETED') DEFAULT 'PENDING',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  `is_delete` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`traking_number`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `post_order` */

insert  into `post_order`(`traking_number`,`user_id`,`post_request_id`,`post_accept_id`,`order_status`,`order_date`,`price`,`tax`,`discount`,`total_price`,`add_tip`,`payment_status`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(2,100,4,1,'IN_TRIP','2018-11-05','30',NULL,NULL,NULL,NULL,'COMPLETED',100,'2018-11-05 07:21:47',101,'2018-11-05 08:21:14','Y','N'),
(3,101,4,1,'FINISHED','2018-11-05','25',NULL,NULL,NULL,11,'COMPLETED',101,'2018-11-05 07:24:47',101,'2018-11-05 08:57:42','Y','N'),
(4,101,6,5,'ACCEPT','2018-11-05','25',NULL,NULL,NULL,NULL,'PENDING',101,'2018-11-05 08:49:15',109,'2018-11-05 08:51:45','Y','N'),
(5,83,8,7,'ACCEPT','2018-11-05','100',NULL,NULL,NULL,NULL,'PENDING',83,'2018-11-05 12:20:46',80,'2018-11-05 12:22:15','Y','N'),
(6,83,10,9,'ACCEPT','2018-11-05','60',NULL,NULL,NULL,NULL,'PENDING',83,'2018-11-05 13:01:19',80,'2018-11-05 13:02:25','Y','N'),
(7,83,12,11,'ACCEPT','2018-11-05','561',NULL,NULL,NULL,NULL,'PENDING',83,'2018-11-05 13:26:15',80,'2018-11-05 13:26:40','Y','N'),
(9,85,15,16,'FINISHED','2018-11-05','10',NULL,NULL,NULL,NULL,'COMPLETED',85,'2018-11-05 15:19:21',85,'2018-11-05 15:25:52','Y','N'),
(11,80,3,20,'ACCEPT','2018-11-06','113',NULL,NULL,NULL,NULL,'PENDING',80,'2018-11-06 03:27:09',83,'2018-11-06 03:27:36','Y','N'),
(12,80,22,21,'ACCEPT','2018-11-06','113',NULL,NULL,NULL,NULL,'PENDING',80,'2018-11-06 03:32:39',83,'2018-11-06 03:33:08','Y','N'),
(13,80,24,23,'ACCEPT','2018-11-06','2388',NULL,NULL,NULL,NULL,'PENDING',80,'2018-11-06 03:39:53',83,'2018-11-06 03:40:22','Y','N'),
(14,80,27,26,'FINISHED','2018-11-06','299',NULL,NULL,NULL,11,'COMPLETED',80,'2018-11-06 03:51:48',80,'2018-11-06 03:55:44','Y','N'),
(15,86,29,28,'ACCEPT','2018-11-06','10',NULL,NULL,NULL,NULL,'PENDING',86,'2018-11-06 17:23:23',85,'2018-11-06 17:23:44','Y','N');

/*Table structure for table `post_order_old` */

DROP TABLE IF EXISTS `post_order_old`;

CREATE TABLE `post_order_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `traking_number` int(11) DEFAULT NULL,
  `post_request_id` int(11) NOT NULL,
  `post_accept_id` int(11) DEFAULT NULL,
  `order_status` enum('INITILISED','ACCEPT','IN_TRIP','DELIVERED','PAID','RATED','FINISHED') NOT NULL DEFAULT 'INITILISED',
  `order_date` datetime NOT NULL,
  `price` varchar(50) DEFAULT NULL,
  `tax` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `total_price` varchar(50) NOT NULL,
  `payment_status` enum('FAIL','PENDING','COMPLETED') DEFAULT 'PENDING',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `post_order_old` */

/*Table structure for table `post_request_items` */

DROP TABLE IF EXISTS `post_request_items`;

CREATE TABLE `post_request_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_weight` enum('1-5','5-10','10-20','20-50','50 Above') DEFAULT NULL,
  `description` text,
  `image1` varchar(250) DEFAULT NULL,
  `image2` varchar(250) DEFAULT NULL,
  `space_size_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  `is_delete` enum('Y','N') DEFAULT 'N',
  `qty` int(11) DEFAULT NULL,
  `space_available` enum('I have an empty trunk','I have an empty truck','I have an empty trailer','I have an empty backseat','I have an empty tote bag','I can tow','Others') DEFAULT NULL,
  `space_available_other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `post_request_items` */

insert  into `post_request_items`(`id`,`post_id`,`item_type_id`,`item_weight`,`description`,`image1`,`image2`,`space_size_id`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`,`qty`,`space_available`,`space_available_other`) values 
(1,3,2,'20-50','test1','5be02f52584da.jpeg','UploadLight.png',2,80,'2018-11-05 06:53:54',80,'2018-11-05 06:53:54','Y','N',1,NULL,''),
(2,4,4,'10-20','testing','5be03282b9c5a.png','UploadLight.png',2,101,'2018-11-05 07:07:30',101,'2018-11-05 07:07:30','Y','N',10,NULL,''),
(3,6,1,'1-5','DES','5be04a3f3f301.jpeg','UploadLight.png',1,101,'2018-11-05 08:48:47',101,'2018-11-05 08:48:47','Y','N',1,NULL,''),
(4,8,3,'10-20','test2','5be07b77aa7ab.jpeg','UploadLight.png',3,83,'2018-11-05 12:18:47',83,'2018-11-05 12:18:47','Y','N',1,NULL,''),
(5,10,2,'10-20','test1','UploadLight.png','UploadLight.png',3,83,'2018-11-05 13:00:12',83,'2018-11-05 13:00:12','Y','N',1,NULL,''),
(6,12,3,'10-20','test2','5be08afc62ecd.jpeg','UploadLight.png',3,83,'2018-11-05 13:25:00',83,'2018-11-05 13:25:00','Y','N',1,NULL,''),
(7,14,2,'10-20','test','5be08ec40e7ad.jpeg','UploadLight.png',2,109,'2018-11-05 13:41:08',109,'2018-11-05 13:41:08','Y','N',1,NULL,''),
(8,15,1,'1-5','Briefcases','UploadLight.png','UploadLight.png',2,85,'2018-11-05 15:17:45',85,'2018-11-05 15:17:45','Y','N',2,NULL,''),
(9,18,3,'10-20','stuff','UploadLight.png','UploadLight.png',2,86,'2018-11-05 15:33:50',86,'2018-11-05 15:33:50','Y','N',1,NULL,''),
(10,22,2,'10-20','','5be15187777ee.png','UploadLight.png',3,80,'2018-11-06 03:32:07',80,'2018-11-06 03:32:07','Y','N',1,NULL,''),
(11,24,3,'1-5','test2','5be1534df0ea3.jpeg','UploadLight.png',2,80,'2018-11-06 03:39:41',80,'2018-11-06 03:39:41','Y','N',1,NULL,''),
(12,27,3,'10-20','test1','5be155e150744.png','UploadLight.png',2,80,'2018-11-06 03:50:41',80,'2018-11-06 03:50:41','Y','N',1,NULL,''),
(13,29,2,'10-20','Box','UploadLight.png','UploadLight.png',3,85,'2018-11-06 17:23:07',85,'2018-11-06 17:23:07','Y','N',1,NULL,'');

/*Table structure for table `post_trip_accept` */

DROP TABLE IF EXISTS `post_trip_accept`;

CREATE TABLE `post_trip_accept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `small_item` varchar(100) DEFAULT NULL,
  `medium_item` varchar(100) DEFAULT NULL,
  `large_item` varchar(100) DEFAULT NULL,
  `xlarge_item` varchar(100) DEFAULT NULL,
  `two` varchar(100) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'N',
  `is_delete` enum('Y','N') DEFAULT 'N',
  `small_item_qty` varchar(100) DEFAULT NULL,
  `medium_item_qty` varchar(100) DEFAULT NULL,
  `large_item_qty` varchar(100) DEFAULT NULL,
  `xlarge_item_qty` varchar(100) DEFAULT NULL,
  `two_qty` varchar(100) DEFAULT NULL,
  `small_item_suggested_price` float DEFAULT NULL,
  `medium_item_suggested_price` float DEFAULT NULL,
  `large_item_suggested_price` float DEFAULT NULL,
  `xlarge_item_suggested_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `post_trip_accept` */

insert  into `post_trip_accept`(`id`,`post_id`,`small_item`,`medium_item`,`large_item`,`xlarge_item`,`two`,`is_active`,`is_delete`,`small_item_qty`,`medium_item_qty`,`large_item_qty`,`xlarge_item_qty`,`two_qty`,`small_item_suggested_price`,`medium_item_suggested_price`,`large_item_suggested_price`,`xlarge_item_suggested_price`) values 
(1,1,NULL,NULL,NULL,'30',NULL,'Y','Y',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,25.3),
(2,2,NULL,NULL,NULL,'11',NULL,'Y','Y',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,29.47),
(3,5,NULL,NULL,NULL,'11',NULL,'Y','Y',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,25.3),
(4,7,NULL,NULL,'200',NULL,NULL,'Y','Y',NULL,NULL,'1',NULL,NULL,NULL,NULL,1295.1,NULL),
(5,9,NULL,NULL,'150',NULL,NULL,'Y','Y',NULL,NULL,'1',NULL,NULL,NULL,NULL,60.38,NULL),
(6,11,'200',NULL,NULL,NULL,NULL,'Y','Y','1',NULL,NULL,NULL,NULL,561.37,NULL,NULL,NULL),
(7,13,NULL,NULL,'50','100',NULL,'Y','Y',NULL,NULL,'1','1',NULL,NULL,NULL,55.41,110.81),
(8,16,NULL,NULL,NULL,'10',NULL,'Y','Y',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,110.81),
(9,19,NULL,'1',NULL,NULL,NULL,'Y','Y',NULL,'1',NULL,NULL,NULL,NULL,9.49,NULL,NULL),
(10,20,NULL,NULL,NULL,'500',NULL,'Y','Y',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,113.41),
(11,21,NULL,NULL,NULL,'22',NULL,'Y','Y',NULL,NULL,NULL,'22',NULL,NULL,NULL,NULL,113.41),
(12,23,NULL,NULL,NULL,'500',NULL,'Y','Y',NULL,NULL,NULL,'22',NULL,NULL,NULL,NULL,2388.85),
(13,25,NULL,NULL,NULL,'11',NULL,'Y','Y',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,299.94),
(14,26,NULL,NULL,NULL,'11',NULL,'Y','Y',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,299.94),
(15,28,NULL,NULL,'5','10',NULL,'Y','Y',NULL,NULL,'1','1',NULL,NULL,NULL,63.41,126.82),
(16,35,NULL,'100.00','100.00',NULL,NULL,'Y','Y',NULL,'1','1',NULL,NULL,NULL,125.67,167.55,NULL);

/*Table structure for table `post_trip_vehicle` */

DROP TABLE IF EXISTS `post_trip_vehicle`;

CREATE TABLE `post_trip_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `vehicle_type` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `plate_number` varchar(50) NOT NULL,
  `color` int(11) NOT NULL,
  `size` varchar(50) DEFAULT NULL,
  `space_available` enum('I have an empty trunk','I have an empty truck','I have an empty trailer','I have an empty backseat','I have an empty tote bag','I can tow','Others') DEFAULT NULL,
  `image_1` varchar(100) NOT NULL,
  `image_2` varchar(100) NOT NULL,
  `image_3` varchar(100) DEFAULT NULL,
  `payment_policy` enum('Y','N') NOT NULL,
  `cancellation_policy` enum('Y','N') NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `post_trip_vehicle` */

insert  into `post_trip_vehicle`(`id`,`post_id`,`model_id`,`vehicle_type`,`year`,`plate_number`,`color`,`size`,`space_available`,`image_1`,`image_2`,`image_3`,`payment_policy`,`cancellation_policy`,`updated_by`,`updated_date`,`created_by`,`created_date`,`is_active`,`is_delete`) values 
(1,1,3,3,NULL,'AB122',3,NULL,'I have an empty tote bag','5bd2d3d68382d.png','UploadLight.png',NULL,'Y','Y',100,'2018-11-05 06:51:57',100,'2018-11-05 06:51:57','Y','N'),
(2,2,2,2,NULL,'11AA22',1,NULL,'I have an empty trunk','20181101140532.jpeg','20181101140532.jpeg',NULL,'Y','Y',109,'2018-11-05 06:52:46',109,'2018-11-05 06:52:46','Y','N'),
(3,5,2,2,NULL,'11AA22',1,NULL,'I have an empty trunk','20181101140532.jpeg','20181101140532.jpeg',NULL,'Y','Y',109,'2018-11-05 08:47:57',109,'2018-11-05 08:47:57','Y','N'),
(4,7,3,3,NULL,'484784',2,NULL,'I have an empty trunk','5ba6184150b59.png','UploadLight.png',NULL,'Y','Y',80,'2018-11-05 12:17:23',80,'2018-11-05 12:17:23','Y','N'),
(5,9,3,3,NULL,'484784',2,NULL,'I have an empty trunk','5ba6184150b59.png','UploadLight.png',NULL,'Y','Y',80,'2018-11-05 12:59:28',80,'2018-11-05 12:59:28','Y','N'),
(6,11,3,3,NULL,'7878',1,NULL,'I have an empty tote bag','UploadLight.png','UploadLight.png',NULL,'Y','Y',80,'2018-11-05 13:20:09',80,'2018-11-05 13:20:09','Y','N'),
(7,13,5,4,NULL,'134HASDX',3,NULL,'I have an empty trunk','UploadLight.png','UploadLight.png',NULL,'Y','Y',101,'2018-11-05 13:37:14',101,'2018-11-05 13:37:14','Y','N'),
(8,16,3,4,NULL,'jpp1234',2,NULL,'I have an empty trunk','5ba951ac41653.png','UploadLight.png',NULL,'Y','Y',86,'2018-11-05 15:18:01',86,'2018-11-05 15:18:01','Y','N'),
(9,19,3,6,NULL,'ABC123',1,NULL,'I have an empty trunk','5bb7b1541dfa7.png','UploadLight.png',NULL,'Y','Y',85,'2018-11-05 15:33:52',85,'2018-11-05 15:33:52','Y','N'),
(10,20,3,4,NULL,'dg23',4,NULL,'I have an empty trailer','20181101120525.jpeg','UploadLight.png',NULL,'Y','Y',83,'2018-11-06 03:26:30',83,'2018-11-06 03:26:30','Y','N'),
(11,21,3,4,NULL,'dg23',4,NULL,'I have an empty trailer','20181101120525.jpeg','UploadLight.png',NULL,'Y','Y',83,'2018-11-06 03:31:31',83,'2018-11-06 03:31:31','Y','N'),
(12,23,3,4,NULL,'dg23',4,NULL,'I have an empty trailer','20181101120525.jpeg','UploadLight.png',NULL,'Y','Y',83,'2018-11-06 03:39:28',83,'2018-11-06 03:39:28','Y','N'),
(13,25,2,2,NULL,'11XXCC',1,NULL,'I have an empty trunk','20181101140323.jpeg','20181101140323.jpeg',NULL,'Y','Y',109,'2018-11-06 03:48:38',109,'2018-11-06 03:48:38','Y','N'),
(14,26,2,2,NULL,'11XXCC',1,NULL,'I have an empty trunk','20181101140323.jpeg','20181101140323.jpeg',NULL,'Y','Y',109,'2018-11-06 03:48:38',109,'2018-11-06 03:48:38','Y','N'),
(15,28,3,4,NULL,'jpp1234',2,NULL,'I have an empty trunk','5ba951ac41653.png','UploadLight.png',NULL,'Y','Y',86,'2018-11-06 17:05:57',86,'2018-11-06 17:05:57','Y','N'),
(16,35,25,3,NULL,'8530KJ',3,NULL,'I have an empty truck','5bc257c79daeb.png','5bc257c7a21b4.png',NULL,'Y','Y',82,'2018-11-15 11:27:55',82,'2018-11-15 11:27:55','Y','N');

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `comments` text,
  `rating` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  `is_delete` enum('Y','N') DEFAULT 'N',
  `is_skip` enum('Y','N') DEFAULT 'N',
  `is_approved` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `review` */

insert  into `review`(`id`,`user_id`,`post_id`,`to_user_id`,`comments`,`rating`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`,`is_skip`,`is_approved`) values 
(1,85,15,86,'Easy process',5,85,'2018-11-05 15:29:50',85,'2018-11-05 15:29:50','Y','N','N','Y'),
(2,80,27,109,'Good!',3,80,'2018-11-06 03:59:01',80,'2018-11-06 03:59:01','Y','N','N','Y');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role` */

/*Table structure for table `site_configuration` */

DROP TABLE IF EXISTS `site_configuration`;

CREATE TABLE `site_configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `site_configuration` */

insert  into `site_configuration`(`id`,`config_key`,`config_value`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`) values 
(1,'DEFAULT_PAGESIZE','10',1,'2018-08-25 08:08:35',1,'2018-08-25 08:08:35','Y','N'),
(2,'ADMIN_EMAIL','info@trunkit.com',1,'2018-09-10 06:06:39',1,'2018-09-10 06:06:39','Y','N'),
(3,'MAP_API_KEY','AIzaSyDV0hzpMzB9qDYi0xpyuy9AEXfiIbUvdFU',1,'2018-04-05 12:18:17',1,'2018-04-05 12:18:17','Y','N'),
(4,'FROM_EMAIL','info@trunkit.com',1,'2018-09-10 06:05:46',1,'2018-09-10 06:05:46','Y','N'),
(5,'PAYPAL_ADMIN_EMAIL_ID','demo.xceltec@gmail.com',1,'2018-08-30 06:18:43',1,'2018-08-30 06:18:43','Y','N'),
(6,'TRUNKIT_COMMISION','15',1,'2018-09-07 17:00:29',1,'2018-09-07 17:00:29','Y','N'),
(7,'PAYPAL_EVNIRONMENT','sandbox',1,'2018-09-08 06:04:52',1,'2018-09-08 06:04:52','Y','N'),
(8,'PAYPAL_USER_ID','demo.xceltec@gmail.com',1,'2018-09-08 06:04:24',1,'2018-09-08 06:04:24','Y','N'),
(9,'PAYPAL_API_PASSWORD','8QBHXM2DBGFJ22FS',1,'2018-08-24 01:53:20',1,'2018-08-24 01:53:20','Y','N'),
(10,'PAYPAL_SIGNATURE','AvbrjyLw8e2V9PGT974X6JmrYVo9AtHOcto5SElebDmOX-ZuF82nfe1c',1,'2018-08-24 01:54:21',1,'2018-08-24 01:54:21','Y','N'),
(11,'BASE_RATE','5',1,'2018-08-13 04:59:27',1,'2018-08-13 04:59:27','Y','N'),
(12,'GST_TAX_PERCENTAGE','5',1,'2018-08-13 05:00:01',1,'2018-08-13 05:00:01','Y','N'),
(13,'GAS_PRICE_PER_KM','0.12',1,'2018-09-06 14:49:12',1,'2018-09-06 14:49:12','Y','N'),
(14,'SMALL_ITEM_MODIFIER','1.0',1,'2018-08-14 07:53:38',1,'2018-08-14 07:53:38','Y','N'),
(15,'MEDIUM_ITEM_MODIFIER','1.5',1,'2018-09-06 15:01:17',1,'2018-09-06 15:01:17','Y','N'),
(16,'LARGE_ITEM_MODIFIER','2.0',1,'2018-09-06 15:01:27',1,'2018-09-06 15:01:27','Y','N'),
(17,'XLARGE_ITEM_MODIFIER','4.0',1,'2018-09-06 15:01:37',1,'2018-09-06 15:01:37','Y','N'),
(18,'DISTANCE_MATRIX_API_KEY','AIzaSyCISWlElHkkPS19VTj9ohQEsA_bRh-V3ME',1,'2018-09-20 07:17:08',1,'2018-09-20 07:17:08','Y','N');

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `state` */

/*Table structure for table `test_messages` */

DROP TABLE IF EXISTS `test_messages`;

CREATE TABLE `test_messages` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` varchar(40) NOT NULL DEFAULT '',
  `to_id` varchar(50) NOT NULL DEFAULT '',
  `from_uname` varchar(225) NOT NULL DEFAULT '',
  `to_uname` varchar(255) NOT NULL DEFAULT '',
  `message_content` text NOT NULL,
  `message_date` datetime NOT NULL,
  `recd` tinyint(1) NOT NULL DEFAULT '0',
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `message_type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `test_messages` */

insert  into `test_messages`(`message_id`,`from_id`,`to_id`,`from_uname`,`to_uname`,`message_content`,`message_date`,`recd`,`seen`,`message_type`) values 
(1,'70','Chirag','mausamshah17@gmail.com','Chirag','hi','2018-08-11 06:21:16',1,'0','text'),
(2,'85','cdajp4ever','Arta','cdajp4ever','Hi Juan','2018-10-15 18:51:17',1,'0','text'),
(3,'85','cdajp4ever','Arta','cdajp4ever','are you home','2018-10-15 18:51:22',1,'0','text'),
(4,'85','cdajp4ever','Arta','cdajp4ever','hi','2018-10-22 17:36:31',1,'0','text'),
(5,'86','Arta','cdajp4ever','Arta',':rofl:','2018-10-22 17:36:53',1,'0','text'),
(6,'86','Arta','cdajp4ever','Arta',':sunglasses:','2018-10-22 17:37:16',1,'0','text'),
(7,'85','cdajp4ever','Arta','cdajp4ever',':see_no_evil:','2018-10-22 17:37:23',1,'0','text'),
(8,'86','Arta','cdajp4ever','Arta','hello','2018-10-22 17:37:47',1,'0','text'),
(9,'86','Arta','cdajp4ever','Arta',':rofl:','2018-10-22 17:37:53',1,'0','text'),
(10,'86','Arta','cdajp4ever','Arta','hey','2018-10-22 17:38:24',1,'0','text'),
(11,'86','Arta','cdajp4ever','Arta','again?','2018-10-22 17:38:48',1,'0','text'),
(12,'80','chirag','samirkhan.pathan@xceltec.in','chirag','hi','2018-10-24 08:04:53',1,'0','text'),
(13,'85','cdajp4ever','Arta','cdajp4ever','test?','2018-10-24 14:15:22',1,'0','text'),
(14,'85','cdajp4ever','Arta','cdajp4ever','Hi','2018-10-24 14:15:23',1,'0','text'),
(15,'85','cdajp4ever','Arta','cdajp4ever','Hello','2018-10-24 14:15:24',1,'0','text'),
(16,'85','cdajp4ever','Arta','cdajp4ever','test','2018-10-24 14:15:24',1,'0','text'),
(17,'85','cdajp4ever','Arta','cdajp4ever','bye','2018-10-24 14:15:25',1,'0','text'),
(18,'85','cdajp4ever','Arta','cdajp4ever','Hi','2018-10-24 14:15:31',1,'0','text'),
(19,'85','cdajp4ever','Arta','cdajp4ever','hello','2018-10-24 14:15:31',1,'0','text'),
(20,'85','cdajp4ever','Arta','cdajp4ever','hola','2018-10-24 14:15:31',1,'0','text'),
(21,'85','cdajp4ever','Arta','cdajp4ever','bye','2018-10-24 14:15:31',1,'0','text'),
(22,'86','Arta','cdajp4ever','Arta','yep','2018-10-24 14:15:34',1,'0','text'),
(23,'86','Arta','cdajp4ever','Arta','working','2018-10-24 14:15:36',1,'0','text'),
(24,'80','chirag','samirkhan.pathan@xceltec.in','chirag','hi','2018-10-24 14:15:45',1,'0','text'),
(25,'85','cdajp4ever','Arta','cdajp4ever','lets try again','2018-10-24 14:15:47',1,'0','text'),
(26,'85','cdajp4ever','Arta','cdajp4ever','hi','2018-10-24 14:15:48',1,'0','text');

/*Table structure for table `transactions_history` */

DROP TABLE IF EXISTS `transactions_history`;

CREATE TABLE `transactions_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_order_id` int(11) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `paykey` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `transaction_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `transaction_type` enum('Balance','Credit_card','WeChat_wallet') DEFAULT NULL,
  `payment_status` enum('Y','N') DEFAULT 'N',
  `transaction_status` enum('Fail','Cancel','Decline','Completed','Pending') DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `admin_user_amt` double DEFAULT NULL,
  `to_user_paypal_email_id` varchar(255) DEFAULT NULL,
  `to_user_amt` double DEFAULT NULL,
  `is_exported` enum('Y','N') DEFAULT 'N',
  `exported_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT '1',
  `updated_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT 'Y',
  `is_delete` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `fk_created_by_transactions_history` (`created_by`),
  KEY `fk_updated_by_transactions_history` (`updated_by`),
  KEY `passenger_id` (`created_by`,`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `transactions_history` */

insert  into `transactions_history`(`id`,`post_order_id`,`total_amount`,`paykey`,`transaction_id`,`transaction_datetime`,`transaction_type`,`payment_status`,`transaction_status`,`from_user_id`,`to_user_id`,`admin_user_amt`,`to_user_paypal_email_id`,`to_user_amt`,`is_exported`,`exported_date`,`created_by`,`created_date`,`updated_by`,`updated_date`,`ip_address`,`is_active`,`is_delete`) values 
(1,4,30,NULL,'82K8069150850031R','2018-11-05 08:21:14',NULL,'Y','Completed',101,100,4.5,'demo.xceltec4@gmail.com',25.5,'N',NULL,101,'2018-11-05 08:21:14',101,'2018-11-05 08:21:14','192.168.1.51','Y','N'),
(2,6,25,NULL,'8CS25396J3556621K','2018-11-05 08:57:42',NULL,'Y','Completed',101,100,3.75,'demo.xceltec4@gmail.com',21.25,'N',NULL,101,'2018-11-05 08:57:42',101,'2018-11-05 08:57:42','192.168.1.21','Y','N'),
(3,33,10,NULL,'4FH1817890298562S','2018-11-05 15:25:51',NULL,'Y','Completed',85,86,1.5,'cdajp4ever@hotmail.com',8.5,'N',NULL,85,'2018-11-05 15:25:51',85,'2018-11-05 15:25:51','174.7.169.83','Y','N'),
(4,53,299,NULL,'3T449879EU703854P','2018-11-06 03:55:44',NULL,'Y','Completed',80,109,44.85,'demo.xceltec4@gmail.com',254.15,'N',NULL,80,'2018-11-06 03:55:44',80,'2018-11-06 03:55:44','192.168.1.8','Y','N');

/*Table structure for table `trip_request_relation` */

DROP TABLE IF EXISTS `trip_request_relation`;

CREATE TABLE `trip_request_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_user_id` int(11) NOT NULL,
  `request_user_id` int(11) NOT NULL,
  `trip_post_id` int(11) DEFAULT NULL,
  `request_post_id` int(11) DEFAULT NULL,
  `trip_origin` varchar(255) NOT NULL,
  `trip_destination` varchar(255) NOT NULL,
  `request_origin` varchar(255) NOT NULL,
  `request_destination` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf16;

/*Data for the table `trip_request_relation` */

insert  into `trip_request_relation`(`id`,`trip_user_id`,`request_user_id`,`trip_post_id`,`request_post_id`,`trip_origin`,`trip_destination`,`request_origin`,`request_destination`) values 
(1,80,109,3,NULL,'Whistler, BC','Vancouver, BC','Whistler, BC','Vancouver, BC'),
(2,101,101,4,NULL,'Washington','tampa','Washington, DC, USA','Tampa, FL, USA'),
(3,101,101,6,NULL,'Vancouver, BC','Whistler, BC','Whistler Way, Whistler, BC','Vancouver, BC'),
(4,83,83,8,NULL,'Los Angeles, CA, USA','Chicago, IL, USA','Los Angeles, CA, USA','Chicago Heights, IL, USA'),
(5,83,83,10,NULL,'Vancouver, BC','Whistler, BC','Vancouver, BC','Whistler, BC'),
(6,83,83,12,NULL,'Las Vegas, NV, USA','Chicago, IL, USA','Las Vegas, NV, USA','Chicago, IL, USA'),
(7,109,109,14,NULL,'1030 West Georgia Street, Vancouver, BC','1200 Whistler Rd, Whistler, BC','1030 West Georgia Street, Vancouver, BC','1200 Whistler Rd, Whistler, BC'),
(8,85,85,15,NULL,'Vancouver, BC','Whistler, BC','1030 West Georgia Street, Vancouver, BC','1200 Whistler Road, Whistler, BC'),
(9,86,86,18,NULL,'Vancouver, BC','Whistler, BC','1075 West Broadway, Vancouver, BC','1200 Whistler Way, Whistler, BC'),
(10,80,80,22,NULL,'Vancouver, BC','Whistler, BC','Vancouver, BC','Whistler, BC'),
(11,80,80,24,NULL,'Los Angeles, CA, USA','Chicago, IL, USA','Los Angeles, CA, USA','Chicago, IL, USA'),
(12,80,80,27,NULL,'North Carolina, USA','South Carolina, USA','North Carolina, USA','South Carolina, USA'),
(13,85,86,29,NULL,'Vancouver, BC','Whistler, BC','2017 London Street, New Westminster, BC','1200 Whistler Road, Whistler, BC');

/*Table structure for table `trip_status` */

DROP TABLE IF EXISTS `trip_status`;

CREATE TABLE `trip_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `post_type` varchar(255) DEFAULT NULL,
  `small_item` varchar(100) DEFAULT NULL,
  `medium_item` varchar(100) DEFAULT NULL,
  `large_item` varchar(100) DEFAULT NULL,
  `xlarge_item` varchar(100) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `is_active` enum('Y','N') DEFAULT NULL,
  `is_delete` enum('Y','N') DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `trip_status` */

insert  into `trip_status`(`id`,`post_id`,`post_type`,`small_item`,`medium_item`,`large_item`,`xlarge_item`,`size`,`is_active`,`is_delete`,`created_by`,`updated_by`,`created_date`,`updated_date`) values 
(1,1,'TRIP','','','','2',NULL,'Y','N',100,100,'2018-11-05 06:51:57','2018-11-05 06:51:57'),
(2,2,'TRIP','','','','1',NULL,'Y','N',109,109,'2018-11-05 06:52:46','2018-11-05 06:52:46'),
(3,3,'REQUEST','','1','','','2','Y','N',80,80,'2018-11-05 06:53:54','2018-11-05 06:53:54'),
(4,4,'REQUEST','','10','','','2','Y','N',101,101,'2018-11-05 07:07:30','2018-11-05 07:07:30'),
(5,5,'TRIP','','','','1',NULL,'Y','N',109,109,'2018-11-05 08:47:57','2018-11-05 08:47:57'),
(6,6,'REQUEST','1','','','','1','Y','N',101,101,'2018-11-05 08:48:47','2018-11-05 08:48:47'),
(7,7,'TRIP','','','1','',NULL,'Y','N',80,80,'2018-11-05 12:17:23','2018-11-05 12:17:23'),
(8,8,'REQUEST','','','1','','3','Y','N',83,83,'2018-11-05 12:18:48','2018-11-05 12:18:48'),
(9,9,'TRIP','','','1','',NULL,'Y','N',80,80,'2018-11-05 12:59:28','2018-11-05 12:59:28'),
(10,10,'REQUEST','','','1','','3','Y','N',83,83,'2018-11-05 13:00:12','2018-11-05 13:00:12'),
(11,11,'TRIP','1','','','',NULL,'Y','N',80,80,'2018-11-05 13:20:09','2018-11-05 13:20:09'),
(12,12,'REQUEST','','','1','','3','Y','N',83,83,'2018-11-05 13:25:00','2018-11-05 13:25:00'),
(13,13,'TRIP','','','1','1',NULL,'Y','N',101,101,'2018-11-05 13:37:14','2018-11-05 13:37:14'),
(14,14,'REQUEST','','1','','','2','Y','N',109,109,'2018-11-05 13:41:08','2018-11-05 13:41:08'),
(15,15,'REQUEST','','2','','','2','Y','N',85,85,'2018-11-05 15:17:45','2018-11-05 15:17:45'),
(16,16,'TRIP','','','','1',NULL,'Y','N',86,86,'2018-11-05 15:18:01','2018-11-05 15:18:01'),
(17,17,'REQUEST','','','','','2','Y','N',86,86,'2018-11-05 15:33:22','2018-11-05 15:33:22'),
(18,18,'REQUEST','','1','','','2','Y','N',86,86,'2018-11-05 15:33:50','2018-11-05 15:33:50'),
(19,19,'TRIP','','1','','',NULL,'Y','N',85,85,'2018-11-05 15:33:52','2018-11-05 15:33:52'),
(20,20,'TRIP','','','','1',NULL,'Y','N',83,83,'2018-11-06 03:26:30','2018-11-06 03:26:30'),
(21,21,'TRIP','','','','22',NULL,'Y','N',83,83,'2018-11-06 03:31:31','2018-11-06 03:31:31'),
(22,22,'REQUEST','','','1','','3','Y','N',80,80,'2018-11-06 03:32:07','2018-11-06 03:32:07'),
(23,23,'TRIP','','','','22',NULL,'Y','N',83,83,'2018-11-06 03:39:28','2018-11-06 03:39:28'),
(24,24,'REQUEST','','1','','','2','Y','N',80,80,'2018-11-06 03:39:42','2018-11-06 03:39:42'),
(25,25,'TRIP','','','','1',NULL,'Y','N',109,109,'2018-11-06 03:48:38','2018-11-06 03:48:38'),
(26,26,'TRIP','','','','1',NULL,'Y','N',109,109,'2018-11-06 03:48:38','2018-11-06 03:48:38'),
(27,27,'REQUEST','','1','','','2','Y','N',80,80,'2018-11-06 03:50:41','2018-11-06 03:50:41'),
(28,28,'TRIP','','','1','1',NULL,'Y','N',86,86,'2018-11-06 17:05:57','2018-11-06 17:05:57'),
(29,29,'REQUEST','','','1','','3','Y','N',85,85,'2018-11-06 17:23:07','2018-11-06 17:23:07'),
(30,35,'TRIP','','1','1','',NULL,'Y','N',82,82,'2018-11-15 11:27:55','2018-11-15 11:27:55');

/*Table structure for table `user_vehicle` */

DROP TABLE IF EXISTS `user_vehicle`;

CREATE TABLE `user_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `vehicle_count` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `plate_number` varchar(50) NOT NULL,
  `image_1` varchar(100) NOT NULL,
  `image_2` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` datetime NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  `description` text,
  `space_available` enum('I have an empty trunk','I have an empty truck','I have an empty trailer','I have an empty backseat','I have an empty tote bag','I can tow','Others') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `user_vehicle` */

insert  into `user_vehicle`(`id`,`user_id`,`model_id`,`type_id`,`vehicle_count`,`color`,`capacity`,`year`,`plate_number`,`image_1`,`image_2`,`created_by`,`created_date`,`updated_by`,`updated_date`,`is_active`,`is_delete`,`description`,`space_available`) values 
(1,80,3,3,2,2,2,1900,'4847841','20181115060104.jpeg','20181115060105.jpeg',80,'2018-11-15 06:01:05',80,'2018-11-15 06:01:05','Y','N','','I have an empty trunk'),
(2,80,3,3,2,2,2,1900,'484784','5ba6184150b59.png','UploadLight.png',80,'2018-09-22 06:24:01',80,'2018-09-22 06:24:01','Y','N','','I have an empty trunk'),
(3,83,3,3,3,2,NULL,1900,'tyu3451','20181101135755.jpeg','20181101135756.jpeg',83,'2018-11-01 13:57:56',83,'2018-11-01 13:57:56','Y','N','test5','I have an empty trailer'),
(4,86,3,4,1,2,2,2018,'jpp1234','5ba951ac41653.png','UploadLight.png',86,'2018-09-24 17:05:48',86,'2018-09-24 17:05:48','Y','N','','I have an empty trunk'),
(5,84,3,3,1,1,NULL,1900,'123456','UploadLight.png','UploadLight.png',84,'2018-10-26 01:05:19',84,'2018-10-26 01:05:19','Y','N','','I have an empty tote bag'),
(6,84,2,2,2,1,NULL,1917,'5488985','5bab2237bb18c.png','UploadLight.png',84,'2018-09-26 02:07:51',84,'2018-09-26 02:07:51','Y','N','','Others'),
(7,84,4,4,3,3,NULL,1900,'4847848','5bab2367ca03d.png','UploadLight.png',84,'2018-09-26 02:12:55',84,'2018-09-26 02:12:55','Y','N','','I have an empty trailer'),
(8,87,3,3,2,1,NULL,1900,'548832','UploadLight.png','UploadLight.png',87,'2018-10-09 06:10:48',87,'2018-10-09 06:10:48','Y','N','','I have an empty tote bag'),
(9,85,3,6,1,1,NULL,2016,'ABC123','5bb7b1541dfa7.png','UploadLight.png',85,'2018-10-09 17:18:15',85,'2018-10-09 17:18:15','Y','N','','I have an empty trunk'),
(10,87,3,3,2,1,NULL,1900,'548832','UploadLight.png','UploadLight.png',87,'2018-10-09 02:43:56',87,'2018-10-09 02:43:56','Y','N','','I have an empty tote bag'),
(11,87,3,3,1,2,NULL,1900,'123423','UploadLight.png','UploadLight.png',87,'2018-10-09 02:45:16',87,'2018-10-09 02:45:16','Y','N','','I have an empty tote bag'),
(12,82,25,3,1,3,NULL,2006,'8530KJ','5bc257c79daeb.png','5bc257c7a21b4.png',82,'2018-10-13 16:38:31',82,'2018-10-13 16:38:31','Y','N','Full size truck with a bike rack if needed','I have an empty truck'),
(13,97,32,2,1,1,NULL,2017,'1237HGASD','5bd1a5ce272cb.png','5bd1a5ce27726.png',97,'2018-10-25 08:21:27',97,'2018-10-25 08:21:27','Y','N','DES','I have an empty trunk'),
(14,98,32,5,1,1,NULL,2016,'1237HGASD','5bd1b56832caf.png','5bd1b58465dae.png',98,'2018-10-25 08:29:15',98,'2018-10-25 08:29:15','Y','N','Des','I have an empty truck'),
(15,84,3,3,1,1,NULL,1900,'123456','UploadLight.png','UploadLight.png',84,'2018-10-25 08:28:17',84,'2018-10-25 08:28:17','Y','N','','I have an empty tote bag'),
(16,80,3,3,3,1,NULL,1900,'7878','20181115060220.jpeg','20181115060220.png',80,'2018-11-15 06:02:20',80,'2018-11-15 06:02:20','Y','N','test','I have an empty tote bag'),
(17,80,4,5,1,2,NULL,1900,'1245','20181115055257.jpeg','20181115055257.jpeg',80,'2018-11-15 05:52:58',80,'2018-11-15 05:52:58','Y','N','werq','I can tow'),
(18,95,4,4,3,2,NULL,1900,'PO233','20181101085740.jpeg','20181101085740.jpeg',95,'2018-11-01 08:57:40',95,'2018-11-01 08:57:40','Y','N','test3','I have an empty backseat'),
(19,100,3,3,1,3,NULL,1900,'AB122','5bd2d3d68382d.png','UploadLight.png',100,'2018-10-26 04:44:06',100,'2018-10-26 04:44:06','Y','N','test2','I have an empty tote bag'),
(20,95,3,5,2,4,NULL,1900,'78QWE','UploadLight.png','UploadLight.png',95,'2018-10-26 02:51:12',95,'2018-10-26 02:51:12','Y','N','test2','I have an empty trailer'),
(21,95,4,4,3,2,NULL,1900,'PO233','UploadLight.png','UploadLight.png',95,'2018-10-26 02:52:08',95,'2018-10-26 02:52:08','Y','N','test3','I have an empty backseat'),
(22,101,5,4,3,3,NULL,1900,'134HASDX','UploadLight.png','UploadLight.png',101,'2018-10-26 05:03:12',101,'2018-10-26 05:03:12','Y','N','DES','I have an empty trunk'),
(23,101,4,3,2,2,NULL,1907,'134HASDD','UploadLight.png','UploadLight.png',101,'2018-10-26 04:59:41',101,'2018-10-26 04:59:41','Y','N','DES','I have an empty trunk'),
(24,101,5,4,3,3,NULL,1900,'134HASDX','UploadLight.png','UploadLight.png',101,'2018-10-26 04:59:57',101,'2018-10-26 04:59:57','Y','N','DES','I have an empty trunk'),
(25,103,2,2,1,1,NULL,2013,'123HASD','UploadLight.png','UploadLight.png',103,'2018-10-26 06:10:17',103,'2018-10-26 06:10:17','Y','N','DES','I have an empty trunk'),
(26,95,3,3,1,2,NULL,1900,'1234567','20181101062107.jpeg','20181101062107.jpeg',95,'2018-11-01 06:21:07',95,'2018-11-01 06:21:07','Y','Y','','I have an empty trunk'),
(27,95,3,3,1,2,NULL,1900,'1234564','5bdad46958e13.jpeg','5bdad46958fad.jpeg',95,'2018-11-01 06:24:41',95,'2018-11-01 06:24:41','Y','Y','','I have an empty backseat'),
(28,95,3,3,1,2,NULL,1900,'54885','5bdad4f81d7ab.jpeg','5bdad4f81d971.jpeg',95,'2018-11-01 06:27:04',95,'2018-11-01 06:27:04','Y','Y','','I have an empty backseat'),
(29,95,3,3,1,2,NULL,1900,'48478488','5bdad56834594.jpeg','5bdad5683474e.jpeg',95,'2018-11-01 06:28:56',95,'2018-11-01 06:28:56','Y','Y','','I have an empty backseat'),
(30,95,3,3,1,2,NULL,1900,'4847845','5bdada9376e0d.jpeg','5bdada93771a9.png',95,'2018-11-01 06:50:59',95,'2018-11-01 06:50:59','Y','Y','','I have an empty trailer'),
(31,95,4,3,1,2,NULL,1900,'4847844','5bdadb37c3be7.jpeg','5bdadb37c5c99.jpeg',95,'2018-11-01 06:53:43',95,'2018-11-01 06:53:43','Y','Y','','I have an empty tote bag'),
(32,95,3,3,1,2,NULL,1900,'4847846','20181101065758.jpeg','20181101065759.jpeg',95,'2018-11-01 06:58:00',95,'2018-11-01 06:58:00','Y','Y','','I have an empty trailer'),
(33,95,3,3,1,2,NULL,1900,'4847844','20181101065901.jpeg','20181101065902.jpeg',95,'2018-11-01 06:59:03',95,'2018-11-01 06:59:03','Y','Y','','I have an empty truck'),
(34,95,4,3,1,1,NULL,1900,'4847845','20181101070005.jpeg','20181101070005.jpeg',95,'2018-11-01 07:00:05',95,'2018-11-01 07:00:05','Y','N','','I have an empty truck'),
(35,83,3,4,2,4,NULL,1900,'dg23','20181101120525.jpeg','UploadLight.png',83,'2018-11-01 12:05:26',83,'2018-11-01 12:05:26','Y','N','test2','I have an empty trailer'),
(36,83,3,3,3,2,NULL,1900,'tyu345','20181101122728.jpeg','UploadLight.png',83,'2018-11-01 12:27:29',83,'2018-11-01 12:27:29','Y','N','test5','I have an empty trailer'),
(37,109,2,2,1,1,NULL,1900,'11XXCC','20181101140323.jpeg','20181101140323.jpeg',109,'2018-11-05 09:25:10',109,'2018-11-05 09:25:10','Y','N','DES','I have an empty trunk'),
(38,109,2,2,3,1,NULL,1900,'11AA22','20181101140226.jpeg','20181101140226.jpeg',109,'2018-11-01 14:02:27',109,'2018-11-01 14:02:27','Y','N','DES','I have an empty trunk'),
(39,83,4,3,1,2,NULL,1900,'rty566','20181101140234.jpeg','20181101140234.jpeg',83,'2018-11-01 14:02:35',83,'2018-11-01 14:02:35','Y','N','tyet','I have an empty truck'),
(40,109,2,2,1,1,NULL,1900,'11XXCC','20181101140323.jpeg','20181101140323.jpeg',109,'2018-11-01 14:03:24',109,'2018-11-01 14:03:24','Y','N','DES','I have an empty trunk'),
(41,109,2,2,2,1,NULL,1900,'11XXSS','20181101140455.jpeg','20181101140455.jpeg',109,'2018-11-01 14:04:56',109,'2018-11-01 14:04:56','Y','N','DES','I have an empty trunk'),
(42,112,32,2,1,1,NULL,2015,'104DFG','20181105075822.jpeg','UploadLight.png',112,'2018-11-05 07:58:22',112,'2018-11-05 07:58:22','Y','N','DES','I have an empty trunk'),
(43,112,3,3,2,2,NULL,1900,'123HGF','20181105075847.jpeg','UploadLight.png',112,'2018-11-05 07:58:47',112,'2018-11-05 07:58:47','Y','N','DES','I have an empty trunk'),
(44,112,4,4,3,1,NULL,1900,'123KJH','20181105080107.jpeg','UploadLight.png',112,'2018-11-05 08:01:07',112,'2018-11-05 08:01:07','Y','N','DES','I have an empty trunk'),
(45,85,2,3,2,2,NULL,1900,'234rt','20181115061237.jpeg','UploadLight.png',85,'2018-11-15 06:12:37',85,'2018-11-15 06:12:37','Y','N','test','I have an empty trailer');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `driver_licence` varchar(255) DEFAULT NULL,
  `driver_licence2` varchar(255) DEFAULT NULL,
  `insurance_number` varchar(255) DEFAULT NULL,
  `description` text,
  `role` varchar(20) DEFAULT NULL,
  `is_insurance_number_approved` int(1) DEFAULT '0',
  `is_driver_licence_approved` int(1) DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL DEFAULT '1',
  `updated_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL,
  `is_active` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_email_verify` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_phone_verify` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_approved` enum('Y','N') NOT NULL DEFAULT 'N',
  `notification_pref` enum('SMS','EMAIL','BOTH') DEFAULT 'EMAIL',
  `is_login` enum('Y','N') NOT NULL DEFAULT 'N',
  `last_login` datetime NOT NULL,
  `otp` varchar(250) DEFAULT NULL,
  `online` int(1) DEFAULT '0',
  `country` varchar(255) DEFAULT NULL,
  `paypal_email_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`,`updated_by`),
  KEY `fk_updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`first_name`,`last_name`,`username`,`email`,`contact_number`,`date_of_birth`,`age`,`gender`,`password`,`auth_key`,`password_reset_token`,`image`,`driver_licence`,`driver_licence2`,`insurance_number`,`description`,`role`,`is_insurance_number_approved`,`is_driver_licence_approved`,`created_by`,`created_date`,`updated_by`,`updated_date`,`ip_address`,`is_active`,`is_delete`,`is_email_verify`,`is_phone_verify`,`is_approved`,`notification_pref`,`is_login`,`last_login`,`otp`,`online`,`country`,`paypal_email_id`) values 
(1,'admin','admin','admin@admin.com','admin@admin.com','+12202222851','2000-04-11',18,'Male','$2y$13$6UN3G6ztk1.8/rh3jx5mcueXP6jLHKfUz0YTh2BWApff1poVCt0Ry','Psdymh0Pghnrvd9LZyQ-d_r9tn6IruWz','4cagrPm1mq0oV1NWNayZk09e4wxP4niZ_1540822401','5b6bd641bdee5.png',NULL,NULL,NULL,'Admin','1',2,2,1,'2018-06-06 11:40:13',1,'2018-11-13 01:43:25','192.168.1.117','Y','N','Y','Y','Y','EMAIL','Y','2018-12-03 02:09:06','769225',0,NULL,NULL),
(80,'Samir','Pathan','samirkhan.pathan@xceltec.in','samirkhan.pathan@xceltec.in','+13656516112','1998-07-07',20,'Male','$2y$13$vx6cJBKP.otaAetJgBykkOC1M8SukORWtODENO/2FoB3jhJm7Ee26','NaApnxeQa3l307GUqGC4UxbaLXto4XLu','AhTjivaLWcIJ4t0kGeW2niLbvdZCeZ-F_1536574403','20181031105158.jpeg','20181102063522.jpeg','5bdc286a7b9e4.jpeg','5bd99c517f39f.png','','2',0,0,80,'2018-11-05 15:58:59',80,'2018-11-05 15:58:59','192.168.1.132','Y','N','Y','Y','N','BOTH','Y','2018-11-30 08:23:48','861782',1,NULL,'demo.xceltec4@gmail.com'),
(81,'Subham','chandarana','shubham.chandarana@xceltec.in','shubham.chandarana@xceltec.in',NULL,NULL,NULL,NULL,'$2y$13$nZdOc0eEic1MCIdpWg0wmeoksZNY32hKMLGbxMbWpB7mHSpIBna5u','B7vGwYI4D0IQhqvn5DI021dOsQkkxr1a','Fe1JHoivflkCqckR07jWvd8AmHnBa_YA_1536410582','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-09-08 08:43:02',1,'2018-09-08 08:44:23','49.34.90.92','Y','N','Y','N','N','EMAIL','Y','2018-11-05 05:28:34',NULL,1,NULL,NULL),
(82,'Greg','Smith','Greg','smithgl@telus.net','+17789682273','1973-07-11',NULL,'Male','$2y$13$Wrhyfz1t9hMUAKz8iEdGyOjO0FOe3iYuyhiYmeBbq/caTarf9nEpS','V4X8PA5LMkLJKkLCl9Ts4dOWNX-ky8hP','NQ-XxPeIjkHtf5nnG0SBn48rExhPYj_b_1536808430','profile-icon.png','20180914155111./trunkit.xceltec.com/media/users/driver_licence/20180914155028./trunkit.xceltec.com/media/users/driver_licence/20180914154947./trunkit.xceltec.com/media/users/driver_licence/','5b9c112f707d7./trunkit.xceltec.com/media/users/driver_licence/20180914155028./trunkit.xceltec.com/media/users/driver_licence/20180914154947./trunkit.xceltec.com/media/users/driver_licence/','5b9c112f7053f./trunkit.xceltec.com/media/users/driver_licence/20180914155028./trunkit.xceltec.com/media/users/driver_licence/20180914154947./trunkit.xceltec.com/media/users/driver_licence/',NULL,'2',0,0,82,'2018-09-14 15:55:29',82,'2018-09-14 15:55:29','76.80.167.83','Y','N','Y','N','N','SMS','Y','2018-11-15 11:23:02',NULL,1,NULL,'smithgl@telus.net'),
(83,'Chirag','Kakkad','chirag','chirag.kakkad@xceltec.in','+19132100285','1995-03-03',23,'Male','$2y$13$X7W4Qdsnht7hxJ1k7SvkYejdXrzl6LKSols9Ab92AceWSjmVPYile','ReExu5u0hzB6qaIVH6x1Gjw-iqS4WRWw','ONmJ1v-0vcVL4oydKlQIDN-54uylZrlL_1536828064','20181102062321.png','20181005081723.png','5bb7565395726.png','5bb754f9e47a8.png',NULL,'2',0,0,83,'2018-11-06 14:23:16',83,'2018-11-06 14:23:16','192.168.1.44','Y','N','Y','Y','N','BOTH','Y','2018-11-27 01:11:46','265261',1,NULL,'demo.xceltec4@gmail.com'),
(84,'Monika','Timbadiya','monika.timbadiya@xceltec.in','monika.timbadiya@xceltec.in','+18287953050','2000-09-10',18,'Female','$2y$13$vx6cJBKP.otaAetJgBykkOC1M8SukORWtODENO/2FoB3jhJm7Ee26','q0V2i_cEZT67mPeK8iSq0B9d--SHrRR7','Z20TmijOQ_7uxqCRzj0gN18KLkNjn-4V_1540469477','20181030080211.jpeg','20181030071850.jpeg','5bd83e7fdafe9.jpeg','5bd83e7fdaa43.jpeg','','2',0,0,84,'2018-10-30 17:32:11',84,'2018-10-30 17:32:11','192.168.1.121','Y','N','Y','N','N','EMAIL','Y','2018-11-20 23:56:37',NULL,1,NULL,'demo.xceltec4@gmail.com'),
(85,'Arta','A','Arta','arta@pinmo.ca','+17788895455',NULL,NULL,'Female','$2y$13$sPDTCH9s25jF6An/1CxuGOsFlSlCYYT5ruEQFrEXwGhNOaVoWKXL2','25JYbTbu1u_Qza9pGBOyvJ93SKDORLgw','hB3APqYQ2-My_AXZZBvqCkeVdPiJj4j9_1537466966','profile-icon.png','','','',NULL,'2',0,0,85,'2018-10-02 18:08:26',85,'2018-10-02 18:08:26','192.168.1.144','Y','N','Y','Y','N','EMAIL','N','2018-11-15 06:11:40','904204',0,NULL,'arta@pinmo.ca'),
(86,'Juan','Aguas','cdajp4ever','cdajp4ever@gmail.com','+17782293656','2000-09-24',NULL,'Male','$2y$13$m5i/1NwtAu/M6iWXx2/7we8f4oWqq7DOggDRG3n32sWmBgzWsl04e','UfpzFblXv9SwYZz7RcWUhkWLcplSyPgh','QEYTZSfpCLpyGABfEDk2h_tR5Xk68SDN_1537820743','20180924170504.png','20180924170743.jpeg','5ba9521f0d578.jpeg','5ba9521f0d27f.jpeg',NULL,'2',0,0,86,'2018-10-02 18:06:31',86,'2018-10-02 18:06:31','174.7.169.83','Y','N','Y','Y','N','EMAIL','Y','2018-11-29 15:21:09','725675',1,NULL,'cdajp4ever@hotmail.com'),
(87,'nirali','soni','nirali','nirali.kukawala@xceltec.in','+12368008106',NULL,0,'Female','$2y$13$uyhUDwm/Jc6VF0F6vJZgLeboBoexND76HGvUuzag7D1IaGiHG1GzK','kb_THie_4ol48Gmurxcd0QJFO69PD1bD','Kup-HmzOEaG3O3usYvH1ERyyDcPT1DfZ_1538716841','20181005015012.png','','','',NULL,'2',0,0,87,'2018-10-05 11:20:12',87,'2018-10-05 11:20:12','192.168.1.240','Y','N','Y','N','N','EMAIL','N','2018-10-24 10:50:12',NULL,0,NULL,'demo.xceltec4@gmail.com'),
(88,NULL,NULL,'apexa','apexa.pandya@xceltec.in',NULL,NULL,NULL,NULL,'$2y$13$oB95/Lkq535gYRdkZi9lfO.MNYZhaHTK76mOBj6Qtrztzr3sL5XRW','rFZDQcfyfDIAmp5JF6jx1Wj7-FIQR9gx','Op5XGGP3hHKKiswVKV20-pqFUsn1r0G2_1538043870','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-09-27 06:24:30',1,'2018-09-27 06:29:32','192.168.1.132','Y','N','Y','N','N','EMAIL','Y','2018-10-04 08:05:31',NULL,1,NULL,NULL),
(89,NULL,NULL,'karan','karan.patel.1@xceltec.in',NULL,NULL,NULL,NULL,'$2y$13$gYUpXCizN2MIsrd7n0kKmOP3FjZAFzSfAA8YNbJzgfeZqfiBSXhou','taWaFRbQKhH6CaIVQaq5Rrb0LZCMHdlG','yK78mEgS03Imfj-Mp7UEGIkIMSq3Xq86_1538566028','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,89,'2018-10-03 07:53:55',89,'2018-10-03 07:53:55','192.168.1.148','Y','N','Y','N','N','EMAIL','N','2018-10-03 07:53:55',NULL,0,NULL,'demo.xceltec4@gmail.com'),
(90,NULL,NULL,'ravi','ravi.shah@xceltec.in',NULL,NULL,NULL,NULL,'$2y$13$cSdzEsXgMcKWuj79hsv3sudoWClulyEs8vCmeih.i1B8EMsBi2dHq','IUG9qXQ8k2Ss3ZcxSxJOgij_gWZ6_0s5','2MqEFpGtFh-HMWyNK5Gx6UkkBt6311z6_1538566152','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-03 07:29:12',1,'2018-10-03 07:30:41','192.168.1.148','Y','N','Y','N','N','EMAIL','N','2018-10-03 07:31:43',NULL,0,NULL,'demo.xceltec4@gmail.com'),
(91,'shambhu','rajgor','shambhu','shambhu.rajgor@xceltec.com','+12495016291',NULL,0,'Male','$2y$13$4btlM0bHT6lF3.onIg2tdeHIqiAfvrcm0GoxyE6EDrcViUt7L.cpG','y1eFxviAC8rGgGjGYwuVh4O3xY3pUqCW','KPakciA1jmmEYn6mhgFcUOtFG4daVJEF_1538573603','20181005015002.png','','','',NULL,'2',0,0,91,'2018-10-05 11:20:02',91,'2018-10-05 11:20:02','192.168.1.148','Y','N','Y','N','N','EMAIL','Y','2018-10-05 04:36:27',NULL,1,NULL,'demo.xceltec4@gmail.com'),
(92,NULL,NULL,'kiran','kiran.koisa@xceltec.in',NULL,NULL,NULL,NULL,'$2y$13$OgZAAEqX45mbVvdvJv16T.UrxtlzmXm5vcwu3cAGtVpei7hkNCBvy','FlYDcDNDretaUkCg8DVeT71QgE8si6Df','WJXSdu_hDydijNU7eK0XOkT8HJ6BMzq8_1538734572','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-05 06:16:12',1,'2018-10-05 06:18:17','192.168.1.148','Y','N','Y','N','N','EMAIL','N','2018-10-05 06:18:59',NULL,0,NULL,NULL),
(93,NULL,NULL,'Al Latif','ravi.shah31290@gmail.com',NULL,NULL,NULL,NULL,'$2y$13$slwBF9SIo.C.RsZxlJYQUuUy/lTPAmHGcu6P610Y3/XYxGjFMlxzq','QlxHXAQW1HpNEcIMHjKQMKPQ1_IkAiNl','FJBnS_kqdXMKnQZfMG7fovDctrhQ7Kih_1540382213','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-24 07:56:53',1,'2018-10-24 07:57:05','192.168.1.120','Y','N','Y','N','N','EMAIL','N','2018-10-24 11:07:14',NULL,0,NULL,NULL),
(94,NULL,NULL,'Al Obama','ravi.shah@xceltec.in',NULL,NULL,NULL,NULL,'$2y$13$slwBF9SIo.C.RsZxlJYQUuUy/lTPAmHGcu6P610Y3/XYxGjFMlxzq','m_Qp4o0pVKiG7n6Cz-6SOAn51sYHxwFH','QxuDYIItwy9Gwpm3xZJzcOUy17y-8j97_1540390160','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-24 10:09:20',1,'2018-10-24 10:09:47','192.168.1.240','Y','N','Y','N','N','EMAIL','N','2018-10-24 10:09:20',NULL,0,NULL,NULL),
(95,'karan','patel','karana','karan.patel@xceltec.in','+15799900539',NULL,0,'Male','$2y$13$wUdmfp6SF.wO8uPUlUyx2uENllEFHBecYBurI0aqM9wRrMLWTVbiq','IdMvxdPcuzqYBXCdo_boQZLeRBnXQVxf','8Bt8DhCewhGkob2F67JagdpJStqQpwfC_1540459514','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,95,'2018-11-01 14:47:06',95,'2018-11-01 14:47:06','192.168.1.117','Y','N','Y','Y','N','EMAIL','Y','2018-11-01 14:47:06','446244',1,NULL,NULL),
(96,NULL,NULL,'rushita','rushita.kotadiya@xceltec.in',NULL,NULL,NULL,NULL,'$2y$13$1XWY1XkSlCloSnDw.IJEC.Vb1Hx5jsvav.3FfeVRoZ5BR5hJBg..m','Q7kl43aD7lytXo4O2h-ahXgw5etdR5_2','kj4D3WC6EJsR8v5FxpooqC4fJ9NSOi9x_1540459522','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-25 05:25:22',1,'2018-10-25 05:25:22','192.168.1.132','N','N','N','N','N','EMAIL','N','2018-10-25 05:25:22',NULL,0,NULL,NULL),
(97,'jacob','Nilson','jacob@mailinator.com','jacob@mailinator.com','+14849188751','1998-10-27',NULL,'Male','$2y$13$Pw3PPyS.W9Yj/dAWmpikH./MGAzwPs1lhdK2qVlL5/VzFxXIJTWOW','6Exa69drWZT5F9i6-d6HECIsNkmpLaHJ','2OCJxgRoCwXwHeecZOAg5AZXaHlndkA9_1540468307','20181025071318.jpeg','20181025071318.jpeg','5bd1a54e350b6.jpeg','5bd1a54e34bb8.jpeg','','2',1,1,97,'2018-10-25 10:07:45',97,'2018-10-25 10:44:44','192.168.1.240','Y','N','Y','Y','N','BOTH','N','2018-10-26 07:49:36','656728',0,NULL,'demo.xceltec4@gmail.com'),
(98,'Angelo','Mathews','mathew@mailinator.com','mathew@mailinator.com','+14849188982','1990-11-06',NULL,'Male','$2y$13$0J6NOHGMgPCDi9gnyix4AeUOEAXx.6TCkI8OulCIrw4tL16FTe6dy','_I2Rqhi7jn5KyYHbp_5xQOAhffVLao9o','8M3T_Bx1Uu7MNgZ-GnC6Q42arKmRPZWe_1540460864','20181025081914.jpeg','20181025081914.jpeg','5bd1b4c2f2c2b.jpeg','5bd1b4c2f2690.jpeg','','2',1,1,98,'2018-10-25 10:07:22',98,'2018-10-25 10:07:22','192.168.1.120','Y','N','Y','Y','N','BOTH','N','2018-10-25 23:57:37','507643',0,NULL,'jacob@mailinator.com'),
(99,NULL,NULL,'mahera','mahera@mailinator.com',NULL,NULL,NULL,NULL,'$2y$13$qm6VpjI11OYcL18GbLmNkOQ63SXo0XajPobRanrMl2GidzQZLf88m','jwbrT2xK0tYEnWY2kDD3iZAdp0Uhh6eV','kGp8ysThJhYp7cfMggNAqzkUcpGYnvT3_1540463665','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-25 06:34:25',1,'2018-10-25 06:34:25','192.168.1.120','N','N','N','N','N','EMAIL','N','2018-10-25 06:34:25',NULL,0,NULL,NULL),
(100,'Steve','Smith','smith@mailinator.com','smith@mailinator.com','+13315519893','1985-01-25',33,'Male','$2y$13$bVod4nbqJAK0typg17kxIOXHrmLthH5qUMWafwpds8rrtXClQ2Ib6','UiJkkqlX_N57xXTwHVk002EDeYKCI0RK','B5PZ6sQxwGxX1liibcfFmHMxCPhIebpC_1540531216','5bd2aa2882a4f.png','20181026044224.jpeg',NULL,'5bd2d3a2907cc.jpeg','DES','2',0,1,100,'2018-10-31 14:55:54',100,'2018-10-31 14:55:54','192.168.1.49','Y','N','Y','Y','N','BOTH','Y','2018-11-05 08:45:23','174983',1,NULL,'demo.xceltec4@gmail.com'),
(101,'Adam','Voges','adams@mailinator.com','adams@mailinator.com','+19194009200','1889-10-29',129,'Male','$2y$13$NEQPUplJWgvdvR4LphiGz.CX32Ij95OegjJxyo37OtfHBauiof0IK','7cH29U2UKPaxbbCe8gsgRL0zeNlCzn05','ngV6w2HUQs6gX54eu68fEWDAKgg7GU-9_1540531327','20181026013039.jpeg','20181026013137.jpeg','5bd2a67f39874.jpeg','5bd2a67f39706.jpeg','DES','2',0,1,101,'2018-10-31 11:46:08',101,'2018-10-31 11:46:08','192.168.1.37','Y','N','Y','Y','N','BOTH','Y','2018-11-05 12:03:05','212528',1,NULL,'demo.xceltec4@gmail.com'),
(102,'Philip','Huges','huges@mailinator.com','huges@mailinator.com','+14313038753','1988-12-25',29,NULL,'$2y$13$6DHQgphl8TZhKXPcG8V0S.y69LjDzp.qXW6vHXz3CPQUjTCzvdj3S','-I9xTdJ4aMjQuXXWUK74uVFfq5ZV7fyH','mdj1Crlvcr-TtbvLH02XmKHYdgPK5FlK_1540545726','5bd2dcbe8157f.png',NULL,NULL,NULL,'DESC','1',NULL,NULL,1,'2018-10-26 05:22:06',1,'2018-10-26 05:22:06','192.168.1.240','Y','N','N','N','N','EMAIL','Y','2018-10-26 08:11:00',NULL,0,NULL,NULL),
(103,NULL,NULL,'john','john@mailinator.com',NULL,NULL,NULL,NULL,'$2y$13$ZH2yQpxzfj/l3UxXjFam8usxtn2g9px/LGl5U0wp3NM1BbrNtpiTW','Tfrel0XjBTnCpBc5y1R1TRzZ0SczwWyv','kW1-hqAmUZ-jekpP3p7qw7NB9pNURlFj_1540548385','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-26 06:06:25',1,'2018-10-26 06:07:03','192.168.1.240','Y','N','Y','N','N','EMAIL','N','2018-10-26 07:52:38',NULL,0,NULL,NULL),
(104,NULL,NULL,'Alex Duck','zlhalex@126.com',NULL,NULL,NULL,NULL,'$2y$13$eAp0Ph/Vm36FDoCYo23jGOaP2WSUBJ8EMGDBX6Raqr0dwNLxV.Sb.','pnqAkItfZDE2Crqe4leqiwE-_j5xowOZ','f0af9gDAlH6Hct3cnlQYqDAfLQRC6Kmq_1540793615','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-29 02:13:35',1,'2018-10-29 02:14:43','58.247.81.206','Y','N','Y','N','N','EMAIL','Y','2018-10-30 10:34:05',NULL,1,NULL,NULL),
(105,'zhyu','yu','zhyu20','1282059068@qq.com','+17718203303','1993-03-03',25,'Female','$2y$13$9YQqzSvQfV6mjd3ZjQPG2.0l5I73dwhEFd0PFtA05rMTVCNMBY2Nu','WJqD54Qod4rxbxnbVRL-PqSAT18Cucat','Dpj5hEB7QmiCCv-d48fNG9hqNqOJA2Q9_1540797740','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,105,'2018-10-29 12:57:27',105,'2018-10-29 12:57:27','183.128.179.107','Y','N','Y','N','N','EMAIL','Y','2018-10-29 12:57:27',NULL,1,NULL,NULL),
(106,NULL,NULL,'Siddle','Siddle@mailiantor.com',NULL,NULL,NULL,NULL,'$2y$13$6Mv3j08Gb43XxsBU54NdsOYI55jdYkFi871EeOuDSXZfoBgGhHPG6','CgNWtIR_SnTgxNSSGRa8EDdZzn6qycX1','4gNQR4PXr9Z96GndXAGCqNs38NZucigG_1540989117','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-10-31 08:31:57',1,'2018-10-31 08:31:57','192.168.1.132','N','N','N','N','N','EMAIL','N','2018-10-31 08:31:57',NULL,0,NULL,NULL),
(107,'Peter','Peter','peter','peter@mailinator.com','+19022445566','2000-02-01',18,'Male','$2y$13$v0YU5RGxfoHAC25e1BMpEuJczviSl6qvVkb6cb6RfYaGJ8L/e4agO','Axt8lZscUbftDd4YLs8zBJYkLTNp7QbK','HZwIA6Tup-FGKU35MLnymUPra2jlLdwT_1540989237','20181031083517.png',NULL,NULL,NULL,NULL,'2',0,0,107,'2018-10-31 18:05:17',107,'2018-10-31 18:05:17','192.168.1.132','Y','N','Y','N','N','EMAIL','N','2018-10-31 18:05:17',NULL,0,NULL,NULL),
(108,'Ross','Taylor','taylor@mailinator.com','taylor@mailinator.com','+14506001971','1999-10-31',19,'Male','$2y$13$PrbLiwQeDTF4BQOPYgvu3epomEQrXkIQmJLxrF3G9UHI2VkbILaNC','7HhaD_ioQnrKarbmuy1xSe05KT4ZUdvo','wvFce70KfeMv5Woan_ZPjVogXIR_GfN1_1541073667','20181101080855.png','20181101080855.jpeg','5bdaecd7e52ef.jpeg','5bdaecd7e5176.jpeg','','2',0,1,108,'2018-11-01 17:50:08',108,'2018-11-01 17:50:08','192.168.1.158','Y','N','Y','Y','N','BOTH','N','2018-11-02 02:38:24','797124',0,NULL,NULL),
(109,'Shane','Watson','watson@mailinator.com','watson@mailinator.com','+12368007120','1998-12-06',NULL,'Male','$2y$13$mUgQV430iJzNqAXomOhGxOLQuriBJzMkAVYt.N7S1mQEMkJZ6HZAS','wCeCsqIAocqFkp8lPwLfPRQbSngOJAs8','LGfafMRnQ9vi_9ggQQeHmt81voH21CFv_1541073771','20181101140554.png','20181101135611.jpeg','5bdb3e3b8360c.jpeg','5bdb3e3b81be7.jpeg','','2',0,1,109,'2018-11-05 09:25:57',109,'2018-11-05 09:28:15','192.168.1.182','Y','N','Y','Y','N','BOTH','Y','2018-11-16 08:11:46','136039',1,NULL,'demo.xceltec4@gmail.com'),
(110,NULL,NULL,'vishal.shah9','vishal@xceltec.com',NULL,NULL,NULL,NULL,'$2y$13$UvqFxupSEIbA.RVwuJ16SO0VnYNZvDVURRk.XiTrYrQw/sVwjLX52','JJV2jogBZf3_u4Uet0w4dJjT_uXkR32H','6ALBryyzA4cy3wo7y3A83BLK1oFdt9sz_1541332830','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-11-04 07:00:30',1,'2018-11-04 07:01:54','49.34.168.146','Y','N','Y','N','N','EMAIL','Y','2018-11-04 07:03:10',NULL,1,NULL,NULL),
(111,'thomas','muller','thomas@mailinator.com','thomas@mailinator.com','+15812006979','2000-10-30',18,NULL,'$2y$13$AuhXBeNhcYyk5iRPPG29qOP4VVCec9GSZh04G4zggV3Pn1pYdslrW','TpMRgIaypurOuk-bLq2bFMsOS_vZ0aIj','03QMW0Vj8QOjGmEDmSqI-DGae-3i5cfo_1541421592','5be03a188affd.png',NULL,NULL,NULL,'DES','1',NULL,NULL,1,'2018-11-05 07:39:52',1,'2018-11-05 07:39:52','192.168.1.21','Y','N','N','N','N','EMAIL','N','2018-11-05 07:39:52',NULL,0,NULL,NULL),
(112,'Miroslav','Klose','klose@mailinator.com','klose@mailinator.com','+12368007114','2000-10-30',18,'Male','$2y$13$fXfSf3s0KXiiVxKtJEDLw.ArvrqD.N5oS4qDr/MNJfpIMNYHQm19O','WN4dT7eNcYn01bOzoxUm-PjZukXEyOMW','SI93BxAmqBy6xjF3gAdDiPTttPkRwrvs_1541422417','20181105075623.png','20181105075623.jpeg','5be03df743b38.jpeg','5be03df74344e.jpeg','','2',1,1,112,'2018-11-05 18:26:23',1,'2018-11-05 07:56:34','192.168.1.21','Y','N','Y','Y','N','EMAIL','N','2018-11-05 09:17:44','171888',0,NULL,NULL),
(113,'test','test','test@gmail.com','test@gmail.com','+15615615615','2000-11-05',18,'Male','$2y$13$ozQdgf6HEfuwLKGOtJLsQuB1..Ivsc45Y6yaN0hOzfWoK26MFEhFK','3z-1FPUsuAx1Ps40mZo1TV3aJ6TKrv_R','2qcsUhYLoi4wWHfMqXJWVsymfKy8YT8b_1541423742','5be0427ed8c29.png',NULL,NULL,NULL,'test','2',NULL,NULL,1,'2018-11-05 08:15:42',1,'2018-11-05 08:15:42','192.168.1.24','Y','N','N','N','N','EMAIL','N','2018-11-05 08:15:42',NULL,0,NULL,NULL),
(114,'Thomas','Kenings','Keton@mailinator.com','Keton@mailinator.com','+13023101955','2000-10-30',18,'Male','$2y$13$ej3JbSDlfO5df7VL26aBFuaxAyh/.u5FDNJJ/5umVnDtqAVF29NuK','4gHqoMMUz5Gi8GzX7L5_pnq5dDO2z1aK','Yv38JG0by6_rTcRRcCQ0AXcnR-3NnP5v_1541423887','5be0430fc6c04.png',NULL,NULL,NULL,'DES','2',NULL,NULL,1,'2018-11-05 08:18:07',1,'2018-11-05 08:18:50','192.168.1.21','Y','N','N','N','N','EMAIL','N','2018-11-05 08:18:07',NULL,0,NULL,NULL),
(115,'Miller','Miller','miller@mailinator.com','miller@mailinator.com','+16473256185','2000-10-30',18,'Male','$2y$13$NfHf3i9cl1/wzLdYl9h1pO2DIh6e7A8Jj9RPA7R3rQObHPcvzGrg6','70t_NRrOEvRKMWgXmMN4HoDF6JaJ9Xhb','9sXCrL9is4c4e8PTv2C6n1tzEzn-xl26_1541424394','5be0450aabd60.png',NULL,NULL,NULL,'DES','2',NULL,NULL,1,'2018-11-05 08:26:34',1,'2018-11-05 08:26:45','192.168.1.21','Y','N','N','N','N','EMAIL','N','2018-11-05 08:26:34',NULL,0,NULL,NULL),
(116,NULL,NULL,'Smitty','Lisa_smith@sd42.ca',NULL,NULL,NULL,NULL,'$2y$13$Pu9UkzNwBo9J7pp7.k2NNeXis6KZbSt0sTENQxA5S17Gk3/x4ZUMq','4o_7gmk9jdhoMlL2Quuts6qCZjEL8IRY','PcXfTMdPQVLYVVY4Yc9REXmbT-L-rHMu_1542239242','profile-icon.png',NULL,NULL,NULL,NULL,'2',0,0,1,'2018-11-14 18:47:22',1,'2018-11-14 18:49:51','76.80.167.83','Y','N','Y','N','N','EMAIL','Y','2018-11-14 19:18:23',NULL,1,NULL,NULL);

/*Table structure for table `vehicle_color` */

DROP TABLE IF EXISTS `vehicle_color`;

CREATE TABLE `vehicle_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_color` */

insert  into `vehicle_color`(`id`,`name`,`is_active`,`is_delete`) values 
(1,'Black','Y','N'),
(2,'White','Y','N'),
(3,'Silver','Y','N'),
(4,'Other','Y','N'),
(5,'NEW','N','Y'),
(6,'Testtt','Y','Y'),
(7,'Red','Y','N'),
(8,'test','N','Y');

/*Table structure for table `vehicle_make_model` */

DROP TABLE IF EXISTS `vehicle_make_model`;

CREATE TABLE `vehicle_make_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make_model_name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_make_model` */

insert  into `vehicle_make_model`(`id`,`make_model_name`,`parent_id`,`created_by`,`created_date`,`updated_by`,`updated_date`,`ip_address`,`is_active`,`is_delete`) values 
(1,'Acura',0,1,'2018-02-16 10:52:43',1,'2018-09-17 04:55:43','192.168.1.104','Y','N'),
(2,'Audi',0,1,'2018-06-28 11:14:05',1,'2018-09-17 04:55:44','192.168.1.144','Y','N'),
(3,'BMW',0,1,'2018-06-28 11:14:12',1,'2018-09-17 04:55:45','192.168.1.144','Y','N'),
(4,'Buick',0,1,'2018-09-14 00:51:00',1,'2018-09-17 04:55:46','192.168.1.1','Y','N'),
(5,'Cadillac',0,1,'2018-08-29 08:27:06',74,'2018-09-17 04:55:47','192.168.1.120','Y','N'),
(6,'Chevrolet',0,1,'2018-08-29 08:45:52',74,'2018-09-17 04:55:47','192.168.1.120','Y','N'),
(7,'Chrysler',0,1,'2018-09-17 03:25:35',1,'2018-09-17 04:55:51','192.168.1.132','Y','N'),
(8,'Dodge',0,1,'2018-09-17 04:53:56',1,'2018-09-17 04:55:41','192.168.1.117','Y','N'),
(9,'Fiat',0,1,'2018-09-17 04:56:03',1,'2018-09-17 04:56:03','192.168.1.117','Y','N'),
(10,'Ford',0,1,'2018-09-17 04:56:10',1,'2018-09-17 04:56:10','192.168.1.117','Y','N'),
(11,'General Motors',0,1,'2018-09-17 04:56:19',1,'2018-09-17 04:56:19','192.168.1.117','Y','N'),
(12,'GMC',0,1,'2018-09-17 04:56:27',1,'2018-09-17 04:56:27','192.168.1.117','Y','N'),
(13,'Honda',0,1,'2018-09-17 04:56:37',1,'2018-09-17 04:56:37','192.168.1.117','Y','N'),
(14,'Hyundai',0,1,'2018-09-17 04:56:44',1,'2018-09-17 04:56:44','192.168.1.117','Y','N'),
(15,'Infiniti',0,1,'2018-09-17 04:56:52',1,'2018-09-17 04:56:52','192.168.1.117','Y','N'),
(16,'Jaguar',0,1,'2018-09-17 05:08:51',1,'2018-09-17 05:08:51','192.168.1.117','Y','N'),
(17,'Jeep',0,1,'2018-09-17 05:09:00',1,'2018-09-17 05:09:00','192.168.1.117','Y','N'),
(18,'Kia',0,1,'2018-09-17 05:09:09',1,'2018-09-17 05:09:09','192.168.1.117','Y','N'),
(19,'Land Rover',0,1,'2018-09-17 05:09:20',1,'2018-09-17 05:09:20','192.168.1.117','Y','N'),
(20,'Lexus',0,1,'2018-09-17 05:09:31',1,'2018-09-17 05:09:31','192.168.1.117','Y','N'),
(21,'Mazda',0,1,'2018-09-17 05:09:41',1,'2018-09-17 05:09:41','192.168.1.117','Y','N'),
(22,'Mercedes-Benz',0,1,'2018-09-17 05:10:30',1,'2018-09-17 05:10:30','192.168.1.117','Y','N'),
(23,'Mini',0,1,'2018-09-17 05:10:39',1,'2018-09-17 05:10:39','192.168.1.117','Y','N'),
(24,'Mitsubishi',0,1,'2018-09-17 05:10:48',1,'2018-09-17 05:10:48','192.168.1.117','Y','N'),
(25,'Nissan',0,1,'2018-09-17 05:10:58',1,'2018-09-17 05:10:58','192.168.1.117','Y','N'),
(26,'Ram',0,1,'2018-09-17 05:11:07',1,'2018-09-17 05:11:07','192.168.1.117','Y','N'),
(27,'Subaru',0,1,'2018-09-17 05:11:17',1,'2018-09-17 05:11:17','192.168.1.117','Y','N'),
(28,'Suzuki',0,1,'2018-09-17 05:11:27',1,'2018-09-17 05:11:27','192.168.1.117','Y','N'),
(29,'Tesla',0,1,'2018-09-17 05:11:37',1,'2018-09-17 05:11:37','192.168.1.117','Y','N'),
(30,'Toyota',0,1,'2018-09-17 05:11:47',1,'2018-09-17 05:11:47','192.168.1.117','Y','N'),
(31,'Volkswagen',0,1,'2018-09-17 05:11:57',1,'2018-09-17 05:11:57','192.168.1.117','Y','N'),
(32,'Volvo',0,1,'2018-09-17 05:12:07',1,'2018-09-17 05:12:07','192.168.1.117','Y','N'),
(33,'Others',0,1,'2018-09-17 05:12:16',1,'2018-09-17 05:12:16','192.168.1.117','Y','N'),
(34,'test',0,1,'2018-10-26 04:17:44',1,'2018-10-26 04:24:55','192.168.1.148','N','Y');

/*Table structure for table `vehicle_spacesize` */

DROP TABLE IF EXISTS `vehicle_spacesize`;

CREATE TABLE `vehicle_spacesize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_spacesize` */

insert  into `vehicle_spacesize`(`id`,`name`,`is_active`,`is_delete`) values 
(1,'Small Item','Y','N'),
(2,'Medium Item','Y','N'),
(3,'Large Item','Y','N'),
(4,'XLarge Item','Y','N'),
(5,'test','Y','Y'),
(6,'demorrt','Y','Y'),
(7,'yyyyyyyyyyyyyyyyyyyy','Y','Y'),
(8,'test','Y','Y');

/*Table structure for table `vehicle_type` */

DROP TABLE IF EXISTS `vehicle_type`;

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `is_active` enum('Y','N') NOT NULL,
  `is_delete` enum('Y','N') NOT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `vehicle_type` */

insert  into `vehicle_type`(`id`,`name`,`is_active`,`is_delete`,`modifier`) values 
(1,'Luxury','Y','Y',NULL),
(2,'Minivan','Y','N','1.4'),
(3,'Pickup Truck & Cargo Van','Y','N','1.3'),
(4,'5-Seater SUV & 7-seater SUV','Y','N','1.2'),
(5,'Full size car','Y','N','1.1'),
(6,'Small – intermediate size car','Y','N','1.0'),
(7,'New TruckKKK','Y','Y','1.4'),
(8,'Test','Y','Y','55555'),
(9,'test','N','Y','1.9');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
