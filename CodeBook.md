
===================================================
				Transformations
===================================================
1. Following files needs to be read from fixed width format to data frames
		X_test.txt : file with variables set every 16 characters (561 variables and 2947 observations)
		y_test.txt  : one single column for activities as numbers (1 to 6)
		subject_test.txt : one single column for subject as numbers (1 to 30)
		X_train.txt : file with variables set every 16 characters (561 variables and 7352 observations)
		y_train.txt  : one single column for activities as numbers (1 to 6)
		subject_train.txt : one single column for subject as numbers (1 to 30) 

2. Data frames
		test.xfile : created from reading X_test.txt
		test.activities : created from reading y_test.txt
		test.subject_test : created from reading subject_test.txt
		train.xfile : created from reading X_train.txt
		train.activities : created from reading y_train.txt
		train.subject_test : created from reading subject_train.txt		
		join.subject : created from joining test.subject_test and train.subject_test
		join.xfile : created from joining join.xfile, join.activities and join.subject
		variable.names : created from reading features.txt and adding new variables sourcefile, subject and activities
		join.activities :  created from join test.activities and train.activities
        mean.set : created from join.xfile columns containing "mean()" in the name
		std.set : created from join.xfile columns containing "std()" in the name 
		subject.activities : created from last three columns in join.xfile
		subject.activity.mean.std : created joining subject.activities, mean.set and  std.set
		summary.set : created grouping subject.activity.mean.std by variables subject and  activities then summarising each variable by mean
		
	Additionally
		X_test.txt and X_train.txt: 
			. those files has column names however an extra column needs be added to identify data coming from which source
			. a new variable named source was added with test or train to identify rows from X_test.txt or X_train.txt
			. Note: this variable was not requested but I considered good to have.

3. Adding column names
		Variable names changes to improve readiness:
			. all variable names were set to lower case
			. all "-" were eliminated
			. names starting with "t", first "t" was changed to "time"
			. names starting with "f", first "f" was changed to "frequency"
			. names containing "acc", "acc" was replaced by "acceleration"
			. names containing "mag", "acc" was replaced by "magnitude"
			. names containing "gyro", "acc" was replaced by "gyroscope"
			. numbers in activity were change as follows:
					1	to	WALKING
					2	to	WALKING_UPSTAIRS
					3	to	WALKING_DOWNSTAIRS
					4	to	SITTING
					5	to	STANDING
					6	to	LAYING

4. Final result	 
     summary.txt :  create from data frame summary.set
	 
	 

===================================================
				Variables
===================================================

Position  Name                                Start   Ends   Remaned as
      1   tBodyAcc-mean()-X                       1     16   timebodyaccelerationmean()x
      2   tBodyAcc-mean()-Y                      17     32   timebodyaccelerationmean()y
      3   tBodyAcc-mean()-Z                      33     48   timebodyaccelerationmean()z
      4   tBodyAcc-std()-X                       49     64   timebodyaccelerationstd()x
      5   tBodyAcc-std()-Y                       65     80   timebodyaccelerationstd()y
      6   tBodyAcc-std()-Z                       81     96   timebodyaccelerationstd()z
      7   tBodyAcc-mad()-X                       97    112   timebodyaccelerationmad()x
      8   tBodyAcc-mad()-Y                      113    128   timebodyaccelerationmad()y
      9   tBodyAcc-mad()-Z                      129    144   timebodyaccelerationmad()z
     10   tBodyAcc-max()-X                      145    160   timebodyaccelerationmax()x
     11   tBodyAcc-max()-Y                      161    176   timebodyaccelerationmax()y
     12   tBodyAcc-max()-Z                      177    192   timebodyaccelerationmax()z
     13   tBodyAcc-min()-X                      193    208   timebodyaccelerationmin()x
     14   tBodyAcc-min()-Y                      209    224   timebodyaccelerationmin()y
     15   tBodyAcc-min()-Z                      225    240   timebodyaccelerationmin()z
     16   tBodyAcc-sma()                        241    256   timebodyaccelerationsma()
     17   tBodyAcc-energy()-X                   257    272   timebodyaccelerationenergy()x
     18   tBodyAcc-energy()-Y                   273    288   timebodyaccelerationenergy()y
     19   tBodyAcc-energy()-Z                   289    304   timebodyaccelerationenergy()z
     20   tBodyAcc-iqr()-X                      305    320   timebodyaccelerationiqr()x
     21   tBodyAcc-iqr()-Y                      321    336   timebodyaccelerationiqr()y
     22   tBodyAcc-iqr()-Z                      337    352   timebodyaccelerationiqr()z
     23   tBodyAcc-entropy()-X                  353    368   timebodyaccelerationentropy()x
     24   tBodyAcc-entropy()-Y                  369    384   timebodyaccelerationentropy()y
     25   tBodyAcc-entropy()-Z                  385    400   timebodyaccelerationentropy()z
     26   tBodyAcc-arCoeff()-X                  401    416   timebodyaccelerationarcoeff()x,1
     27   tBodyAcc-arCoeff()-X                  417    432   timebodyaccelerationarcoeff()x,2
     28   tBodyAcc-arCoeff()-X                  433    448   timebodyaccelerationarcoeff()x,3
     29   tBodyAcc-arCoeff()-X                  449    464   timebodyaccelerationarcoeff()x,4
     30   tBodyAcc-arCoeff()-Y                  465    480   timebodyaccelerationarcoeff()y,1
     31   tBodyAcc-arCoeff()-Y                  481    496   timebodyaccelerationarcoeff()y,2
     32   tBodyAcc-arCoeff()-Y                  497    512   timebodyaccelerationarcoeff()y,3
     33   tBodyAcc-arCoeff()-Y                  513    528   timebodyaccelerationarcoeff()y,4
     34   tBodyAcc-arCoeff()-Z                  529    544   timebodyaccelerationarcoeff()z,1
     35   tBodyAcc-arCoeff()-Z                  545    560   timebodyaccelerationarcoeff()z,2
     36   tBodyAcc-arCoeff()-Z                  561    576   timebodyaccelerationarcoeff()z,3
     37   tBodyAcc-arCoeff()-Z                  577    592   timebodyaccelerationarcoeff()z,4
     38   tBodyAcc-correlation()-X              593    608   timebodyaccelerationcorrelation()x,y
     39   tBodyAcc-correlation()-X              609    624   timebodyaccelerationcorrelation()x,z
     40   tBodyAcc-correlation()-Y              625    640   timebodyaccelerationcorrelation()y,z
     41   tGravityAcc-mean()-X                  641    656   timegravityaccelerationmean()x
     42   tGravityAcc-mean()-Y                  657    672   timegravityaccelerationmean()y
     43   tGravityAcc-mean()-Z                  673    688   timegravityaccelerationmean()z
     44   tGravityAcc-std()-X                   689    704   timegravityaccelerationstd()x
     45   tGravityAcc-std()-Y                   705    720   timegravityaccelerationstd()y
     46   tGravityAcc-std()-Z                   721    736   timegravityaccelerationstd()z
     47   tGravityAcc-mad()-X                   737    752   timegravityaccelerationmad()x
     48   tGravityAcc-mad()-Y                   753    768   timegravityaccelerationmad()y
     49   tGravityAcc-mad()-Z                   769    784   timegravityaccelerationmad()z
     50   tGravityAcc-max()-X                   785    800   timegravityaccelerationmax()x
     51   tGravityAcc-max()-Y                   801    816   timegravityaccelerationmax()y
     52   tGravityAcc-max()-Z                   817    832   timegravityaccelerationmax()z
     53   tGravityAcc-min()-X                   833    848   timegravityaccelerationmin()x
     54   tGravityAcc-min()-Y                   849    864   timegravityaccelerationmin()y
     55   tGravityAcc-min()-Z                   865    880   timegravityaccelerationmin()z
     56   tGravityAcc-sma()                     881    896   timegravityaccelerationsma()
     57   tGravityAcc-energy()-X                897    912   timegravityaccelerationenergy()x
     58   tGravityAcc-energy()-Y                913    928   timegravityaccelerationenergy()y
     59   tGravityAcc-energy()-Z                929    944   timegravityaccelerationenergy()z
     60   tGravityAcc-iqr()-X                   945    960   timegravityaccelerationiqr()x
     61   tGravityAcc-iqr()-Y                   961    976   timegravityaccelerationiqr()y
     62   tGravityAcc-iqr()-Z                   977    992   timegravityaccelerationiqr()z
     63   tGravityAcc-entropy()-X               993   1008   timegravityaccelerationentropy()x
     64   tGravityAcc-entropy()-Y              1009   1024   timegravityaccelerationentropy()y
     65   tGravityAcc-entropy()-Z              1025   1040   timegravityaccelerationentropy()z
     66   tGravityAcc-arCoeff()-X              1041   1056   timegravityaccelerationarcoeff()x,1
     67   tGravityAcc-arCoeff()-X              1057   1072   timegravityaccelerationarcoeff()x,2
     68   tGravityAcc-arCoeff()-X              1073   1088   timegravityaccelerationarcoeff()x,3
     69   tGravityAcc-arCoeff()-X              1089   1104   timegravityaccelerationarcoeff()x,4
     70   tGravityAcc-arCoeff()-Y              1105   1120   timegravityaccelerationarcoeff()y,1
     71   tGravityAcc-arCoeff()-Y              1121   1136   timegravityaccelerationarcoeff()y,2
     72   tGravityAcc-arCoeff()-Y              1137   1152   timegravityaccelerationarcoeff()y,3
     73   tGravityAcc-arCoeff()-Y              1153   1168   timegravityaccelerationarcoeff()y,4
     74   tGravityAcc-arCoeff()-Z              1169   1184   timegravityaccelerationarcoeff()z,1
     75   tGravityAcc-arCoeff()-Z              1185   1200   timegravityaccelerationarcoeff()z,2
     76   tGravityAcc-arCoeff()-Z              1201   1216   timegravityaccelerationarcoeff()z,3
     77   tGravityAcc-arCoeff()-Z              1217   1232   timegravityaccelerationarcoeff()z,4
     78   tGravityAcc-correlation()-X          1233   1248   timegravityaccelerationcorrelation()x,y
     79   tGravityAcc-correlation()-X          1249   1264   timegravityaccelerationcorrelation()x,z
     80   tGravityAcc-correlation()-Y          1265   1280   timegravityaccelerationcorrelation()y,z
     81   tBodyAccJerk-mean()-X                1281   1296   timebodyaccelerationjerkmean()x
     82   tBodyAccJerk-mean()-Y                1297   1312   timebodyaccelerationjerkmean()y
     83   tBodyAccJerk-mean()-Z                1313   1328   timebodyaccelerationjerkmean()z
     84   tBodyAccJerk-std()-X                 1329   1344   timebodyaccelerationjerkstd()x
     85   tBodyAccJerk-std()-Y                 1345   1360   timebodyaccelerationjerkstd()y
     86   tBodyAccJerk-std()-Z                 1361   1376   timebodyaccelerationjerkstd()z
     87   tBodyAccJerk-mad()-X                 1377   1392   timebodyaccelerationjerkmad()x
     88   tBodyAccJerk-mad()-Y                 1393   1408   timebodyaccelerationjerkmad()y
     89   tBodyAccJerk-mad()-Z                 1409   1424   timebodyaccelerationjerkmad()z
     90   tBodyAccJerk-max()-X                 1425   1440   timebodyaccelerationjerkmax()x
     91   tBodyAccJerk-max()-Y                 1441   1456   timebodyaccelerationjerkmax()y
     92   tBodyAccJerk-max()-Z                 1457   1472   timebodyaccelerationjerkmax()z
     93   tBodyAccJerk-min()-X                 1473   1488   timebodyaccelerationjerkmin()x
     94   tBodyAccJerk-min()-Y                 1489   1504   timebodyaccelerationjerkmin()y
     95   tBodyAccJerk-min()-Z                 1505   1520   timebodyaccelerationjerkmin()z
     96   tBodyAccJerk-sma()                   1521   1536   timebodyaccelerationjerksma()
     97   tBodyAccJerk-energy()-X              1537   1552   timebodyaccelerationjerkenergy()x
     98   tBodyAccJerk-energy()-Y              1553   1568   timebodyaccelerationjerkenergy()y
     99   tBodyAccJerk-energy()-Z              1569   1584   timebodyaccelerationjerkenergy()z
    100   tBodyAccJerk-iqr()-X                 1585   1600   timebodyaccelerationjerkiqr()x
    101   tBodyAccJerk-iqr()-Y                 1601   1616   timebodyaccelerationjerkiqr()y
    102   tBodyAccJerk-iqr()-Z                 1617   1632   timebodyaccelerationjerkiqr()z
    103   tBodyAccJerk-entropy()-X             1633   1648   timebodyaccelerationjerkentropy()x
    104   tBodyAccJerk-entropy()-Y             1649   1664   timebodyaccelerationjerkentropy()y
    105   tBodyAccJerk-entropy()-Z             1665   1680   timebodyaccelerationjerkentropy()z
    106   tBodyAccJerk-arCoeff()-X             1681   1696   timebodyaccelerationjerkarcoeff()x,1
    107   tBodyAccJerk-arCoeff()-X             1697   1712   timebodyaccelerationjerkarcoeff()x,2
    108   tBodyAccJerk-arCoeff()-X             1713   1728   timebodyaccelerationjerkarcoeff()x,3
    109   tBodyAccJerk-arCoeff()-X             1729   1744   timebodyaccelerationjerkarcoeff()x,4
    110   tBodyAccJerk-arCoeff()-Y             1745   1760   timebodyaccelerationjerkarcoeff()y,1
    111   tBodyAccJerk-arCoeff()-Y             1761   1776   timebodyaccelerationjerkarcoeff()y,2
    112   tBodyAccJerk-arCoeff()-Y             1777   1792   timebodyaccelerationjerkarcoeff()y,3
    113   tBodyAccJerk-arCoeff()-Y             1793   1808   timebodyaccelerationjerkarcoeff()y,4
    114   tBodyAccJerk-arCoeff()-Z             1809   1824   timebodyaccelerationjerkarcoeff()z,1
    115   tBodyAccJerk-arCoeff()-Z             1825   1840   timebodyaccelerationjerkarcoeff()z,2
    116   tBodyAccJerk-arCoeff()-Z             1841   1856   timebodyaccelerationjerkarcoeff()z,3
    117   tBodyAccJerk-arCoeff()-Z             1857   1872   timebodyaccelerationjerkarcoeff()z,4
    118   tBodyAccJerk-correlation()-X         1873   1888   timebodyaccelerationjerkcorrelation()x,y
    119   tBodyAccJerk-correlation()-X         1889   1904   timebodyaccelerationjerkcorrelation()x,z
    120   tBodyAccJerk-correlation()-Y         1905   1920   timebodyaccelerationjerkcorrelation()y,z
    121   tBodyGyro-mean()-X                   1921   1936   timebodygyroscopemean()x
    122   tBodyGyro-mean()-Y                   1937   1952   timebodygyroscopemean()y
    123   tBodyGyro-mean()-Z                   1953   1968   timebodygyroscopemean()z
    124   tBodyGyro-std()-X                    1969   1984   timebodygyroscopestd()x
    125   tBodyGyro-std()-Y                    1985   2000   timebodygyroscopestd()y
    126   tBodyGyro-std()-Z                    2001   2016   timebodygyroscopestd()z
    127   tBodyGyro-mad()-X                    2017   2032   timebodygyroscopemad()x
    128   tBodyGyro-mad()-Y                    2033   2048   timebodygyroscopemad()y
    129   tBodyGyro-mad()-Z                    2049   2064   timebodygyroscopemad()z
    130   tBodyGyro-max()-X                    2065   2080   timebodygyroscopemax()x
    131   tBodyGyro-max()-Y                    2081   2096   timebodygyroscopemax()y
    132   tBodyGyro-max()-Z                    2097   2112   timebodygyroscopemax()z
    133   tBodyGyro-min()-X                    2113   2128   timebodygyroscopemin()x
    134   tBodyGyro-min()-Y                    2129   2144   timebodygyroscopemin()y
    135   tBodyGyro-min()-Z                    2145   2160   timebodygyroscopemin()z
    136   tBodyGyro-sma()                      2161   2176   timebodygyroscopesma()
    137   tBodyGyro-energy()-X                 2177   2192   timebodygyroscopeenergy()x
    138   tBodyGyro-energy()-Y                 2193   2208   timebodygyroscopeenergy()y
    139   tBodyGyro-energy()-Z                 2209   2224   timebodygyroscopeenergy()z
    140   tBodyGyro-iqr()-X                    2225   2240   timebodygyroscopeiqr()x
    141   tBodyGyro-iqr()-Y                    2241   2256   timebodygyroscopeiqr()y
    142   tBodyGyro-iqr()-Z                    2257   2272   timebodygyroscopeiqr()z
    143   tBodyGyro-entropy()-X                2273   2288   timebodygyroscopeentropy()x
    144   tBodyGyro-entropy()-Y                2289   2304   timebodygyroscopeentropy()y
    145   tBodyGyro-entropy()-Z                2305   2320   timebodygyroscopeentropy()z
    146   tBodyGyro-arCoeff()-X                2321   2336   timebodygyroscopearcoeff()x,1
    147   tBodyGyro-arCoeff()-X                2337   2352   timebodygyroscopearcoeff()x,2
    148   tBodyGyro-arCoeff()-X                2353   2368   timebodygyroscopearcoeff()x,3
    149   tBodyGyro-arCoeff()-X                2369   2384   timebodygyroscopearcoeff()x,4
    150   tBodyGyro-arCoeff()-Y                2385   2400   timebodygyroscopearcoeff()y,1
    151   tBodyGyro-arCoeff()-Y                2401   2416   timebodygyroscopearcoeff()y,2
    152   tBodyGyro-arCoeff()-Y                2417   2432   timebodygyroscopearcoeff()y,3
    153   tBodyGyro-arCoeff()-Y                2433   2448   timebodygyroscopearcoeff()y,4
    154   tBodyGyro-arCoeff()-Z                2449   2464   timebodygyroscopearcoeff()z,1
    155   tBodyGyro-arCoeff()-Z                2465   2480   timebodygyroscopearcoeff()z,2
    156   tBodyGyro-arCoeff()-Z                2481   2496   timebodygyroscopearcoeff()z,3
    157   tBodyGyro-arCoeff()-Z                2497   2512   timebodygyroscopearcoeff()z,4
    158   tBodyGyro-correlation()-X            2513   2528   timebodygyroscopecorrelation()x,y
    159   tBodyGyro-correlation()-X            2529   2544   timebodygyroscopecorrelation()x,z
    160   tBodyGyro-correlation()-Y            2545   2560   timebodygyroscopecorrelation()y,z
    161   tBodyGyroJerk-mean()-X               2561   2576   timebodygyroscopejerkmean()x
    162   tBodyGyroJerk-mean()-Y               2577   2592   timebodygyroscopejerkmean()y
    163   tBodyGyroJerk-mean()-Z               2593   2608   timebodygyroscopejerkmean()z
    164   tBodyGyroJerk-std()-X                2609   2624   timebodygyroscopejerkstd()x
    165   tBodyGyroJerk-std()-Y                2625   2640   timebodygyroscopejerkstd()y
    166   tBodyGyroJerk-std()-Z                2641   2656   timebodygyroscopejerkstd()z
    167   tBodyGyroJerk-mad()-X                2657   2672   timebodygyroscopejerkmad()x
    168   tBodyGyroJerk-mad()-Y                2673   2688   timebodygyroscopejerkmad()y
    169   tBodyGyroJerk-mad()-Z                2689   2704   timebodygyroscopejerkmad()z
    170   tBodyGyroJerk-max()-X                2705   2720   timebodygyroscopejerkmax()x
    171   tBodyGyroJerk-max()-Y                2721   2736   timebodygyroscopejerkmax()y
    172   tBodyGyroJerk-max()-Z                2737   2752   timebodygyroscopejerkmax()z
    173   tBodyGyroJerk-min()-X                2753   2768   timebodygyroscopejerkmin()x
    174   tBodyGyroJerk-min()-Y                2769   2784   timebodygyroscopejerkmin()y
    175   tBodyGyroJerk-min()-Z                2785   2800   timebodygyroscopejerkmin()z
    176   tBodyGyroJerk-sma()                  2801   2816   timebodygyroscopejerksma()
    177   tBodyGyroJerk-energy()-X             2817   2832   timebodygyroscopejerkenergy()x
    178   tBodyGyroJerk-energy()-Y             2833   2848   timebodygyroscopejerkenergy()y
    179   tBodyGyroJerk-energy()-Z             2849   2864   timebodygyroscopejerkenergy()z
    180   tBodyGyroJerk-iqr()-X                2865   2880   timebodygyroscopejerkiqr()x
    181   tBodyGyroJerk-iqr()-Y                2881   2896   timebodygyroscopejerkiqr()y
    182   tBodyGyroJerk-iqr()-Z                2897   2912   timebodygyroscopejerkiqr()z
    183   tBodyGyroJerk-entropy()-X            2913   2928   timebodygyroscopejerkentropy()x
    184   tBodyGyroJerk-entropy()-Y            2929   2944   timebodygyroscopejerkentropy()y
    185   tBodyGyroJerk-entropy()-Z            2945   2960   timebodygyroscopejerkentropy()z
    186   tBodyGyroJerk-arCoeff()-X            2961   2976   timebodygyroscopejerkarcoeff()x,1
    187   tBodyGyroJerk-arCoeff()-X            2977   2992   timebodygyroscopejerkarcoeff()x,2
    188   tBodyGyroJerk-arCoeff()-X            2993   3008   timebodygyroscopejerkarcoeff()x,3
    189   tBodyGyroJerk-arCoeff()-X            3009   3024   timebodygyroscopejerkarcoeff()x,4
    190   tBodyGyroJerk-arCoeff()-Y            3025   3040   timebodygyroscopejerkarcoeff()y,1
    191   tBodyGyroJerk-arCoeff()-Y            3041   3056   timebodygyroscopejerkarcoeff()y,2
    192   tBodyGyroJerk-arCoeff()-Y            3057   3072   timebodygyroscopejerkarcoeff()y,3
    193   tBodyGyroJerk-arCoeff()-Y            3073   3088   timebodygyroscopejerkarcoeff()y,4
    194   tBodyGyroJerk-arCoeff()-Z            3089   3104   timebodygyroscopejerkarcoeff()z,1
    195   tBodyGyroJerk-arCoeff()-Z            3105   3120   timebodygyroscopejerkarcoeff()z,2
    196   tBodyGyroJerk-arCoeff()-Z            3121   3136   timebodygyroscopejerkarcoeff()z,3
    197   tBodyGyroJerk-arCoeff()-Z            3137   3152   timebodygyroscopejerkarcoeff()z,4
    198   tBodyGyroJerk-correlation()-X        3153   3168   timebodygyroscopejerkcorrelation()x,y
    199   tBodyGyroJerk-correlation()-X        3169   3184   timebodygyroscopejerkcorrelation()x,z
    200   tBodyGyroJerk-correlation()-Y        3185   3200   timebodygyroscopejerkcorrelation()y,z
    201   tBodyAccMag-mean()                   3201   3216   timebodyaccelerationmagnitudemean()
    202   tBodyAccMag-std()                    3217   3232   timebodyaccelerationmagnitudestd()
    203   tBodyAccMag-mad()                    3233   3248   timebodyaccelerationmagnitudemad()
    204   tBodyAccMag-max()                    3249   3264   timebodyaccelerationmagnitudemax()
    205   tBodyAccMag-min()                    3265   3280   timebodyaccelerationmagnitudemin()
    206   tBodyAccMag-sma()                    3281   3296   timebodyaccelerationmagnitudesma()
    207   tBodyAccMag-energy()                 3297   3312   timebodyaccelerationmagnitudeenergy()
    208   tBodyAccMag-iqr()                    3313   3328   timebodyaccelerationmagnitudeiqr()
    209   tBodyAccMag-entropy()                3329   3344   timebodyaccelerationmagnitudeentropy()
    210   tBodyAccMag-arCoeff()1               3345   3360   timebodyaccelerationmagnitudearcoeff()1
    211   tBodyAccMag-arCoeff()2               3361   3376   timebodyaccelerationmagnitudearcoeff()2
    212   tBodyAccMag-arCoeff()3               3377   3392   timebodyaccelerationmagnitudearcoeff()3
    213   tBodyAccMag-arCoeff()4               3393   3408   timebodyaccelerationmagnitudearcoeff()4
    214   tGravityAccMag-mean()                3409   3424   timegravityaccelerationmagnitudemean()
    215   tGravityAccMag-std()                 3425   3440   timegravityaccelerationmagnitudestd()
    216   tGravityAccMag-mad()                 3441   3456   timegravityaccelerationmagnitudemad()
    217   tGravityAccMag-max()                 3457   3472   timegravityaccelerationmagnitudemax()
    218   tGravityAccMag-min()                 3473   3488   timegravityaccelerationmagnitudemin()
    219   tGravityAccMag-sma()                 3489   3504   timegravityaccelerationmagnitudesma()
    220   tGravityAccMag-energy()              3505   3520   timegravityaccelerationmagnitudeenergy()
    221   tGravityAccMag-iqr()                 3521   3536   timegravityaccelerationmagnitudeiqr()
    222   tGravityAccMag-entropy()             3537   3552   timegravityaccelerationmagnitudeentropy()
    223   tGravityAccMag-arCoeff()1            3553   3568   timegravityaccelerationmagnitudearcoeff()1
    224   tGravityAccMag-arCoeff()2            3569   3584   timegravityaccelerationmagnitudearcoeff()2
    225   tGravityAccMag-arCoeff()3            3585   3600   timegravityaccelerationmagnitudearcoeff()3
    226   tGravityAccMag-arCoeff()4            3601   3616   timegravityaccelerationmagnitudearcoeff()4
    227   tBodyAccJerkMag-mean()               3617   3632   timebodyaccelerationjerkmagnitudemean()
    228   tBodyAccJerkMag-std()                3633   3648   timebodyaccelerationjerkmagnitudestd()
    229   tBodyAccJerkMag-mad()                3649   3664   timebodyaccelerationjerkmagnitudemad()
    230   tBodyAccJerkMag-max()                3665   3680   timebodyaccelerationjerkmagnitudemax()
    231   tBodyAccJerkMag-min()                3681   3696   timebodyaccelerationjerkmagnitudemin()
    232   tBodyAccJerkMag-sma()                3697   3712   timebodyaccelerationjerkmagnitudesma()
    233   tBodyAccJerkMag-energy()             3713   3728   timebodyaccelerationjerkmagnitudeenergy()
    234   tBodyAccJerkMag-iqr()                3729   3744   timebodyaccelerationjerkmagnitudeiqr()
    235   tBodyAccJerkMag-entropy()            3745   3760   timebodyaccelerationjerkmagnitudeentropy()
    236   tBodyAccJerkMag-arCoeff()1           3761   3776   timebodyaccelerationjerkmagnitudearcoeff()1
    237   tBodyAccJerkMag-arCoeff()2           3777   3792   timebodyaccelerationjerkmagnitudearcoeff()2
    238   tBodyAccJerkMag-arCoeff()3           3793   3808   timebodyaccelerationjerkmagnitudearcoeff()3
    239   tBodyAccJerkMag-arCoeff()4           3809   3824   timebodyaccelerationjerkmagnitudearcoeff()4
    240   tBodyGyroMag-mean()                  3825   3840   timebodygyroscopemagnitudemean()
    241   tBodyGyroMag-std()                   3841   3856   timebodygyroscopemagnitudestd()
    242   tBodyGyroMag-mad()                   3857   3872   timebodygyroscopemagnitudemad()
    243   tBodyGyroMag-max()                   3873   3888   timebodygyroscopemagnitudemax()
    244   tBodyGyroMag-min()                   3889   3904   timebodygyroscopemagnitudemin()
    245   tBodyGyroMag-sma()                   3905   3920   timebodygyroscopemagnitudesma()
    246   tBodyGyroMag-energy()                3921   3936   timebodygyroscopemagnitudeenergy()
    247   tBodyGyroMag-iqr()                   3937   3952   timebodygyroscopemagnitudeiqr()
    248   tBodyGyroMag-entropy()               3953   3968   timebodygyroscopemagnitudeentropy()
    249   tBodyGyroMag-arCoeff()1              3969   3984   timebodygyroscopemagnitudearcoeff()1
    250   tBodyGyroMag-arCoeff()2              3985   4000   timebodygyroscopemagnitudearcoeff()2
    251   tBodyGyroMag-arCoeff()3              4001   4016   timebodygyroscopemagnitudearcoeff()3
    252   tBodyGyroMag-arCoeff()4              4017   4032   timebodygyroscopemagnitudearcoeff()4
    253   tBodyGyroJerkMag-mean()              4033   4048   timebodygyroscopejerkmagnitudemean()
    254   tBodyGyroJerkMag-std()               4049   4064   timebodygyroscopejerkmagnitudestd()
    255   tBodyGyroJerkMag-mad()               4065   4080   timebodygyroscopejerkmagnitudemad()
    256   tBodyGyroJerkMag-max()               4081   4096   timebodygyroscopejerkmagnitudemax()
    257   tBodyGyroJerkMag-min()               4097   4112   timebodygyroscopejerkmagnitudemin()
    258   tBodyGyroJerkMag-sma()               4113   4128   timebodygyroscopejerkmagnitudesma()
    259   tBodyGyroJerkMag-energy()            4129   4144   timebodygyroscopejerkmagnitudeenergy()
    260   tBodyGyroJerkMag-iqr()               4145   4160   timebodygyroscopejerkmagnitudeiqr()
    261   tBodyGyroJerkMag-entropy()           4161   4176   timebodygyroscopejerkmagnitudeentropy()
    262   tBodyGyroJerkMag-arCoeff()1          4177   4192   timebodygyroscopejerkmagnitudearcoeff()1
    263   tBodyGyroJerkMag-arCoeff()2          4193   4208   timebodygyroscopejerkmagnitudearcoeff()2
    264   tBodyGyroJerkMag-arCoeff()3          4209   4224   timebodygyroscopejerkmagnitudearcoeff()3
    265   tBodyGyroJerkMag-arCoeff()4          4225   4240   timebodygyroscopejerkmagnitudearcoeff()4
    266   fBodyAcc-mean()-X                    4241   4256   frequencybodyaccelerationmean()x
    267   fBodyAcc-mean()-Y                    4257   4272   frequencybodyaccelerationmean()y
    268   fBodyAcc-mean()-Z                    4273   4288   frequencybodyaccelerationmean()z
    269   fBodyAcc-std()-X                     4289   4304   frequencybodyaccelerationstd()x
    270   fBodyAcc-std()-Y                     4305   4320   frequencybodyaccelerationstd()y
    271   fBodyAcc-std()-Z                     4321   4336   frequencybodyaccelerationstd()z
    272   fBodyAcc-mad()-X                     4337   4352   frequencybodyaccelerationmad()x
    273   fBodyAcc-mad()-Y                     4353   4368   frequencybodyaccelerationmad()y
    274   fBodyAcc-mad()-Z                     4369   4384   frequencybodyaccelerationmad()z
    275   fBodyAcc-max()-X                     4385   4400   frequencybodyaccelerationmax()x
    276   fBodyAcc-max()-Y                     4401   4416   frequencybodyaccelerationmax()y
    277   fBodyAcc-max()-Z                     4417   4432   frequencybodyaccelerationmax()z
    278   fBodyAcc-min()-X                     4433   4448   frequencybodyaccelerationmin()x
    279   fBodyAcc-min()-Y                     4449   4464   frequencybodyaccelerationmin()y
    280   fBodyAcc-min()-Z                     4465   4480   frequencybodyaccelerationmin()z
    281   fBodyAcc-sma()                       4481   4496   frequencybodyaccelerationsma()
    282   fBodyAcc-energy()-X                  4497   4512   frequencybodyaccelerationenergy()x
    283   fBodyAcc-energy()-Y                  4513   4528   frequencybodyaccelerationenergy()y
    284   fBodyAcc-energy()-Z                  4529   4544   frequencybodyaccelerationenergy()z
    285   fBodyAcc-iqr()-X                     4545   4560   frequencybodyaccelerationiqr()x
    286   fBodyAcc-iqr()-Y                     4561   4576   frequencybodyaccelerationiqr()y
    287   fBodyAcc-iqr()-Z                     4577   4592   frequencybodyaccelerationiqr()z
    288   fBodyAcc-entropy()-X                 4593   4608   frequencybodyaccelerationentropy()x
    289   fBodyAcc-entropy()-Y                 4609   4624   frequencybodyaccelerationentropy()y
    290   fBodyAcc-entropy()-Z                 4625   4640   frequencybodyaccelerationentropy()z
    291   fBodyAcc-maxInds-X                   4641   4656   frequencybodyaccelerationmaxindsx
    292   fBodyAcc-maxInds-Y                   4657   4672   frequencybodyaccelerationmaxindsy
    293   fBodyAcc-maxInds-Z                   4673   4688   frequencybodyaccelerationmaxindsz
    294   fBodyAcc-meanFreq()-X                4689   4704   frequencybodyaccelerationmeanfreq()x
    295   fBodyAcc-meanFreq()-Y                4705   4720   frequencybodyaccelerationmeanfreq()y
    296   fBodyAcc-meanFreq()-Z                4721   4736   frequencybodyaccelerationmeanfreq()z
    297   fBodyAcc-skewness()-X                4737   4752   frequencybodyaccelerationskewness()x
    298   fBodyAcc-kurtosis()-X                4753   4768   frequencybodyaccelerationkurtosis()x
    299   fBodyAcc-skewness()-Y                4769   4784   frequencybodyaccelerationskewness()y
    300   fBodyAcc-kurtosis()-Y                4785   4800   frequencybodyaccelerationkurtosis()y
    301   fBodyAcc-skewness()-Z                4801   4816   frequencybodyaccelerationskewness()z
    302   fBodyAcc-kurtosis()-Z                4817   4832   frequencybodyaccelerationkurtosis()z
    303   fBodyAcc-bandsEnergy()-1             4833   4848   frequencybodyaccelerationbandsenergy()1,8
    304   fBodyAcc-bandsEnergy()-9             4849   4864   frequencybodyaccelerationbandsenergy()9,16
    305   fBodyAcc-bandsEnergy()-17            4865   4880   frequencybodyaccelerationbandsenergy()17,24
    306   fBodyAcc-bandsEnergy()-25            4881   4896   frequencybodyaccelerationbandsenergy()25,32
    307   fBodyAcc-bandsEnergy()-33            4897   4912   frequencybodyaccelerationbandsenergy()33,40
    308   fBodyAcc-bandsEnergy()-41            4913   4928   frequencybodyaccelerationbandsenergy()41,48
    309   fBodyAcc-bandsEnergy()-49            4929   4944   frequencybodyaccelerationbandsenergy()49,56
    310   fBodyAcc-bandsEnergy()-57            4945   4960   frequencybodyaccelerationbandsenergy()57,64
    311   fBodyAcc-bandsEnergy()-1             4961   4976   frequencybodyaccelerationbandsenergy()1,16
    312   fBodyAcc-bandsEnergy()-17            4977   4992   frequencybodyaccelerationbandsenergy()17,32
    313   fBodyAcc-bandsEnergy()-33            4993   5008   frequencybodyaccelerationbandsenergy()33,48
    314   fBodyAcc-bandsEnergy()-49            5009   5024   frequencybodyaccelerationbandsenergy()49,64
    315   fBodyAcc-bandsEnergy()-1             5025   5040   frequencybodyaccelerationbandsenergy()1,24
    316   fBodyAcc-bandsEnergy()-25            5041   5056   frequencybodyaccelerationbandsenergy()25,48
    317   fBodyAcc-bandsEnergy()-1             5057   5072   frequencybodyaccelerationbandsenergy()1,8
    318   fBodyAcc-bandsEnergy()-9             5073   5088   frequencybodyaccelerationbandsenergy()9,16
    319   fBodyAcc-bandsEnergy()-17            5089   5104   frequencybodyaccelerationbandsenergy()17,24
    320   fBodyAcc-bandsEnergy()-25            5105   5120   frequencybodyaccelerationbandsenergy()25,32
    321   fBodyAcc-bandsEnergy()-33            5121   5136   frequencybodyaccelerationbandsenergy()33,40
    322   fBodyAcc-bandsEnergy()-41            5137   5152   frequencybodyaccelerationbandsenergy()41,48
    323   fBodyAcc-bandsEnergy()-49            5153   5168   frequencybodyaccelerationbandsenergy()49,56
    324   fBodyAcc-bandsEnergy()-57            5169   5184   frequencybodyaccelerationbandsenergy()57,64
    325   fBodyAcc-bandsEnergy()-1             5185   5200   frequencybodyaccelerationbandsenergy()1,16
    326   fBodyAcc-bandsEnergy()-17            5201   5216   frequencybodyaccelerationbandsenergy()17,32
    327   fBodyAcc-bandsEnergy()-33            5217   5232   frequencybodyaccelerationbandsenergy()33,48
    328   fBodyAcc-bandsEnergy()-49            5233   5248   frequencybodyaccelerationbandsenergy()49,64
    329   fBodyAcc-bandsEnergy()-1             5249   5264   frequencybodyaccelerationbandsenergy()1,24
    330   fBodyAcc-bandsEnergy()-25            5265   5280   frequencybodyaccelerationbandsenergy()25,48
    331   fBodyAcc-bandsEnergy()-1             5281   5296   frequencybodyaccelerationbandsenergy()1,8
    332   fBodyAcc-bandsEnergy()-9             5297   5312   frequencybodyaccelerationbandsenergy()9,16
    333   fBodyAcc-bandsEnergy()-17            5313   5328   frequencybodyaccelerationbandsenergy()17,24
    334   fBodyAcc-bandsEnergy()-25            5329   5344   frequencybodyaccelerationbandsenergy()25,32
    335   fBodyAcc-bandsEnergy()-33            5345   5360   frequencybodyaccelerationbandsenergy()33,40
    336   fBodyAcc-bandsEnergy()-41            5361   5376   frequencybodyaccelerationbandsenergy()41,48
    337   fBodyAcc-bandsEnergy()-49            5377   5392   frequencybodyaccelerationbandsenergy()49,56
    338   fBodyAcc-bandsEnergy()-57            5393   5408   frequencybodyaccelerationbandsenergy()57,64
    339   fBodyAcc-bandsEnergy()-1             5409   5424   frequencybodyaccelerationbandsenergy()1,16
    340   fBodyAcc-bandsEnergy()-17            5425   5440   frequencybodyaccelerationbandsenergy()17,32
    341   fBodyAcc-bandsEnergy()-33            5441   5456   frequencybodyaccelerationbandsenergy()33,48
    342   fBodyAcc-bandsEnergy()-49            5457   5472   frequencybodyaccelerationbandsenergy()49,64
    343   fBodyAcc-bandsEnergy()-1             5473   5488   frequencybodyaccelerationbandsenergy()1,24
    344   fBodyAcc-bandsEnergy()-25            5489   5504   frequencybodyaccelerationbandsenergy()25,48
    345   fBodyAccJerk-mean()-X                5505   5520   frequencybodyaccelerationjerkmean()x
    346   fBodyAccJerk-mean()-Y                5521   5536   frequencybodyaccelerationjerkmean()y
    347   fBodyAccJerk-mean()-Z                5537   5552   frequencybodyaccelerationjerkmean()z
    348   fBodyAccJerk-std()-X                 5553   5568   frequencybodyaccelerationjerkstd()x
    349   fBodyAccJerk-std()-Y                 5569   5584   frequencybodyaccelerationjerkstd()y
    350   fBodyAccJerk-std()-Z                 5585   5600   frequencybodyaccelerationjerkstd()z
    351   fBodyAccJerk-mad()-X                 5601   5616   frequencybodyaccelerationjerkmad()x
    352   fBodyAccJerk-mad()-Y                 5617   5632   frequencybodyaccelerationjerkmad()y
    353   fBodyAccJerk-mad()-Z                 5633   5648   frequencybodyaccelerationjerkmad()z
    354   fBodyAccJerk-max()-X                 5649   5664   frequencybodyaccelerationjerkmax()x
    355   fBodyAccJerk-max()-Y                 5665   5680   frequencybodyaccelerationjerkmax()y
    356   fBodyAccJerk-max()-Z                 5681   5696   frequencybodyaccelerationjerkmax()z
    357   fBodyAccJerk-min()-X                 5697   5712   frequencybodyaccelerationjerkmin()x
    358   fBodyAccJerk-min()-Y                 5713   5728   frequencybodyaccelerationjerkmin()y
    359   fBodyAccJerk-min()-Z                 5729   5744   frequencybodyaccelerationjerkmin()z
    360   fBodyAccJerk-sma()                   5745   5760   frequencybodyaccelerationjerksma()
    361   fBodyAccJerk-energy()-X              5761   5776   frequencybodyaccelerationjerkenergy()x
    362   fBodyAccJerk-energy()-Y              5777   5792   frequencybodyaccelerationjerkenergy()y
    363   fBodyAccJerk-energy()-Z              5793   5808   frequencybodyaccelerationjerkenergy()z
    364   fBodyAccJerk-iqr()-X                 5809   5824   frequencybodyaccelerationjerkiqr()x
    365   fBodyAccJerk-iqr()-Y                 5825   5840   frequencybodyaccelerationjerkiqr()y
    366   fBodyAccJerk-iqr()-Z                 5841   5856   frequencybodyaccelerationjerkiqr()z
    367   fBodyAccJerk-entropy()-X             5857   5872   frequencybodyaccelerationjerkentropy()x
    368   fBodyAccJerk-entropy()-Y             5873   5888   frequencybodyaccelerationjerkentropy()y
    369   fBodyAccJerk-entropy()-Z             5889   5904   frequencybodyaccelerationjerkentropy()z
    370   fBodyAccJerk-maxInds-X               5905   5920   frequencybodyaccelerationjerkmaxindsx
    371   fBodyAccJerk-maxInds-Y               5921   5936   frequencybodyaccelerationjerkmaxindsy
    372   fBodyAccJerk-maxInds-Z               5937   5952   frequencybodyaccelerationjerkmaxindsz
    373   fBodyAccJerk-meanFreq()-X            5953   5968   frequencybodyaccelerationjerkmeanfreq()x
    374   fBodyAccJerk-meanFreq()-Y            5969   5984   frequencybodyaccelerationjerkmeanfreq()y
    375   fBodyAccJerk-meanFreq()-Z            5985   6000   frequencybodyaccelerationjerkmeanfreq()z
    376   fBodyAccJerk-skewness()-X            6001   6016   frequencybodyaccelerationjerkskewness()x
    377   fBodyAccJerk-kurtosis()-X            6017   6032   frequencybodyaccelerationjerkkurtosis()x
    378   fBodyAccJerk-skewness()-Y            6033   6048   frequencybodyaccelerationjerkskewness()y
    379   fBodyAccJerk-kurtosis()-Y            6049   6064   frequencybodyaccelerationjerkkurtosis()y
    380   fBodyAccJerk-skewness()-Z            6065   6080   frequencybodyaccelerationjerkskewness()z
    381   fBodyAccJerk-kurtosis()-Z            6081   6096   frequencybodyaccelerationjerkkurtosis()z
    382   fBodyAccJerk-bandsEnergy()-1         6097   6112   frequencybodyaccelerationjerkbandsenergy()1,8
    383   fBodyAccJerk-bandsEnergy()-9         6113   6128   frequencybodyaccelerationjerkbandsenergy()9,16
    384   fBodyAccJerk-bandsEnergy()-17        6129   6144   frequencybodyaccelerationjerkbandsenergy()17,24
    385   fBodyAccJerk-bandsEnergy()-25        6145   6160   frequencybodyaccelerationjerkbandsenergy()25,32
    386   fBodyAccJerk-bandsEnergy()-33        6161   6176   frequencybodyaccelerationjerkbandsenergy()33,40
    387   fBodyAccJerk-bandsEnergy()-41        6177   6192   frequencybodyaccelerationjerkbandsenergy()41,48
    388   fBodyAccJerk-bandsEnergy()-49        6193   6208   frequencybodyaccelerationjerkbandsenergy()49,56
    389   fBodyAccJerk-bandsEnergy()-57        6209   6224   frequencybodyaccelerationjerkbandsenergy()57,64
    390   fBodyAccJerk-bandsEnergy()-1         6225   6240   frequencybodyaccelerationjerkbandsenergy()1,16
    391   fBodyAccJerk-bandsEnergy()-17        6241   6256   frequencybodyaccelerationjerkbandsenergy()17,32
    392   fBodyAccJerk-bandsEnergy()-33        6257   6272   frequencybodyaccelerationjerkbandsenergy()33,48
    393   fBodyAccJerk-bandsEnergy()-49        6273   6288   frequencybodyaccelerationjerkbandsenergy()49,64
    394   fBodyAccJerk-bandsEnergy()-1         6289   6304   frequencybodyaccelerationjerkbandsenergy()1,24
    395   fBodyAccJerk-bandsEnergy()-25        6305   6320   frequencybodyaccelerationjerkbandsenergy()25,48
    396   fBodyAccJerk-bandsEnergy()-1         6321   6336   frequencybodyaccelerationjerkbandsenergy()1,8
    397   fBodyAccJerk-bandsEnergy()-9         6337   6352   frequencybodyaccelerationjerkbandsenergy()9,16
    398   fBodyAccJerk-bandsEnergy()-17        6353   6368   frequencybodyaccelerationjerkbandsenergy()17,24
    399   fBodyAccJerk-bandsEnergy()-25        6369   6384   frequencybodyaccelerationjerkbandsenergy()25,32
    400   fBodyAccJerk-bandsEnergy()-33        6385   6400   frequencybodyaccelerationjerkbandsenergy()33,40
    401   fBodyAccJerk-bandsEnergy()-41        6401   6416   frequencybodyaccelerationjerkbandsenergy()41,48
    402   fBodyAccJerk-bandsEnergy()-49        6417   6432   frequencybodyaccelerationjerkbandsenergy()49,56
    403   fBodyAccJerk-bandsEnergy()-57        6433   6448   frequencybodyaccelerationjerkbandsenergy()57,64
    404   fBodyAccJerk-bandsEnergy()-1         6449   6464   frequencybodyaccelerationjerkbandsenergy()1,16
    405   fBodyAccJerk-bandsEnergy()-17        6465   6480   frequencybodyaccelerationjerkbandsenergy()17,32
    406   fBodyAccJerk-bandsEnergy()-33        6481   6496   frequencybodyaccelerationjerkbandsenergy()33,48
    407   fBodyAccJerk-bandsEnergy()-49        6497   6512   frequencybodyaccelerationjerkbandsenergy()49,64
    408   fBodyAccJerk-bandsEnergy()-1         6513   6528   frequencybodyaccelerationjerkbandsenergy()1,24
    409   fBodyAccJerk-bandsEnergy()-25        6529   6544   frequencybodyaccelerationjerkbandsenergy()25,48
    410   fBodyAccJerk-bandsEnergy()-1         6545   6560   frequencybodyaccelerationjerkbandsenergy()1,8
    411   fBodyAccJerk-bandsEnergy()-9         6561   6576   frequencybodyaccelerationjerkbandsenergy()9,16
    412   fBodyAccJerk-bandsEnergy()-17        6577   6592   frequencybodyaccelerationjerkbandsenergy()17,24
    413   fBodyAccJerk-bandsEnergy()-25        6593   6608   frequencybodyaccelerationjerkbandsenergy()25,32
    414   fBodyAccJerk-bandsEnergy()-33        6609   6624   frequencybodyaccelerationjerkbandsenergy()33,40
    415   fBodyAccJerk-bandsEnergy()-41        6625   6640   frequencybodyaccelerationjerkbandsenergy()41,48
    416   fBodyAccJerk-bandsEnergy()-49        6641   6656   frequencybodyaccelerationjerkbandsenergy()49,56
    417   fBodyAccJerk-bandsEnergy()-57        6657   6672   frequencybodyaccelerationjerkbandsenergy()57,64
    418   fBodyAccJerk-bandsEnergy()-1         6673   6688   frequencybodyaccelerationjerkbandsenergy()1,16
    419   fBodyAccJerk-bandsEnergy()-17        6689   6704   frequencybodyaccelerationjerkbandsenergy()17,32
    420   fBodyAccJerk-bandsEnergy()-33        6705   6720   frequencybodyaccelerationjerkbandsenergy()33,48
    421   fBodyAccJerk-bandsEnergy()-49        6721   6736   frequencybodyaccelerationjerkbandsenergy()49,64
    422   fBodyAccJerk-bandsEnergy()-1         6737   6752   frequencybodyaccelerationjerkbandsenergy()1,24
    423   fBodyAccJerk-bandsEnergy()-25        6753   6768   frequencybodyaccelerationjerkbandsenergy()25,48
    424   fBodyGyro-mean()-X                   6769   6784   frequencybodygyroscopemean()x
    425   fBodyGyro-mean()-Y                   6785   6800   frequencybodygyroscopemean()y
    426   fBodyGyro-mean()-Z                   6801   6816   frequencybodygyroscopemean()z
    427   fBodyGyro-std()-X                    6817   6832   frequencybodygyroscopestd()x
    428   fBodyGyro-std()-Y                    6833   6848   frequencybodygyroscopestd()y
    429   fBodyGyro-std()-Z                    6849   6864   frequencybodygyroscopestd()z
    430   fBodyGyro-mad()-X                    6865   6880   frequencybodygyroscopemad()x
    431   fBodyGyro-mad()-Y                    6881   6896   frequencybodygyroscopemad()y
    432   fBodyGyro-mad()-Z                    6897   6912   frequencybodygyroscopemad()z
    433   fBodyGyro-max()-X                    6913   6928   frequencybodygyroscopemax()x
    434   fBodyGyro-max()-Y                    6929   6944   frequencybodygyroscopemax()y
    435   fBodyGyro-max()-Z                    6945   6960   frequencybodygyroscopemax()z
    436   fBodyGyro-min()-X                    6961   6976   frequencybodygyroscopemin()x
    437   fBodyGyro-min()-Y                    6977   6992   frequencybodygyroscopemin()y
    438   fBodyGyro-min()-Z                    6993   7008   frequencybodygyroscopemin()z
    439   fBodyGyro-sma()                      7009   7024   frequencybodygyroscopesma()
    440   fBodyGyro-energy()-X                 7025   7040   frequencybodygyroscopeenergy()x
    441   fBodyGyro-energy()-Y                 7041   7056   frequencybodygyroscopeenergy()y
    442   fBodyGyro-energy()-Z                 7057   7072   frequencybodygyroscopeenergy()z
    443   fBodyGyro-iqr()-X                    7073   7088   frequencybodygyroscopeiqr()x
    444   fBodyGyro-iqr()-Y                    7089   7104   frequencybodygyroscopeiqr()y
    445   fBodyGyro-iqr()-Z                    7105   7120   frequencybodygyroscopeiqr()z
    446   fBodyGyro-entropy()-X                7121   7136   frequencybodygyroscopeentropy()x
    447   fBodyGyro-entropy()-Y                7137   7152   frequencybodygyroscopeentropy()y
    448   fBodyGyro-entropy()-Z                7153   7168   frequencybodygyroscopeentropy()z
    449   fBodyGyro-maxInds-X                  7169   7184   frequencybodygyroscopemaxindsx
    450   fBodyGyro-maxInds-Y                  7185   7200   frequencybodygyroscopemaxindsy
    451   fBodyGyro-maxInds-Z                  7201   7216   frequencybodygyroscopemaxindsz
    452   fBodyGyro-meanFreq()-X               7217   7232   frequencybodygyroscopemeanfreq()x
    453   fBodyGyro-meanFreq()-Y               7233   7248   frequencybodygyroscopemeanfreq()y
    454   fBodyGyro-meanFreq()-Z               7249   7264   frequencybodygyroscopemeanfreq()z
    455   fBodyGyro-skewness()-X               7265   7280   frequencybodygyroscopeskewness()x
    456   fBodyGyro-kurtosis()-X               7281   7296   frequencybodygyroscopekurtosis()x
    457   fBodyGyro-skewness()-Y               7297   7312   frequencybodygyroscopeskewness()y
    458   fBodyGyro-kurtosis()-Y               7313   7328   frequencybodygyroscopekurtosis()y
    459   fBodyGyro-skewness()-Z               7329   7344   frequencybodygyroscopeskewness()z
    460   fBodyGyro-kurtosis()-Z               7345   7360   frequencybodygyroscopekurtosis()z
    461   fBodyGyro-bandsEnergy()-1            7361   7376   frequencybodygyroscopebandsenergy()1,8
    462   fBodyGyro-bandsEnergy()-9            7377   7392   frequencybodygyroscopebandsenergy()9,16
    463   fBodyGyro-bandsEnergy()-17           7393   7408   frequencybodygyroscopebandsenergy()17,24
    464   fBodyGyro-bandsEnergy()-25           7409   7424   frequencybodygyroscopebandsenergy()25,32
    465   fBodyGyro-bandsEnergy()-33           7425   7440   frequencybodygyroscopebandsenergy()33,40
    466   fBodyGyro-bandsEnergy()-41           7441   7456   frequencybodygyroscopebandsenergy()41,48
    467   fBodyGyro-bandsEnergy()-49           7457   7472   frequencybodygyroscopebandsenergy()49,56
    468   fBodyGyro-bandsEnergy()-57           7473   7488   frequencybodygyroscopebandsenergy()57,64
    469   fBodyGyro-bandsEnergy()-1            7489   7504   frequencybodygyroscopebandsenergy()1,16
    470   fBodyGyro-bandsEnergy()-17           7505   7520   frequencybodygyroscopebandsenergy()17,32
    471   fBodyGyro-bandsEnergy()-33           7521   7536   frequencybodygyroscopebandsenergy()33,48
    472   fBodyGyro-bandsEnergy()-49           7537   7552   frequencybodygyroscopebandsenergy()49,64
    473   fBodyGyro-bandsEnergy()-1            7553   7568   frequencybodygyroscopebandsenergy()1,24
    474   fBodyGyro-bandsEnergy()-25           7569   7584   frequencybodygyroscopebandsenergy()25,48
    475   fBodyGyro-bandsEnergy()-1            7585   7600   frequencybodygyroscopebandsenergy()1,8
    476   fBodyGyro-bandsEnergy()-9            7601   7616   frequencybodygyroscopebandsenergy()9,16
    477   fBodyGyro-bandsEnergy()-17           7617   7632   frequencybodygyroscopebandsenergy()17,24
    478   fBodyGyro-bandsEnergy()-25           7633   7648   frequencybodygyroscopebandsenergy()25,32
    479   fBodyGyro-bandsEnergy()-33           7649   7664   frequencybodygyroscopebandsenergy()33,40
    480   fBodyGyro-bandsEnergy()-41           7665   7680   frequencybodygyroscopebandsenergy()41,48
    481   fBodyGyro-bandsEnergy()-49           7681   7696   frequencybodygyroscopebandsenergy()49,56
    482   fBodyGyro-bandsEnergy()-57           7697   7712   frequencybodygyroscopebandsenergy()57,64
    483   fBodyGyro-bandsEnergy()-1            7713   7728   frequencybodygyroscopebandsenergy()1,16
    484   fBodyGyro-bandsEnergy()-17           7729   7744   frequencybodygyroscopebandsenergy()17,32
    485   fBodyGyro-bandsEnergy()-33           7745   7760   frequencybodygyroscopebandsenergy()33,48
    486   fBodyGyro-bandsEnergy()-49           7761   7776   frequencybodygyroscopebandsenergy()49,64
    487   fBodyGyro-bandsEnergy()-1            7777   7792   frequencybodygyroscopebandsenergy()1,24
    488   fBodyGyro-bandsEnergy()-25           7793   7808   frequencybodygyroscopebandsenergy()25,48
    489   fBodyGyro-bandsEnergy()-1            7809   7824   frequencybodygyroscopebandsenergy()1,8
    490   fBodyGyro-bandsEnergy()-9            7825   7840   frequencybodygyroscopebandsenergy()9,16
    491   fBodyGyro-bandsEnergy()-17           7841   7856   frequencybodygyroscopebandsenergy()17,24
    492   fBodyGyro-bandsEnergy()-25           7857   7872   frequencybodygyroscopebandsenergy()25,32
    493   fBodyGyro-bandsEnergy()-33           7873   7888   frequencybodygyroscopebandsenergy()33,40
    494   fBodyGyro-bandsEnergy()-41           7889   7904   frequencybodygyroscopebandsenergy()41,48
    495   fBodyGyro-bandsEnergy()-49           7905   7920   frequencybodygyroscopebandsenergy()49,56
    496   fBodyGyro-bandsEnergy()-57           7921   7936   frequencybodygyroscopebandsenergy()57,64
    497   fBodyGyro-bandsEnergy()-1            7937   7952   frequencybodygyroscopebandsenergy()1,16
    498   fBodyGyro-bandsEnergy()-17           7953   7968   frequencybodygyroscopebandsenergy()17,32
    499   fBodyGyro-bandsEnergy()-33           7969   7984   frequencybodygyroscopebandsenergy()33,48
    500   fBodyGyro-bandsEnergy()-49           7985   8000   frequencybodygyroscopebandsenergy()49,64
    501   fBodyGyro-bandsEnergy()-1            8001   8016   frequencybodygyroscopebandsenergy()1,24
    502   fBodyGyro-bandsEnergy()-25           8017   8032   frequencybodygyroscopebandsenergy()25,48
    503   fBodyAccMag-mean()                   8033   8048   frequencybodyaccelerationmagnitudemean()
    504   fBodyAccMag-std()                    8049   8064   frequencybodyaccelerationmagnitudestd()
    505   fBodyAccMag-mad()                    8065   8080   frequencybodyaccelerationmagnitudemad()
    506   fBodyAccMag-max()                    8081   8096   frequencybodyaccelerationmagnitudemax()
    507   fBodyAccMag-min()                    8097   8112   frequencybodyaccelerationmagnitudemin()
    508   fBodyAccMag-sma()                    8113   8128   frequencybodyaccelerationmagnitudesma()
    509   fBodyAccMag-energy()                 8129   8144   frequencybodyaccelerationmagnitudeenergy()
    510   fBodyAccMag-iqr()                    8145   8160   frequencybodyaccelerationmagnitudeiqr()
    511   fBodyAccMag-entropy()                8161   8176   frequencybodyaccelerationmagnitudeentropy()
    512   fBodyAccMag-maxInds                  8177   8192   frequencybodyaccelerationmagnitudemaxinds
    513   fBodyAccMag-meanFreq()               8193   8208   frequencybodyaccelerationmagnitudemeanfreq()
    514   fBodyAccMag-skewness()               8209   8224   frequencybodyaccelerationmagnitudeskewness()
    515   fBodyAccMag-kurtosis()               8225   8240   frequencybodyaccelerationmagnitudekurtosis()
    516   fBodyBodyAccJerkMag-mean()           8241   8256   frequencybodybodyaccelerationjerkmagnitudemean()
    517   fBodyBodyAccJerkMag-std()            8257   8272   frequencybodybodyaccelerationjerkmagnitudestd()
    518   fBodyBodyAccJerkMag-mad()            8273   8288   frequencybodybodyaccelerationjerkmagnitudemad()
    519   fBodyBodyAccJerkMag-max()            8289   8304   frequencybodybodyaccelerationjerkmagnitudemax()
    520   fBodyBodyAccJerkMag-min()            8305   8320   frequencybodybodyaccelerationjerkmagnitudemin()
    521   fBodyBodyAccJerkMag-sma()            8321   8336   frequencybodybodyaccelerationjerkmagnitudesma()
    522   fBodyBodyAccJerkMag-energy()         8337   8352   frequencybodybodyaccelerationjerkmagnitudeenergy()
    523   fBodyBodyAccJerkMag-iqr()            8353   8368   frequencybodybodyaccelerationjerkmagnitudeiqr()
    524   fBodyBodyAccJerkMag-entropy()        8369   8384   frequencybodybodyaccelerationjerkmagnitudeentropy()
    525   fBodyBodyAccJerkMag-maxInds          8385   8400   frequencybodybodyaccelerationjerkmagnitudemaxinds
    526   fBodyBodyAccJerkMag-meanFreq()       8401   8416   frequencybodybodyaccelerationjerkmagnitudemeanfreq()
    527   fBodyBodyAccJerkMag-skewness()       8417   8432   frequencybodybodyaccelerationjerkmagnitudeskewness()
    528   fBodyBodyAccJerkMag-kurtosis()       8433   8448   frequencybodybodyaccelerationjerkmagnitudekurtosis()
    529   fBodyBodyGyroMag-mean()              8449   8464   frequencybodybodygyroscopemagnitudemean()
    530   fBodyBodyGyroMag-std()               8465   8480   frequencybodybodygyroscopemagnitudestd()
    531   fBodyBodyGyroMag-mad()               8481   8496   frequencybodybodygyroscopemagnitudemad()
    532   fBodyBodyGyroMag-max()               8497   8512   frequencybodybodygyroscopemagnitudemax()
    533   fBodyBodyGyroMag-min()               8513   8528   frequencybodybodygyroscopemagnitudemin()
    534   fBodyBodyGyroMag-sma()               8529   8544   frequencybodybodygyroscopemagnitudesma()
    535   fBodyBodyGyroMag-energy()            8545   8560   frequencybodybodygyroscopemagnitudeenergy()
    536   fBodyBodyGyroMag-iqr()               8561   8576   frequencybodybodygyroscopemagnitudeiqr()
    537   fBodyBodyGyroMag-entropy()           8577   8592   frequencybodybodygyroscopemagnitudeentropy()
    538   fBodyBodyGyroMag-maxInds             8593   8608   frequencybodybodygyroscopemagnitudemaxinds
    539   fBodyBodyGyroMag-meanFreq()          8609   8624   frequencybodybodygyroscopemagnitudemeanfreq()
    540   fBodyBodyGyroMag-skewness()          8625   8640   frequencybodybodygyroscopemagnitudeskewness()
    541   fBodyBodyGyroMag-kurtosis()          8641   8656   frequencybodybodygyroscopemagnitudekurtosis()
    542   fBodyBodyGyroJerkMag-mean()          8657   8672   frequencybodybodygyroscopejerkmagnitudemean()
    543   fBodyBodyGyroJerkMag-std()           8673   8688   frequencybodybodygyroscopejerkmagnitudestd()
    544   fBodyBodyGyroJerkMag-mad()           8689   8704   frequencybodybodygyroscopejerkmagnitudemad()
    545   fBodyBodyGyroJerkMag-max()           8705   8720   frequencybodybodygyroscopejerkmagnitudemax()
    546   fBodyBodyGyroJerkMag-min()           8721   8736   frequencybodybodygyroscopejerkmagnitudemin()
    547   fBodyBodyGyroJerkMag-sma()           8737   8752   frequencybodybodygyroscopejerkmagnitudesma()
    548   fBodyBodyGyroJerkMag-energy()        8753   8768   frequencybodybodygyroscopejerkmagnitudeenergy()
    549   fBodyBodyGyroJerkMag-iqr()           8769   8784   frequencybodybodygyroscopejerkmagnitudeiqr()
    550   fBodyBodyGyroJerkMag-entropy()       8785   8800   frequencybodybodygyroscopejerkmagnitudeentropy()
    551   fBodyBodyGyroJerkMag-maxInds         8801   8816   frequencybodybodygyroscopejerkmagnitudemaxinds
    552   fBodyBodyGyroJerkMag-meanFreq()      8817   8832   frequencybodybodygyroscopejerkmagnitudemeanfreq()
    553   fBodyBodyGyroJerkMag-skewness()      8833   8848   frequencybodybodygyroscopejerkmagnitudeskewness()
    554   fBodyBodyGyroJerkMag-kurtosis()      8849   8864   frequencybodybodygyroscopejerkmagnitudekurtosis()
    555   angle(tBodyAccMean                   8865   8880   angle(tbodyaccelerationmean,gravity)
    556   angle(tBodyAccJerkMean)              8881   8896   angle(tbodyaccelerationjerkmean),gravitymean)
    557   angle(tBodyGyroMean                  8897   8912   angle(tbodygyroscopemean,gravitymean)
    558   angle(tBodyGyroJerkMean              8913   8928   angle(tbodygyroscopejerkmean,gravitymean)
    559   angle(X                              8929   8944   angle(x,gravitymean)
    560   angle(Y                              8945   8960   angle(y,gravitymean)
    561   angle(Z                              8961   8976   angle(z,gravitymean)
	562   sourcefile                           8977   8981  
	563   subject                              8982   8983  
	564   activities                           8984   9000   
