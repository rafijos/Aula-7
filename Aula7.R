> library(readxl)
> variacao_PIB <- read.table("c:/Econometria/Variacao.xls", header = T)
> var_PIB <- ts(variacao_PIB$variacao_PIB, start =1951, frequency = 1 )
> View(var_PIB)
> View(variacao_PIB)
> plot()var_pib)
Error: unexpected symbol in "plot()var_pib"
> plot(var_pib)
Error in plot(var_pib) : object 'var_pib' not found
> plot(var_PIB)
> plot(variacao_PIB)
> plot(var_PIB, main="Variacao do PIB Brasileiro", col="Blue", ylab="%PIB", xlab="Ano")
> plot(var_PIB, main="Variação do PIB Brasileiro", col="Blue", ylab="%PIB", xlab="Ano")
> plot(var_PIB, main="Variação do PIB brasileiro", col="Blue", ylab="%PIB", xlab="Ano")
> acf(var_PIB)
> pacf(var_PIB)
> AR1 <- arima(var_PIB, order = c(1,0,0))
> AR1

Call:
  arima(x = var_PIB, order = c(1, 0, 0))

Coefficients:
  ar1  intercept
0.4079     0.0472
s.e.  0.1155     0.0070

sigma^2 estimated as 0.001081:  log likelihood = 121.66,  aic = -237.33
> MA1 <- arima(var_PIB, order = c(0,0,1))
> MA1

Call:
  arima(x = var_PIB, order = c(0, 0, 1))

Coefficients:
  ma1  intercept
0.2497     0.0473
s.e.  0.0950     0.0055

sigma^2 estimated as 0.001172:  log likelihood = 119.26,  aic = -232.52
> AIC(AR1)
[1] -237.3294
> BIC(AR1)
[1] -230.9968
> AIC(MA1)
[1] -232.5212
> BIC(MA1)
[1] -226.1886
> ARMA11 <- arima(var_PIB, order = c(1,0,1))
> ARMA11

Call:
  arima(x = var_PIB, order = c(1, 0, 1))

Coefficients:
  ar1      ma1  intercept
0.8592  -0.5825     0.0476
s.e.  0.1341   0.2341     0.0111

sigma^2 estimated as 0.0009872:  log likelihood = 124.34,  aic = -240.68
> AIC(ARMA11)
[1] -240.6797
> BIC(ARMA11)
[1] -232.2362
> AR2 <- arima(var_PIB, order = c(2,0,0))
> AR2

Call:
  arima(x = var_PIB, order = c(2, 0, 0))

Coefficients:
  ar1     ar2  intercept
0.2663  0.3318     0.0477
s.e.  0.1198  0.1209     0.0095

sigma^2 estimated as 0.0009598:  log likelihood = 125.18,  aic = -242.36
> AIC(AR2)
[1] -242.3609
> BIC(AR2)
[1] -233.9174
> MA2 <- arima(var_PIB, order = c(0,0,2))
> MA2

Call:
  arima(x = var_PIB, order = c(0, 0, 2))

Coefficients:
  ma1     ma2  intercept
0.2392  0.3444     0.0477
s.e.  0.1302  0.1098     0.0064

sigma^2 estimated as 0.001014:  log likelihood = 123.58,  aic = -239.16
> AIC(MA2)
[1] -239.158
> BIC(MA2)
[1] -230.7145
> MA3 <- arima(var_PIB, order = c(0,0,3))
> MA3

Call:
  arima(x = var_PIB, order = c(0, 0, 3))

Coefficients:
  ma1     ma2     ma3  intercept
0.2434  0.4021  0.2173     0.0475
s.e.  0.1213  0.1054  0.1343     0.0073

sigma^2 estimated as 0.0009689:  log likelihood = 124.87,  aic = -239.74
> AIC(MA3)
[1] -239.7428
> BIC(MA3)
[1] -229.1884
> MA4 <- arima(var_PIB, order = c(0,0,4))
> MA4

Call:
  arima(x = var_PIB, order = c(0, 0, 4))

Coefficients:
  ma1     ma2     ma3     ma4  intercept
0.3061  0.4804  0.2605  0.1675     0.0476
s.e.  0.1335  0.1384  0.1416  0.1409     0.0085

sigma^2 estimated as 0.000944:  log likelihood = 125.6,  aic = -239.21
> AIC(MA4)
[1] -239.2085
> BIC(MA4)
[1] -226.5432
> MA5 <- arima(var_PIB, order = c(0,0,5))
> MA5

Call:
  arima(x = var_PIB, order = c(0, 0, 5))

Coefficients:
  ma1     ma2     ma3     ma4      ma5  intercept
0.3034  0.4580  0.2148  0.1714  -0.1236     0.0476
s.e.  0.1260  0.1285  0.1325  0.1247   0.1257     0.0078

sigma^2 estimated as 0.000928:  log likelihood = 126.06,  aic = -238.12
> AIC(MA5)
[1] -238.1168
> BIC(MA5)
[1] -223.3407
> MA6 <- arima(var_PIB, order = c(0,0,6))
> MA6

Call:
  arima(x = var_PIB, order = c(0, 0, 6))

Coefficients:
  ma1     ma2     ma3     ma4      ma5     ma6  intercept
0.2945  0.4447  0.2058  0.1985  -0.1393  0.0907     0.0475
s.e.  0.1287  0.1367  0.1391  0.1305   0.1325  0.1583     0.0080

sigma^2 estimated as 0.0009213:  log likelihood = 126.24,  aic = -236.47
> AIC(MA6)
[1] -236.4707
> BIC(MA6)
[1] -219.5837
> MA7 <- arima(var_PIB, order = c(0,0,7))
> MA7

Call:
  arima(x = var_PIB, order = c(0, 0, 7))

Coefficients:
  ma1    ma2     ma3     ma4      ma5     ma6     ma7  intercept
0.2843  0.427  0.1999  0.1816  -0.1094  0.0826  0.0518     0.0475
s.e.  0.1336  0.152  0.1445  0.1437   0.1644  0.1550  0.1864     0.0081

sigma^2 estimated as 0.0009214:  log likelihood = 126.27,  aic = -234.55
> AIC(MA7)
[1] -234.5466
> BIC(MA7)
[1] -215.5487
> MA8 <- arima(var_PIB, order = c(0,0,8))
> MA8

Call:
  arima(x = var_PIB, order = c(0, 0, 8))

Coefficients:
  ma1     ma2     ma3     ma4      ma5     ma6     ma7     ma8  intercept
0.2401  0.4383  0.1047  0.2433  -0.1758  0.2199  0.0047  0.1667     0.0477
s.e.  0.1352  0.1414  0.1556  0.1420   0.1449  0.1668  0.1583  0.1521     0.0084

sigma^2 estimated as 0.0008978:  log likelihood = 126.82,  aic = -233.64
> AIC(MA8)
[1] -233.6382
> BIC(MA8)
[1] -212.5295
> MA9 <- arima(var_PIB, order = c(0,0,9))
> MA9

Call:
  arima(x = var_PIB, order = c(0, 0, 9))

Coefficients:
  ma1     ma2     ma3     ma4      ma5     ma6     ma7     ma8     ma9
0.3048  0.3583  0.1934  0.1672  -0.1484  0.2152  0.0920  0.1528  0.2464
s.e.  0.1556  0.1625  0.1683  0.1545   0.1671  0.1536  0.1428  0.1639  0.2082
intercept
0.0473
s.e.     0.0093

sigma^2 estimated as 0.0008569:  log likelihood = 128.01,  aic = -234.02
> AIC(MA9)
[1] -234.0163
> BIC(MA9)
[1] -210.7967
> 
  > ARMA12 <- arima(var_PIB, order = c(1,0,2))
> ARMA12

Call:
  arima(x = var_PIB, order = c(1, 0, 2))

Coefficients:
  ar1      ma1     ma2  intercept
0.5127  -0.2376  0.3031     0.0476
s.e.  0.2116   0.2066  0.1529     0.0085

sigma^2 estimated as 0.0009578:  log likelihood = 125.22,  aic = -240.45
> AIC(ARMA12)
[1] -240.4454
> BIC(ARMA12)
[1] -229.891
> ARMA13 <- arima(var_PIB, order = c(1,0,3))
> ARMA13

Call:
  arima(x = var_PIB, order = c(1, 0, 3))

Coefficients:
  ar1      ma1     ma2     ma3  intercept
0.3685  -0.0938  0.3446  0.0877     0.0476
s.e.  0.4538   0.4460  0.1645  0.2635     0.0082

sigma^2 estimated as 0.0009562:  log likelihood = 125.26,  aic = -238.51
> AIC(ARMA13)
[1] -238.5126
> BIC(ARMA13)
[1] -225.8474
> ARMA14 <- arima(var_PIB, order = c(1,0,4))
> ARMA14

Call:
  arima(x = var_PIB, order = c(1, 0, 4))

Coefficients:
  ar1     ma1     ma2     ma3     ma4  intercept
-0.4922  0.7996  0.6329  0.4598  0.3282     0.0476
s.e.   0.3200  0.3214  0.1757  0.1882  0.1651     0.0083

sigma^2 estimated as 0.0009269:  log likelihood = 126.07,  aic = -238.15
> AIC(ARMA14)
[1] -238.1479
> BIC(ARMA14)
[1] -223.3718
> ARMA15 <- arima(var_PIB, order = c(1,0,5))
> ARMA15

Call:
  arima(x = var_PIB, order = c(1, 0, 5))

Coefficients:
  ar1     ma1     ma2     ma3     ma4      ma5  intercept
-0.3726  0.6719  0.5696  0.3742  0.2712  -0.0800     0.0475
s.e.   0.5292  0.5356  0.2305  0.2765  0.2123   0.1667     0.0078

sigma^2 estimated as 0.000923:  log likelihood = 126.18,  aic = -236.35
> AIC(ARMA15)
[1] -236.3529
> BIC(ARMA15)
[1] -219.466
> ARMA16 <- arima(var_PIB, order = c(1,0,6))
> ARMA16

Call:
  arima(x = var_PIB, order = c(1, 0, 6))

Coefficients:
  ar1      ma1     ma2      ma3     ma4      ma5     ma6  intercept
0.8957  -0.6618  0.1664  -0.1879  0.0427  -0.2552  0.2741     0.0482
s.e.  0.1019   0.1615  0.1598   0.1604  0.1435   0.1633  0.1351     0.0123

sigma^2 estimated as 0.0008755:  log likelihood = 127.69,  aic = -237.38
> AIC(ARMA16)
[1] -237.3793
> BIC(ARMA16)
[1] -218.3814
> ARMA17 <- arima(var_PIB, order = c(1,0,7))
> ARMA17

Call:
  arima(x = var_PIB, order = c(1, 0, 7))

Coefficients:
  ar1      ma1     ma2      ma3     ma4      ma5     ma6     ma7  intercept
0.8856  -0.6516  0.1719  -0.1856  0.0289  -0.2267  0.2162  0.0581     0.0483
s.e.  0.1156   0.1694  0.1581   0.1614  0.1554   0.1828  0.2009  0.1568     0.0123

sigma^2 estimated as 0.000874:  log likelihood = 127.76,  aic = -235.51
> AIC(ARMA17)
[1] -235.5106
> BIC(ARMA17)
[1] -214.4018
> ARMA18 <- arima(var_PIB, order = c(1,0,8))
> ARMA18

Call:
  arima(x = var_PIB, order = c(1, 0, 8))

Coefficients:
  ar1      ma1     ma2      ma3     ma4      ma5     ma6      ma7     ma8
0.8460  -0.6033  0.2064  -0.2117  0.0838  -0.3305  0.3288  -0.0869  0.1453
s.e.  0.1869   0.2247  0.1603   0.1550  0.1650   0.2266  0.2527   0.2404  0.1850
intercept
0.0484
s.e.     0.0119

sigma^2 estimated as 0.0008614:  log likelihood = 128.04,  aic = -234.08
> AIC(ARMA18)
[1] -234.0767
> BIC(ARMA18)
[1] -210.8571
> ARMA19 <- arima(var_PIB, order = c(1,0,9))
> ARMA19

Call:
  arima(x = var_PIB, order = c(1, 0, 9))

Coefficients:
  ar1     ma1     ma2     ma3     ma4     ma5     ma6     ma7     ma8
-0.6250  0.9638  0.5557  0.4430  0.2646  0.0118  0.1061  0.2139  0.1764
s.e.   0.2264  0.2384  0.2001  0.2035  0.2016  0.1862  0.1692  0.1664  0.1732
ma9  intercept
0.3274     0.0474
s.e.  0.1486     0.0088

sigma^2 estimated as 0.0008108:  log likelihood = 129.3,  aic = -234.6
> AIC(ARMA19)
[1] -234.6009
> BIC(ARMA19)
[1] -209.2704
> 
  > ARMA21 <- arima(var_PIB, order = c(2,0,1))
> ARMA21

Call:
  arima(x = var_PIB, order = c(2, 0, 1))

Coefficients:
  ar1     ar2     ma1  intercept
0.1656  0.3735  0.1125     0.0477
s.e.  0.3774  0.1825  0.4068     0.0093

sigma^2 estimated as 0.0009585:  log likelihood = 125.22,  aic = -240.44
> AIC(ARMA21)
[1] -240.4378
> BIC(ARMA21)
[1] -229.8835
> ARMA22 <- arima(var_PIB, order = c(2,0,2))
> ARMA22

Call:
  arima(x = var_PIB, order = c(2, 0, 2))

Coefficients:
  ar1     ar2     ma1      ma2  intercept
0.1107  0.4396  0.1668  -0.0594     0.0477
s.e.  0.4396  0.4241  0.4601   0.3839     0.0094

sigma^2 estimated as 0.0009581:  log likelihood = 125.23,  aic = -238.46
> AIC(ARMA22)
[1] -238.4566
> BIC(ARMA22)
[1] -225.7913
> ARMA23 <- arima(var_PIB, order = c(2,0,3))
> ARMA23

Call:
  arima(x = var_PIB, order = c(2, 0, 3))

Coefficients:
  ar1      ar2      ma1     ma2      ma3  intercept
1.1419  -0.2049  -0.8930  0.3305  -0.2254     0.0481
s.e.  0.4340   0.3857   0.4266  0.3412   0.1338     0.0119

sigma^2 estimated as 0.0009389:  log likelihood = 125.81,  aic = -237.62
> AIC(ARMA23)
[1] -237.6172
> BIC(ARMA23)
[1] -222.8411
> ARMA24 <- arima(var_PIB, order = c(2,0,4))
> ARMA24

Call:
  arima(x = var_PIB, order = c(2, 0, 4))

Coefficients:
  ar1     ar2     ma1      ma2      ma3      ma4  intercept
0.0116  0.8302  0.2493  -0.4671  -0.0074  -0.2292      0.048
s.e.  0.1528  0.1355  0.2047   0.1895   0.1462   0.1272      0.012

sigma^2 estimated as 0.000924:  log likelihood = 126.13,  aic = -236.27
> AIC(ARMA24)
[1] -236.2659
> BIC(ARMA24)
[1] -219.3789
> ARMA25 <- arima(var_PIB, order = c(2,0,5))
> ARMA25

Call:
  arima(x = var_PIB, order = c(2, 0, 5))

Coefficients:
  ar1      ar2     ma1     ma2     ma3     ma4     ma5  intercept
-1.6685  -0.8667  2.0440  1.9062  1.2707  0.9505  0.3545     0.0475
s.e.   0.1438   0.1127  0.2356  0.3682  0.3396  0.3183  0.1742     0.0078

sigma^2 estimated as 0.0008362:  log likelihood = 127.64,  aic = -237.28
> AIC(ARMA25)
[1] -237.2775
> BIC(ARMA25)
[1] -218.2796
> ARMA26 <- arima(var_PIB, order = c(2,0,6))
> ARMA26

Call:
  arima(x = var_PIB, order = c(2, 0, 6))

Coefficients:
  ar1      ar2      ma1     ma2      ma3     ma4      ma5     ma6  intercept
1.2338  -0.3200  -0.9961  0.4146  -0.2483  0.0896  -0.2295  0.2728     0.0484
s.e.  0.5172   0.4787   0.5161  0.4120   0.2123  0.1914   0.2002  0.1318     0.0121

sigma^2 estimated as 0.0008716:  log likelihood = 127.83,  aic = -235.66
> AIC(ARMA26)
[1] -235.6621
> BIC(ARMA26)
[1] -214.5534
> ARMA27 <- arima(var_PIB, order = c(2,0,7))
> ARMA27

Call:
  arima(x = var_PIB, order = c(2, 0, 7))

Coefficients:
  ar1     ar2     ma1      ma2      ma3      ma4      ma5     ma6     ma7
0.0378  0.7640  0.2308  -0.4369  -0.0134  -0.1526  -0.1885  0.0124  0.2773
s.e.  0.1710  0.1547  0.2129   0.1923   0.1513   0.1511   0.1587  0.1310  0.1223
intercept
0.0481
s.e.     0.0123

sigma^2 estimated as 0.000852:  log likelihood = 128.4,  aic = -234.8
> AIC(ARMA27)
[1] -234.7986
> BIC(ARMA27)
[1] -211.579
> ARMA28 <- arima(var_PIB, order = c(2,0,8))
> ARMA28

Call:
  arima(x = var_PIB, order = c(2, 0, 8))

Coefficients:
  ar1     ar2      ma1     ma2      ma3     ma4      ma5     ma6      ma7
0.8312  0.0136  -0.5889  0.1971  -0.2103  0.0820  -0.3308  0.3257  -0.0838
s.e.  0.6730  0.5935   0.6651  0.4342   0.1666  0.1814   0.2251  0.2856   0.2754
ma8  intercept
0.1459     0.0484
s.e.  0.1851     0.0119

sigma^2 estimated as 0.0008613:  log likelihood = 128.04,  aic = -232.08
> AIC(ARMA28)
[1] -232.077
> BIC(ARMA28)
[1] -206.7465
> ARMA29 <- arima(var_PIB, order = c(2,0,9))
> ARMA29

Call:
  arima(x = var_PIB, order = c(2, 0, 9))

Coefficients:
  ar1     ar2     ma1      ma2     ma3     ma4      ma5     ma6     ma7
-0.1758  0.4295  0.5144  -0.0254  0.1537  0.0278  -0.1859  0.0729  0.2165
s.e.   0.6956  0.6639  0.7022   0.8927  0.4490  0.3938   0.3532  0.1530  0.1385
ma8     ma9  intercept
0.0693  0.2966     0.0475
s.e.  0.2548  0.1642     0.0100

sigma^2 estimated as 0.0008094:  log likelihood = 129.47,  aic = -232.93
> AIC(ARMA29)
[1] -232.9323
> BIC(ARMA29)
[1] -205.491
> save.image("C:/Econometria/AIC-BIC.RData")
> write.csv<-list(AR1, AR2, MA1, MA2, MA3, MA4, MA5, MA6, MA7, MA8, MA9, 
                  +           ARMA11,ARMA12, ARMA13, ARMA14,ARMA15, ARMA16,ARMA17,ARMA18,ARMA19,
                  +           ARMA21,ARMA22,ARMA23,ARMA24,ARMA25,ARMA26,ARMA27,ARMA28,ARMA29)
> write.csv
[[1]]

Call:
  arima(x = var_PIB, order = c(1, 0, 0))

Coefficients:
  ar1  intercept
0.4079     0.0472
s.e.  0.1155     0.0070

sigma^2 estimated as 0.001081:  log likelihood = 121.66,  aic = -237.33

[[2]]

Call:
  arima(x = var_PIB, order = c(2, 0, 0))

Coefficients:
  ar1     ar2  intercept
0.2663  0.3318     0.0477
s.e.  0.1198  0.1209     0.0095

sigma^2 estimated as 0.0009598:  log likelihood = 125.18,  aic = -242.36

[[3]]

Call:
  arima(x = var_PIB, order = c(0, 0, 1))

Coefficients:
  ma1  intercept
0.2497     0.0473
s.e.  0.0950     0.0055

sigma^2 estimated as 0.001172:  log likelihood = 119.26,  aic = -232.52

[[4]]

Call:
  arima(x = var_PIB, order = c(0, 0, 2))

Coefficients:
  ma1     ma2  intercept
0.2392  0.3444     0.0477
s.e.  0.1302  0.1098     0.0064

sigma^2 estimated as 0.001014:  log likelihood = 123.58,  aic = -239.16

[[5]]

Call:
  arima(x = var_PIB, order = c(0, 0, 3))

Coefficients:
  ma1     ma2     ma3  intercept
0.2434  0.4021  0.2173     0.0475
s.e.  0.1213  0.1054  0.1343     0.0073

sigma^2 estimated as 0.0009689:  log likelihood = 124.87,  aic = -239.74

[[6]]

Call:
  arima(x = var_PIB, order = c(0, 0, 4))

Coefficients:
  ma1     ma2     ma3     ma4  intercept
0.3061  0.4804  0.2605  0.1675     0.0476
s.e.  0.1335  0.1384  0.1416  0.1409     0.0085

sigma^2 estimated as 0.000944:  log likelihood = 125.6,  aic = -239.21

[[7]]

Call:
  arima(x = var_PIB, order = c(0, 0, 5))

Coefficients:
  ma1     ma2     ma3     ma4      ma5  intercept
0.3034  0.4580  0.2148  0.1714  -0.1236     0.0476
s.e.  0.1260  0.1285  0.1325  0.1247   0.1257     0.0078

sigma^2 estimated as 0.000928:  log likelihood = 126.06,  aic = -238.12

[[8]]

Call:
  arima(x = var_PIB, order = c(0, 0, 6))

Coefficients:
  ma1     ma2     ma3     ma4      ma5     ma6  intercept
0.2945  0.4447  0.2058  0.1985  -0.1393  0.0907     0.0475
s.e.  0.1287  0.1367  0.1391  0.1305   0.1325  0.1583     0.0080

sigma^2 estimated as 0.0009213:  log likelihood = 126.24,  aic = -236.47

[[9]]

Call:
  arima(x = var_PIB, order = c(0, 0, 7))

Coefficients:
  ma1    ma2     ma3     ma4      ma5     ma6     ma7  intercept
0.2843  0.427  0.1999  0.1816  -0.1094  0.0826  0.0518     0.0475
s.e.  0.1336  0.152  0.1445  0.1437   0.1644  0.1550  0.1864     0.0081

sigma^2 estimated as 0.0009214:  log likelihood = 126.27,  aic = -234.55

[[10]]

Call:
  arima(x = var_PIB, order = c(0, 0, 8))

Coefficients:
  ma1     ma2     ma3     ma4      ma5     ma6     ma7     ma8  intercept
0.2401  0.4383  0.1047  0.2433  -0.1758  0.2199  0.0047  0.1667     0.0477
s.e.  0.1352  0.1414  0.1556  0.1420   0.1449  0.1668  0.1583  0.1521     0.0084

sigma^2 estimated as 0.0008978:  log likelihood = 126.82,  aic = -233.64

[[11]]

Call:
  arima(x = var_PIB, order = c(0, 0, 9))

Coefficients:
  ma1     ma2     ma3     ma4      ma5     ma6     ma7     ma8     ma9
0.3048  0.3583  0.1934  0.1672  -0.1484  0.2152  0.0920  0.1528  0.2464
s.e.  0.1556  0.1625  0.1683  0.1545   0.1671  0.1536  0.1428  0.1639  0.2082
intercept
0.0473
s.e.     0.0093

sigma^2 estimated as 0.0008569:  log likelihood = 128.01,  aic = -234.02

[[12]]

Call:
  arima(x = var_PIB, order = c(1, 0, 1))

Coefficients:
  ar1      ma1  intercept
0.8592  -0.5825     0.0476
s.e.  0.1341   0.2341     0.0111

sigma^2 estimated as 0.0009872:  log likelihood = 124.34,  aic = -240.68

[[13]]

Call:
  arima(x = var_PIB, order = c(1, 0, 2))

Coefficients:
  ar1      ma1     ma2  intercept
0.5127  -0.2376  0.3031     0.0476
s.e.  0.2116   0.2066  0.1529     0.0085

sigma^2 estimated as 0.0009578:  log likelihood = 125.22,  aic = -240.45

[[14]]

Call:
  arima(x = var_PIB, order = c(1, 0, 3))

Coefficients:
  ar1      ma1     ma2     ma3  intercept
0.3685  -0.0938  0.3446  0.0877     0.0476
s.e.  0.4538   0.4460  0.1645  0.2635     0.0082

sigma^2 estimated as 0.0009562:  log likelihood = 125.26,  aic = -238.51

[[15]]

Call:
  arima(x = var_PIB, order = c(1, 0, 4))

Coefficients:
  ar1     ma1     ma2     ma3     ma4  intercept
-0.4922  0.7996  0.6329  0.4598  0.3282     0.0476
s.e.   0.3200  0.3214  0.1757  0.1882  0.1651     0.0083

sigma^2 estimated as 0.0009269:  log likelihood = 126.07,  aic = -238.15

[[16]]

Call:
  arima(x = var_PIB, order = c(1, 0, 5))

Coefficients:
  ar1     ma1     ma2     ma3     ma4      ma5  intercept
-0.3726  0.6719  0.5696  0.3742  0.2712  -0.0800     0.0475
s.e.   0.5292  0.5356  0.2305  0.2765  0.2123   0.1667     0.0078

sigma^2 estimated as 0.000923:  log likelihood = 126.18,  aic = -236.35

[[17]]

Call:
  arima(x = var_PIB, order = c(1, 0, 6))

Coefficients:
  ar1      ma1     ma2      ma3     ma4      ma5     ma6  intercept
0.8957  -0.6618  0.1664  -0.1879  0.0427  -0.2552  0.2741     0.0482
s.e.  0.1019   0.1615  0.1598   0.1604  0.1435   0.1633  0.1351     0.0123

sigma^2 estimated as 0.0008755:  log likelihood = 127.69,  aic = -237.38

[[18]]

Call:
  arima(x = var_PIB, order = c(1, 0, 7))

Coefficients:
  ar1      ma1     ma2      ma3     ma4      ma5     ma6     ma7  intercept
0.8856  -0.6516  0.1719  -0.1856  0.0289  -0.2267  0.2162  0.0581     0.0483
s.e.  0.1156   0.1694  0.1581   0.1614  0.1554   0.1828  0.2009  0.1568     0.0123

sigma^2 estimated as 0.000874:  log likelihood = 127.76,  aic = -235.51

[[19]]

Call:
  arima(x = var_PIB, order = c(1, 0, 8))

Coefficients:
  ar1      ma1     ma2      ma3     ma4      ma5     ma6      ma7     ma8
0.8460  -0.6033  0.2064  -0.2117  0.0838  -0.3305  0.3288  -0.0869  0.1453
s.e.  0.1869   0.2247  0.1603   0.1550  0.1650   0.2266  0.2527   0.2404  0.1850
intercept
0.0484
s.e.     0.0119

sigma^2 estimated as 0.0008614:  log likelihood = 128.04,  aic = -234.08

[[20]]

Call:
  arima(x = var_PIB, order = c(1, 0, 9))

Coefficients:
  ar1     ma1     ma2     ma3     ma4     ma5     ma6     ma7     ma8
-0.6250  0.9638  0.5557  0.4430  0.2646  0.0118  0.1061  0.2139  0.1764
s.e.   0.2264  0.2384  0.2001  0.2035  0.2016  0.1862  0.1692  0.1664  0.1732
ma9  intercept
0.3274     0.0474
s.e.  0.1486     0.0088

sigma^2 estimated as 0.0008108:  log likelihood = 129.3,  aic = -234.6

[[21]]

Call:
  arima(x = var_PIB, order = c(2, 0, 1))

Coefficients:
  ar1     ar2     ma1  intercept
0.1656  0.3735  0.1125     0.0477
s.e.  0.3774  0.1825  0.4068     0.0093

sigma^2 estimated as 0.0009585:  log likelihood = 125.22,  aic = -240.44

[[22]]

Call:
  arima(x = var_PIB, order = c(2, 0, 2))

Coefficients:
  ar1     ar2     ma1      ma2  intercept
0.1107  0.4396  0.1668  -0.0594     0.0477
s.e.  0.4396  0.4241  0.4601   0.3839     0.0094

sigma^2 estimated as 0.0009581:  log likelihood = 125.23,  aic = -238.46

[[23]]

Call:
  arima(x = var_PIB, order = c(2, 0, 3))

Coefficients:
  ar1      ar2      ma1     ma2      ma3  intercept
1.1419  -0.2049  -0.8930  0.3305  -0.2254     0.0481
s.e.  0.4340   0.3857   0.4266  0.3412   0.1338     0.0119

sigma^2 estimated as 0.0009389:  log likelihood = 125.81,  aic = -237.62

[[24]]

Call:
  arima(x = var_PIB, order = c(2, 0, 4))

Coefficients:
  ar1     ar2     ma1      ma2      ma3      ma4  intercept
0.0116  0.8302  0.2493  -0.4671  -0.0074  -0.2292      0.048
s.e.  0.1528  0.1355  0.2047   0.1895   0.1462   0.1272      0.012

sigma^2 estimated as 0.000924:  log likelihood = 126.13,  aic = -236.27

[[25]]

Call:
  arima(x = var_PIB, order = c(2, 0, 5))

Coefficients:
  ar1      ar2     ma1     ma2     ma3     ma4     ma5  intercept
-1.6685  -0.8667  2.0440  1.9062  1.2707  0.9505  0.3545     0.0475
s.e.   0.1438   0.1127  0.2356  0.3682  0.3396  0.3183  0.1742     0.0078

sigma^2 estimated as 0.0008362:  log likelihood = 127.64,  aic = -237.28

[[26]]

Call:
  arima(x = var_PIB, order = c(2, 0, 6))

Coefficients:
  ar1      ar2      ma1     ma2      ma3     ma4      ma5     ma6  intercept
1.2338  -0.3200  -0.9961  0.4146  -0.2483  0.0896  -0.2295  0.2728     0.0484
s.e.  0.5172   0.4787   0.5161  0.4120   0.2123  0.1914   0.2002  0.1318     0.0121

sigma^2 estimated as 0.0008716:  log likelihood = 127.83,  aic = -235.66

[[27]]

Call:
  arima(x = var_PIB, order = c(2, 0, 7))

Coefficients:
  ar1     ar2     ma1      ma2      ma3      ma4      ma5     ma6     ma7
0.0378  0.7640  0.2308  -0.4369  -0.0134  -0.1526  -0.1885  0.0124  0.2773
s.e.  0.1710  0.1547  0.2129   0.1923   0.1513   0.1511   0.1587  0.1310  0.1223
intercept
0.0481
s.e.     0.0123

sigma^2 estimated as 0.000852:  log likelihood = 128.4,  aic = -234.8

[[28]]

Call:
  arima(x = var_PIB, order = c(2, 0, 8))

Coefficients:
  ar1     ar2      ma1     ma2      ma3     ma4      ma5     ma6      ma7
0.8312  0.0136  -0.5889  0.1971  -0.2103  0.0820  -0.3308  0.3257  -0.0838
s.e.  0.6730  0.5935   0.6651  0.4342   0.1666  0.1814   0.2251  0.2856   0.2754
ma8  intercept
0.1459     0.0484
s.e.  0.1851     0.0119

sigma^2 estimated as 0.0008613:  log likelihood = 128.04,  aic = -232.08

[[29]]

Call:
  arima(x = var_PIB, order = c(2, 0, 9))

Coefficients:
  ar1     ar2     ma1      ma2     ma3     ma4      ma5     ma6     ma7
-0.1758  0.4295  0.5144  -0.0254  0.1537  0.0278  -0.1859  0.0729  0.2165
s.e.   0.6956  0.6639  0.7022   0.8927  0.4490  0.3938   0.3532  0.1530  0.1385
ma8     ma9  intercept
0.0693  0.2966     0.0475
s.e.  0.2548  0.1642     0.0100

sigma^2 estimated as 0.0008094:  log likelihood = 129.47,  aic = -232.93

> write.csv(list(AR1, AR2, MA1, MA2, MA3, MA4, MA5, MA6, MA7, MA8, MA9, 
                 +                ARMA11,ARMA12, ARMA13, ARMA14,ARMA15, ARMA16,ARMA17,ARMA18,ARMA19,
                 +                ARMA21,ARMA22,ARMA23,ARMA24,ARMA25,ARMA26,ARMA27,ARMA28,ARMA29), file=c:Econometria/csv)
Error in as.data.frame.default(x[[i]], optional = TRUE, stringsAsFactors = stringsAsFactors) : 
  cannot coerce class '"Arima"' to a data.frame
> write.csv(list(AR1, AR2, MA1, MA2, MA3, MA4, MA5, MA6, MA7, MA8, MA9, 
                 +                ARMA11,ARMA12, ARMA13, ARMA14,ARMA15, ARMA16,ARMA17,ARMA18,ARMA19,
                 +                ARMA21,ARMA22,ARMA23,ARMA24,ARMA25,ARMA26,ARMA27,ARMA28,ARMA29), file=c:Econometria/list(AR1, AR2, MA1, MA2, MA3, MA4, MA5, MA6, MA7, MA8, MA9, 
                                                                                                                           +                                                                                                         ARMA11,ARMA12, ARMA13, ARMA14,ARMA15, ARMA16,ARMA17,ARMA18,ARMA19,
                                                                                                                           +                                                                                                         ARMA21,ARMA22,ARMA23,ARMA24,ARMA25,ARMA26,ARMA27,ARMA28,ARMA29csv)
            + write.csv(AR11, file="c:/Econometria/AR11.csv")
            Error: unexpected symbol in:
              "                                                                                                        ARMA21,ARMA22,ARMA23,ARMA24,ARMA25,ARMA26,ARMA27,ARMA28,ARMA29csv)
            write.csv"
            > write.csv(ar11, file="c:/Econometria/ar11.csv")
            Error in is.data.frame(x) : object 'ar11' not found
            > write.csv(ar1, file="c:/Econometria/ar1.csv")
            Error in is.data.frame(x) : object 'ar1' not found
            > write.csv(AR1, file="c:/Econometria/AR1.csv")
            Error in as.data.frame.default(x[[i]], optional = TRUE, stringsAsFactors = stringsAsFactors) : 
              cannot coerce class '"Arima"' to a data.frame
            > BIC(ARMA29)
            [1] -205.491
            > Modelo <- c("AR1", "AR2", "MA1", "MA2", "MA3", "MA4", "MA5", "MA6", "MA7", "MA8", "MA9", "ARMA11","ARMA12", "ARMA13", "ARMA14","ARMA15", "ARMA16","ARMA17","ARMA18","ARMA19","ARMA21","ARMA22","ARMA23","ARMA24","ARMA25","ARMA26","ARMA27","ARMA28","ARMA29")
            > Resultados <- data.frame(Modelo, AIC, BIC)
            Error in as.data.frame.default(x[[i]], optional = TRUE) : 
              cannot coerce class '"function"' to a data.frame
            > AIC <- sapply(estimacoes, AIC)
            Error in lapply(X = X, FUN = FUN, ...) : object 'estimacoes' not found
            > estimacoes <- list(AR1, AR2, MA1, MA2, MA3, MA4, MA5, MA6, MA7, MA8, MA9, 
                                 +                    ARMA11,ARMA12, ARMA13, ARMA14,ARMA15, ARMA16,ARMA17,ARMA18,ARMA19,
                                 +                    ARMA21,ARMA22,ARMA23,ARMA24,ARMA25,ARMA26,ARMA27,ARMA28,ARMA29)
            > sapply(estimacoes, AIC)
            [1] -237.3294 -242.3609 -232.5212 -239.1580 -239.7428 -239.2085 -238.1168 -236.4707
            [9] -234.5466 -233.6382 -234.0163 -240.6797 -240.4454 -238.5126 -238.1479 -236.3529
            [17] -237.3793 -235.5106 -234.0767 -234.6009 -240.4378 -238.4566 -237.6172 -236.2659
            [25] -237.2775 -235.6621 -234.7986 -232.0770 -232.9323
            > sapply(estimacoes, BIC)
            [1] -230.9968 -233.9174 -226.1886 -230.7145 -229.1884 -226.5432 -223.3407 -219.5837
            [9] -215.5487 -212.5295 -210.7967 -232.2362 -229.8910 -225.8474 -223.3718 -219.4660
            [17] -218.3814 -214.4018 -210.8571 -209.2704 -229.8835 -225.7913 -222.8411 -219.3789
            [25] -218.2796 -214.5534 -211.5790 -206.7465 -205.4910
            > AIC <- sapply(estimacoes, AIC)
            > BIC <- sapply(estimacoes, BIC)
            > Modelo <- c("AR1", "AR2", "MA1", "MA2", "MA3", "MA4", "MA5", "MA6", "MA7", "MA8", "MA9", "ARMA11","ARMA12", "ARMA13", "ARMA14","ARMA15", "ARMA16","ARMA17","ARMA18","ARMA19","ARMA21","ARMA22","ARMA23","ARMA24","ARMA25","ARMA26","ARMA27","ARMA28","ARMA29")
            > Resultados <- data.frame(Modelo, AIC, BIC)
            > View(Resultados)
            > write.csv(AIC, file="c:/Econometria/AIC.csv")
            > write.csv(BIC, file="c:/Econometria/BIC.csv")
            > write.csv(Modelos, file="c:/Econometria/BIC.csv")