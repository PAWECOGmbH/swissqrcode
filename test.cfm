<cfscript>

qrDataSet = {};

// IBAN number (21 digits)
qrDataSet['billerIBAN'] = "CH5604835012345678009";

//** Rferencenumbers in different variations (delete leading slashes for tests)
qrDataSet['billerQrReference'] = "21 00000 00003 13947 14300 0901"; // QR reference number (26 numbers)
//qrDataSet['billerQrReference'] = "11 09908 27000 00000 00000 60782"; // Including the checksum already (27 numbers)
//qrDataSet['billerQrReference'] = "11 09908 27"; // Short reference number/id
//qrDataSet['billerQrReference'] = "RF48 5000 0567 8901"; // SCOR code (with leading RF)

//* Billers data
qrDataSet['billerName'] = "PAWECO GmbH"; // Company or Pre- and Lastname
qrDataSet['billerStreetAndNumber'] = "Bösch 63"; // Street and number
qrDataSet['billerZipAndCity'] = "6331 Hünenberg"; // ZIP and City
qrDataSet['billerCountryIso'] = "CH"; // Country in ISO format (2 digits)

//* Deptors data
qrDataSet['debtorName'] = "Muster AG"; // Company or Pre- and Lastname
qrDataSet['debtorStreetAndNumber'] = "Musterstrasse 99"; // Street and number
qrDataSet['debtorZipAndCity'] = "9999 St. Gallen"; // ZIP and City
qrDataSet['debtorCountryIso'] = "CH"; // Country in ISO format (2 digits)

//* Invoice data
qrDataSet['invoiceAmount'] = "20457"; // Amount (xxx.xx)
qrDataSet['invoiceCurrency'] = "CHF"; // Currency (only CHF or EUR possible)
qrDataSet['invoiceAddText'] = "Invoice for order nr. 123456"; // Additional info text

// Set the qr code size (square)
qrDataSet['qrSize'] = "300";

// Path to the Swiss cross logo (if desired)
qrDataSet['qrLogo'] = "ch-cross.png";

// Call the function in order to generate the qr code or/and the bill
/*
output:
- "img" for a png image with qr code with the specified size (see above)
- "pdf" for an A4 pdf with payment slip at the bottom (cfdocument)
- "binary" for the qr image as binary code (base64)
- "variable" for the cfdocument variable (is used to merge with another pdf)
*/
myQRInvoice = new swissqrbill().generateSwissBill(qrDataSet, "img");

writeOutput(myQRInvoice);


</cfscript>