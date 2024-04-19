# Swiss QR Bill Generator

![swiss-qr-bill](https://github.com/PAWECOGmbH/swissqrcode/assets/22148114/90cd0895-799f-4bfb-bb01-dd4e692d32f2)

This repository contains a ColdFusion (Lucee) application specifically designed for generating Swiss QR bills, which are used for streamlined payment processing in Switzerland. The project allows for the generation of QR codes that comply with Swiss payment standards, with the capability to integrate these QR codes directly into payment forms or output them as standalone images or binary data. Additionally, the application can generate a complete PDF page that includes the QR payment slip.

## Features

- Generate Swiss QR codes compliant with Swiss payment standards.
- Option to embed a custom logo (Swiss cross) within the QR code for enhanced brand recognition.
- Generate standalone QR code images or binary data.
- Produce complete PDF pages with integrated QR payment slips, ready for printing or electronic distribution.
- Customize the size and appearance of the QR codes and the complete payment slip.

## Prerequisites

To run this project, you will need:

- A Server running Linus or Windows.
- Lucee 5 or newer.
- Two JAVA files from ZXing library for QR code generation.
  

## Installation

### Required Libraries

You need to include two crucial JAR files for handling QR codes:

- core.jar (core-3.5.3.jar already included in this repository)
- javase.jar (javase-3.5.3.jar already included in this repository)

Place the downloaded ZXing JAR files (or those obtained from the repository) into the bin directory of your Lucee server, or ensure they are accessible to your application.

## Usage

To generate a Swiss QR bill:

1. Configure the payment data:
Modify the variables.qrData struct in the test.cfm script to include the necessary payment details and optionally specify the path to the Swiss cross logo.

2. Run the application:
Execute the main script via your ColdFusion/Lucee server. Depending on your configuration, the script will generate either a QR code image, binary data, or a complete PDF with a QR payment slip.

3. Utilize the output:
Use the generated output in your payment processing system, embed in web pages, or print as needed.

## Contributing

Contributions to improve the project are welcome. Feel free to fork the repo and create a pull request or open an issue with the tag "enhancement". Please note that the code has only been tested on Lucee servers; testing and adapting the code for compatibility with ColdFusion servers would be greatly appreciated.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

