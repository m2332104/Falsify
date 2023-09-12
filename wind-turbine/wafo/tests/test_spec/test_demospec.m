function test_suite=test_demospec()
  initTestSuite;
end
function test_demospec_()
   S = demospec('freq'); 
  assert(S.S(100:105), [2.18098263255750, 2.38730066654042,... 
                           2.59856918262022, 2.81441896250507,... 
                           3.03482079647815, 3.26016190326422]', 1e-9) 
  assert(S.w(100:105), [ 0.440859375000000, 0.445312500000000,... 
                         0.449765625000000, 0.454218750000000,... 
                         0.458671875000000, 0.463125000000000]', 1e-9) 
  plotspec(S)
end
