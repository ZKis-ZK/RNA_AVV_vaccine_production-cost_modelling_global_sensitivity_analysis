function F = SuperPro(p)
% Input(7): Scale, Failure, Titre, Price, Labor, RNADose, QcQa
% Output(8): CAPEX, OPEX, NumBatch, AmountBatch, AmountYear, DoseBatch, DoseYear, DoseCost

% Cost Basis of 2020
% Working Capital for 10 days
% Labor Rate of $20/hr

%1 Scale:	0.5~50L             from 5L             --> 0.0005~0.05 m3
%2 Failure:	0~10%               from 5%             --> 0~0.1
%3 Titre:	3~7g/L              from 5g/L
%4 Price:	2,500~10,000 $/g	from 3,000$/g       --> 2,500,000~10,000,000 $/kg
%5 Labor:	5~30 $/hr           from 20 $/hr
%6 RNADose:	0.1~10 micro g/dose	from 1 micro g/dose
%7 QcQa:	15~60%              from 40%            --> 0.15~0.6


    excelObject = actxserver('Excel.Application');
    temp1 = strcat(pwd, '\RNA_Roche.xlsm');
    excelObject.Workbooks.Open (temp1)

    temp2 = excelObject.workbooks;
    excelObject.Run ('BeforeSuperExcelMatlab');
    
    temp3 = size(p, 2) ;
    temp3

    for i=1:temp3
        i
        temp4 = excelObject.Run ('SuperExcelMatlab', p(1,i), p(2,i), p(3,i), p(4,i), p(5,i), p(6,i), p(7,i) );

	% temp4(1): CAPEX       --> to be adjusted
	% temp4(2): OPEX	    --> to be adjusted
	% temp4(3): NumBatch
	% temp4(4): AmountBatch
	% temp4(5): AmountYear
	% temp4(6): LaborHour
	% temp4(7): LaborCost	--> to be adjusted
	% temp4(8): QcQaCost	--> to be adjusted

	NumBatch = temp4(3);
	AmountBatch = temp4(4);
	AmountYear = temp4(5);

	DoseBatch = 1E9 * AmountBatch / p(6,i);
	DoseYear = 1E9 * AmountYear / p(6,i);

	LaborHour = temp4(6);
	LaborCost = LaborHour * 2.3 * p(5,i);
	QcQaCost = LaborCost * p(7,i);
    CAPEX = temp4(1) - temp4(7)*10/330 + LaborCost*10/330;
	OPEX = temp4(2) - temp4(7) + LaborCost - temp4(8) + QcQaCost;

    DoseCost = OPEX / DoseYear;
    
    
    F(1,1,i) = CAPEX;
    F(2,1,i) = OPEX;
    F(3,1,i) = NumBatch;
    F(4,1,i) = AmountBatch;
    F(5,1,i) = AmountYear;
    F(6,1,i) = DoseBatch;
    F(7,1,i) = DoseYear;
    F(8,1,i) = DoseCost;
    end

    temp2.Close;