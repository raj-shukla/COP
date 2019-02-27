vehicles = [50,100,150,200,250,300,350,400,450,500]
stations = [5,10,15,20,25,30,35,40,45,50]

chargeTimeSetCardinalityVehiclesRandomDistribution = [20.478268048735988,23.44667112180537,27.92484927975982,31.329433212955585,36.66133318832747,40.625529130928896,44.77311748643313,47.94401465704446,53.69560289866352,57.72863899087343]
chargeTimeMinDistanceVehiclesRandomDistribution = [31.2886853249878,45.307580293350505,70.27940037005025,112.2251145355034,166.2317664334433,265.911072857167,422.04207275835086,563.4705886653895,1102.7556838746737,1548.210019044098]
requestNotMetVehiclesRandomDistribution = [21.31,42.18,65.91,88.06,104.8,130.19,150.09,173.39,195.67,214.09]

chargeTimeSetCardinalityStationsRandomDistribution = [55.08053150171241,44.83259971861359,36.632937712738716,31.97036253878751,28.90182189881072,25.906495844892863,24.059488960390137,22.96281404169825,21.308766547074466,20.14943507838488]
chargeTimeMinDistanceStationsRandomDistribution = [268.3709597188085,191.05967077744475,119.56534581304733,111.16599332822976,111.88999388050789,82.41030315354003,78.76947674515048,71.10336946956019,69.38785705798539,61.716287279472866]
requestNotMetStationsRandomDistribution = [145.51,116.25,97.72,86.15,75.13,67.72,63.61,59.44,54.24,50.81]

chargeTimeSetCardinalityVehiclesUniformDistribution = [20.77550661632364,25.42485324785094,30.64180257499668,35.46693280773729,40.30503990867655,45.737190512126446,52.45394559390614,57.53518958015721,62.38199909059439,67.9457739806666]
chargeTimeMinDistanceVehiclesUniformDistribution = [31.26022984252816,46.26041531535453,76.53062753722102,130.4423060803744,216.88070995318495,336.14423677078497,560.9361004046782,1046.075616775166,1152.9009422670003,2006.3044878093865]
requestNotMetVehiclesUniformDistribution = [21.38,42.71,65.01,85.96,107.49,131.11,149.66,171.27,193.02,212.72]

chargeTimeSetCardinalityStationsUniformDistribution = [59.91894723350045,46.35698415270027,40.73341908549235,36.42156046785055,31.117171355935444,29.296419365379126,27.72329785959731,25.223347052813164,24.28605042445624,22.39196066355876]
chargeTimeMinDistanceStationsUniformDistribution = [289.1818213119226,228.9848427352882,172.76667688435853,128.53335889639598,103.60663061253234,94.0654852226544,84.86340214343802,75.17501815550851,72.90621986970017,63.93602787106247]
requestNotMetStationsUniformDistribution = [144.59,120.46,98.55,83.14,76.88,67.74,62.35,58.13,53.68,50.87]

timeVehiclesConfig1 = [0.08631455898284912,0.2584784507751465,0.49585144519805907,0.8085688591003418,1.463171362876892,1.8617226600646972,3.0404648780822754,4.044885110855103,4.208924913406372,5.811145687103272]
timeStationsConfig1 = [0.14855666160583497,0.5523448944091797,1.0176671266555786,1.7363075017929077,3.169972372055054,5.654733967781067,7.054101848602295,7.8190267324447635,9.079587650299072,15.968835639953614]

timeVehiclesConfig2 = [0.10205378532409667,0.24036877155303954,0.5267526388168335,1.1147529840469361,1.6339706182479858,2.9222047328948975,3.660823607444763,6.28851797580719,8.400266671180725,9.980642414093017]
timeStationsConfig2 = [0.2062058925628662,0.42765982151031495,1.1341724395751953,2.4410072565078735,4.227261686325074,6.850132894515991,8.480606842041016,9.533472752571106,17.590594506263734,17.54709961414337]

figure;
plot( vehicles, chargeTimeMinDistanceVehiclesRandomDistribution, 'mo-',  vehicles, chargeTimeSetCardinalityVehiclesRandomDistribution,  'r^-')
legend('Minimum distance', 'Proposed set-cardinality ')
xlabel('Number of charging requests')
ylabel('Effective charging time (min)')
%axis([0 20  0 5])


figure;
plot(stations, chargeTimeMinDistanceStationsRandomDistribution, 'mo-', stations, chargeTimeSetCardinalityStationsRandomDistribution,  'r^-')
legend('Minimum distance', 'Proposed set-cardinality ')
xlabel('Number of charging stations')
ylabel('Effective charging time (min)')
%axis([0 20  0 5])


figure;
plot(vehicles, requestNotMetVehiclesUniformDistribution, 'mo-' , vehicles, requestNotMetVehiclesRandomDistribution,  'r^-')
legend('Uniform', 'Random')
xlabel('Number of vehicles')
ylabel('Number of requests not satisfied')
%axis([0 20  0 5])

figure;
plot(stations, requestNotMetStationsUniformDistribution, 'mo-',  stations, requestNotMetStationsRandomDistribution,  'r^-')
legend('Uniform', 'Random')
xlabel('Number of charging stations')
ylabel('Number of requests not satisfied')
%axis([0 20  0 5])
figure
plot(vehicles, chargeTimeMinDistanceVehiclesUniformDistribution, 'mo-',  vehicles, chargeTimeSetCardinalityVehiclesUniformDistribution,  'r^-')
legend('Minimum distance', 'Proposed set-cardinality ')
xlabel('Number of vehicles')
ylabel('Effective charging time (min)')
%axis([0 20  0 5])

figure;
plot(stations, chargeTimeMinDistanceStationsUniformDistribution, 'mo-', stations, chargeTimeSetCardinalityStationsUniformDistribution,  'r^-' )
legend('Minimum distance', 'Proposed set-cardinality ')
xlabel('Number of charging stations')
ylabel('Effective charging time (min)')
%axis([0 20  0 5])



figure;
plot(vehicles, chargeTimeSetCardinalityVehiclesUniformDistribution, 'mo-', vehicles, chargeTimeSetCardinalityVehiclesRandomDistribution,  'r^-' )
legend('Uniform', 'Random ')
xlabel('Number of vehicles')
ylabel('Effective charging time (min)')
%axis([0 20  0 5])

figure;
plot(stations, chargeTimeSetCardinalityStationsUniformDistribution, 'mo-',  stations, chargeTimeSetCardinalityStationsRandomDistribution,  'r^-')
legend('Uniform', 'Random ')
xlabel('Number of charging stations')
ylabel('Effective charging time (min)')
%axis([0 20  0 5])

figure;
subplot(2, 1, 1);
plot( vehicles, chargeTimeMinDistanceVehiclesRandomDistribution, 'mo-',  vehicles, chargeTimeSetCardinalityVehiclesRandomDistribution,  'r^-')
legend('Minimum distance', 'Proposed set-cardinality ')
xlabel('Number of vehicles')
ylabel('Effective charging time (min)')
%axis([0 20  0 5])



subplot(2, 1, 2);
plot(stations, chargeTimeMinDistanceStationsRandomDistribution, 'mo-', stations, chargeTimeSetCardinalityStationsRandomDistribution,  'r^-')
legend('Minimum distance', 'Proposed set-cardinality ')
xlabel('Number of charging stations')
ylabel('Effective charging time (min)')
%axis([0 20  0 5])



figure;
subplot(2, 1, 1);
plot(vehicles, timeVehiclesConfig2, 'mo-',  vehicles, timeVehiclesConfig1,  'r^-')
legend('4 cores, 2.4 GHz', '8 cores, 3.6 GHz')
xlabel('Number of vehicles')
ylabel('Execution time (s)')


subplot(2, 1, 2);
plot(stations, timeStationsConfig2, 'mo-',  stations, timeStationsConfig1,  'r^-')
legend('4 cores, 2.4 GHz', '8 cores, 3.6 GHz')
xlabel('Number of charging stations ')
ylabel('Execution time (s)')










