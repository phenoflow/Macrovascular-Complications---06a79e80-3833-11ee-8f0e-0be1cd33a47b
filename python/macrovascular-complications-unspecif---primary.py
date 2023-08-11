# Evangelos Kontopantelis, David A Springate, David Reeves, Darren M. Aschroff, Martin Rutter, Iain Buchan, Tim Doran, Matthias Pierce, Darren M. Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"G30X.00","system":"readv2"},{"code":"G35X.00","system":"readv2"},{"code":"G38z.00","system":"readv2"},{"code":"G575z00","system":"readv2"},{"code":"G61X000","system":"readv2"},{"code":"G61X100","system":"readv2"},{"code":"G66..00","system":"readv2"},{"code":"G66..11","system":"readv2"},{"code":"G66..12","system":"readv2"},{"code":"G66..13","system":"readv2"},{"code":"Gyu3400","system":"readv2"},{"code":"Gyu3600","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('macrovascular-complications-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["macrovascular-complications-unspecif---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["macrovascular-complications-unspecif---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["macrovascular-complications-unspecif---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)