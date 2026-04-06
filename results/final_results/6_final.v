module uart_top (clk,
    reset_n,
    rx,
    rx_done,
    tx,
    tx_busy,
    tx_start,
    rx_data,
    tx_data);
 input clk;
 input reset_n;
 input rx;
 output rx_done;
 output tx;
 output tx_busy;
 input tx_start;
 output [7:0] rx_data;
 input [7:0] tx_data;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _086_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire \baud_gen.baud_tick ;
 wire \baud_gen.counter[0] ;
 wire \baud_gen.counter[1] ;
 wire \baud_gen.counter[2] ;
 wire \baud_gen.counter[3] ;
 wire \baud_gen.counter[4] ;
 wire \baud_gen.counter[5] ;
 wire \baud_gen.counter[6] ;
 wire \baud_gen.counter[7] ;
 wire \baud_gen.counter[8] ;
 wire net1;
 wire net2;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire \rx_module.bit_count[0] ;
 wire \rx_module.bit_count[1] ;
 wire \rx_module.bit_count[2] ;
 wire \rx_module.data_reg[0] ;
 wire \rx_module.data_reg[1] ;
 wire \rx_module.data_reg[2] ;
 wire \rx_module.data_reg[3] ;
 wire \rx_module.data_reg[4] ;
 wire \rx_module.data_reg[5] ;
 wire \rx_module.data_reg[6] ;
 wire \rx_module.data_reg[7] ;
 wire \rx_module.rx_filtered ;
 wire \rx_module.rx_sync ;
 wire \rx_module.sample_stage ;
 wire \rx_module.state[0] ;
 wire \rx_module.state[1] ;
 wire \rx_module.state[2] ;
 wire \rx_module.state[3] ;
 wire \rx_module.tick_count[0] ;
 wire \rx_module.tick_count[1] ;
 wire \rx_module.tick_count[2] ;
 wire \rx_module.tick_count[3] ;
 wire net21;
 wire net22;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire \tx_module.bit_count[0] ;
 wire \tx_module.bit_count[1] ;
 wire \tx_module.bit_count[2] ;
 wire \tx_module.data_reg[0] ;
 wire \tx_module.data_reg[1] ;
 wire \tx_module.data_reg[2] ;
 wire \tx_module.data_reg[3] ;
 wire \tx_module.data_reg[4] ;
 wire \tx_module.data_reg[5] ;
 wire \tx_module.data_reg[6] ;
 wire \tx_module.data_reg[7] ;
 wire \tx_module.state[0] ;
 wire \tx_module.state[1] ;
 wire \tx_module.state[2] ;
 wire \tx_module.state[3] ;
 wire \tx_module.tick_count[0] ;
 wire \tx_module.tick_count[1] ;
 wire \tx_module.tick_count[2] ;
 wire \tx_module.tick_count[3] ;
 wire \tx_module.tx_sample_stage ;
 wire net11;
 wire net34;
 wire net36;
 wire net41;
 wire net38;
 wire net37;
 wire net39;
 wire net40;
 wire clknet_3_2__leaf_clk;
 wire clknet_3_1__leaf_clk;
 wire clknet_3_0__leaf_clk;
 wire clknet_0_clk;
 wire net35;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire clknet_3_3__leaf_clk;
 wire clknet_3_4__leaf_clk;
 wire clknet_3_5__leaf_clk;
 wire clknet_3_6__leaf_clk;
 wire clknet_3_7__leaf_clk;
 wire net46;

 sky130_fd_sc_hd__and3_1 _191_ (.A(\tx_module.tick_count[2] ),
    .B(\tx_module.tick_count[3] ),
    .C(_033_),
    .X(_078_));
 sky130_fd_sc_hd__nand2_1 _192_ (.A(net41),
    .B(_078_),
    .Y(_079_));
 sky130_fd_sc_hd__a32o_1 _193_ (.A1(\tx_module.tx_sample_stage ),
    .A2(net38),
    .A3(_021_),
    .B1(_079_),
    .B2(\tx_module.state[3] ),
    .X(_007_));
 sky130_fd_sc_hd__nor2b_1 _194_ (.A(net22),
    .B_N(net11),
    .Y(_080_));
 sky130_fd_sc_hd__a22o_1 _195_ (.A1(\tx_module.state[2] ),
    .A2(_079_),
    .B1(_080_),
    .B2(\tx_module.state[0] ),
    .X(_006_));
 sky130_fd_sc_hd__nand2_1 _196_ (.A(\tx_module.tx_sample_stage ),
    .B(_021_),
    .Y(_081_));
 sky130_fd_sc_hd__inv_1 _197_ (.A(_079_),
    .Y(_019_));
 sky130_fd_sc_hd__a22o_1 _198_ (.A1(net38),
    .A2(_081_),
    .B1(_019_),
    .B2(\tx_module.state[2] ),
    .X(_005_));
 sky130_fd_sc_hd__nand2b_1 _199_ (.A_N(net22),
    .B(net11),
    .Y(_082_));
 sky130_fd_sc_hd__a22o_1 _200_ (.A1(\tx_module.state[3] ),
    .A2(_019_),
    .B1(_082_),
    .B2(\tx_module.state[0] ),
    .X(_004_));
 sky130_fd_sc_hd__inv_1 _201_ (.A(\rx_module.tick_count[3] ),
    .Y(_083_));
 sky130_fd_sc_hd__nand3_2 _202_ (.A(\rx_module.tick_count[2] ),
    .B(_031_),
    .C(\baud_gen.baud_tick ),
    .Y(_084_));
 sky130_fd_sc_hd__o21ai_0 _204_ (.A1(_083_),
    .A2(_084_),
    .B1(\rx_module.state[3] ),
    .Y(_086_));
 sky130_fd_sc_hd__nand3_1 _207_ (.A(net39),
    .B(net40),
    .C(_024_),
    .Y(_089_));
 sky130_fd_sc_hd__nand2_1 _208_ (.A(_086_),
    .B(_089_),
    .Y(_003_));
 sky130_fd_sc_hd__inv_1 _209_ (.A(\rx_module.state[0] ),
    .Y(_090_));
 sky130_fd_sc_hd__o21ai_0 _210_ (.A1(\rx_module.tick_count[3] ),
    .A2(_084_),
    .B1(\rx_module.state[2] ),
    .Y(_091_));
 sky130_fd_sc_hd__o21ai_0 _211_ (.A1(\rx_module.rx_filtered ),
    .A2(_090_),
    .B1(_091_),
    .Y(_002_));
 sky130_fd_sc_hd__inv_1 _212_ (.A(\rx_module.rx_filtered ),
    .Y(_092_));
 sky130_fd_sc_hd__nor3b_1 _213_ (.A(_084_),
    .B(\rx_module.tick_count[3] ),
    .C_N(\rx_module.state[2] ),
    .Y(_093_));
 sky130_fd_sc_hd__nand2_1 _214_ (.A(net40),
    .B(_024_),
    .Y(_094_));
 sky130_fd_sc_hd__a22o_1 _215_ (.A1(_092_),
    .A2(_093_),
    .B1(_094_),
    .B2(net39),
    .X(_001_));
 sky130_fd_sc_hd__nand2_1 _216_ (.A(\rx_module.tick_count[3] ),
    .B(\rx_module.state[3] ),
    .Y(_095_));
 sky130_fd_sc_hd__o21ai_0 _217_ (.A1(\rx_module.state[0] ),
    .A2(_093_),
    .B1(\rx_module.rx_filtered ),
    .Y(_096_));
 sky130_fd_sc_hd__o21ai_0 _218_ (.A1(_084_),
    .A2(_095_),
    .B1(_096_),
    .Y(_000_));
 sky130_fd_sc_hd__nand4b_1 _219_ (.A_N(\baud_gen.counter[7] ),
    .B(\baud_gen.counter[6] ),
    .C(\baud_gen.counter[8] ),
    .D(_028_),
    .Y(_097_));
 sky130_fd_sc_hd__nand2b_1 _220_ (.A_N(\baud_gen.counter[3] ),
    .B(\baud_gen.counter[2] ),
    .Y(_098_));
 sky130_fd_sc_hd__nor4_2 _221_ (.A(\baud_gen.counter[5] ),
    .B(\baud_gen.counter[4] ),
    .C(_097_),
    .D(_098_),
    .Y(_008_));
 sky130_fd_sc_hd__nor2_1 _222_ (.A(_083_),
    .B(_084_),
    .Y(_018_));
 sky130_fd_sc_hd__nor2_1 _223_ (.A(\baud_gen.counter[0] ),
    .B(net34),
    .Y(_009_));
 sky130_fd_sc_hd__nor2b_1 _224_ (.A(net34),
    .B_N(_029_),
    .Y(_010_));
 sky130_fd_sc_hd__xnor2_1 _225_ (.A(\baud_gen.counter[2] ),
    .B(_030_),
    .Y(_099_));
 sky130_fd_sc_hd__nor2_1 _226_ (.A(net34),
    .B(_099_),
    .Y(_011_));
 sky130_fd_sc_hd__nand3_1 _227_ (.A(\baud_gen.counter[2] ),
    .B(\baud_gen.counter[0] ),
    .C(\baud_gen.counter[1] ),
    .Y(_100_));
 sky130_fd_sc_hd__xor2_1 _228_ (.A(\baud_gen.counter[3] ),
    .B(_100_),
    .X(_101_));
 sky130_fd_sc_hd__nor2_1 _229_ (.A(net34),
    .B(_101_),
    .Y(_012_));
 sky130_fd_sc_hd__nand3_1 _230_ (.A(\baud_gen.counter[3] ),
    .B(\baud_gen.counter[2] ),
    .C(_030_),
    .Y(_102_));
 sky130_fd_sc_hd__xnor2_1 _231_ (.A(\baud_gen.counter[4] ),
    .B(_102_),
    .Y(_013_));
 sky130_fd_sc_hd__inv_1 _232_ (.A(\baud_gen.counter[0] ),
    .Y(_026_));
 sky130_fd_sc_hd__inv_1 _233_ (.A(\baud_gen.counter[1] ),
    .Y(_027_));
 sky130_fd_sc_hd__nand3_1 _234_ (.A(\baud_gen.counter[3] ),
    .B(\baud_gen.counter[2] ),
    .C(\baud_gen.counter[4] ),
    .Y(_103_));
 sky130_fd_sc_hd__nor3_1 _235_ (.A(_026_),
    .B(_027_),
    .C(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__xor2_1 _236_ (.A(\baud_gen.counter[5] ),
    .B(_104_),
    .X(_014_));
 sky130_fd_sc_hd__nand2_1 _237_ (.A(\baud_gen.counter[5] ),
    .B(_030_),
    .Y(_105_));
 sky130_fd_sc_hd__o21ai_0 _238_ (.A1(_103_),
    .A2(_105_),
    .B1(\baud_gen.counter[6] ),
    .Y(_106_));
 sky130_fd_sc_hd__or3_1 _239_ (.A(\baud_gen.counter[6] ),
    .B(_103_),
    .C(_105_),
    .X(_107_));
 sky130_fd_sc_hd__a21oi_1 _240_ (.A1(_106_),
    .A2(_107_),
    .B1(_008_),
    .Y(_015_));
 sky130_fd_sc_hd__and3_1 _241_ (.A(\baud_gen.counter[5] ),
    .B(\baud_gen.counter[6] ),
    .C(_104_),
    .X(_108_));
 sky130_fd_sc_hd__xor2_1 _242_ (.A(\baud_gen.counter[7] ),
    .B(_108_),
    .X(_016_));
 sky130_fd_sc_hd__nand2_1 _243_ (.A(\baud_gen.counter[7] ),
    .B(\baud_gen.counter[6] ),
    .Y(_109_));
 sky130_fd_sc_hd__nor3_1 _244_ (.A(_103_),
    .B(_105_),
    .C(_109_),
    .Y(_110_));
 sky130_fd_sc_hd__xnor2_1 _245_ (.A(\baud_gen.counter[8] ),
    .B(_110_),
    .Y(_111_));
 sky130_fd_sc_hd__nor2_1 _246_ (.A(_008_),
    .B(_111_),
    .Y(_017_));
 sky130_fd_sc_hd__a211o_2 _247_ (.A1(net37),
    .A2(\tx_module.data_reg[0] ),
    .B1(\tx_module.state[0] ),
    .C1(\tx_module.state[3] ),
    .X(_075_));
 sky130_fd_sc_hd__nor2_1 _248_ (.A(_024_),
    .B(\rx_module.bit_count[0] ),
    .Y(_112_));
 sky130_fd_sc_hd__mux2_2 _249_ (.A0(\rx_module.bit_count[0] ),
    .A1(_112_),
    .S(net40),
    .X(_113_));
 sky130_fd_sc_hd__nor2_1 _250_ (.A(\rx_module.state[0] ),
    .B(net39),
    .Y(_114_));
 sky130_fd_sc_hd__a22o_1 _251_ (.A1(net39),
    .A2(_113_),
    .B1(_114_),
    .B2(\rx_module.bit_count[0] ),
    .X(_035_));
 sky130_fd_sc_hd__mux2_2 _252_ (.A0(\rx_module.bit_count[1] ),
    .A1(_023_),
    .S(net40),
    .X(_115_));
 sky130_fd_sc_hd__a22o_1 _253_ (.A1(\rx_module.bit_count[1] ),
    .A2(_114_),
    .B1(_115_),
    .B2(net39),
    .X(_036_));
 sky130_fd_sc_hd__mux2_2 _254_ (.A0(\rx_module.bit_count[2] ),
    .A1(_025_),
    .S(net40),
    .X(_116_));
 sky130_fd_sc_hd__a22o_1 _255_ (.A1(\rx_module.bit_count[2] ),
    .A2(_114_),
    .B1(_116_),
    .B2(net39),
    .X(_037_));
 sky130_fd_sc_hd__nand2_1 _256_ (.A(net39),
    .B(net40),
    .Y(_117_));
 sky130_fd_sc_hd__mux2_2 _257_ (.A0(\rx_module.data_reg[1] ),
    .A1(\rx_module.data_reg[0] ),
    .S(_117_),
    .X(_038_));
 sky130_fd_sc_hd__mux2_2 _258_ (.A0(\rx_module.data_reg[2] ),
    .A1(\rx_module.data_reg[1] ),
    .S(_117_),
    .X(_039_));
 sky130_fd_sc_hd__mux2_2 _259_ (.A0(\rx_module.data_reg[3] ),
    .A1(\rx_module.data_reg[2] ),
    .S(_117_),
    .X(_040_));
 sky130_fd_sc_hd__mux2_2 _260_ (.A0(\rx_module.data_reg[4] ),
    .A1(\rx_module.data_reg[3] ),
    .S(_117_),
    .X(_041_));
 sky130_fd_sc_hd__mux2_2 _261_ (.A0(\rx_module.data_reg[5] ),
    .A1(\rx_module.data_reg[4] ),
    .S(_117_),
    .X(_042_));
 sky130_fd_sc_hd__mux2_2 _262_ (.A0(\rx_module.data_reg[6] ),
    .A1(\rx_module.data_reg[5] ),
    .S(_117_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_2 _263_ (.A0(\rx_module.data_reg[7] ),
    .A1(\rx_module.data_reg[6] ),
    .S(_117_),
    .X(_044_));
 sky130_fd_sc_hd__nand2_1 _264_ (.A(\rx_module.data_reg[7] ),
    .B(_117_),
    .Y(_118_));
 sky130_fd_sc_hd__o21ai_0 _265_ (.A1(_092_),
    .A2(_117_),
    .B1(_118_),
    .Y(_045_));
 sky130_fd_sc_hd__nand3_1 _266_ (.A(\rx_module.tick_count[3] ),
    .B(\rx_module.rx_filtered ),
    .C(\rx_module.state[3] ),
    .Y(_119_));
 sky130_fd_sc_hd__nor2_2 _267_ (.A(_084_),
    .B(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__mux2_2 _268_ (.A0(net12),
    .A1(\rx_module.data_reg[0] ),
    .S(net35),
    .X(_046_));
 sky130_fd_sc_hd__mux2_2 _269_ (.A0(net13),
    .A1(\rx_module.data_reg[1] ),
    .S(net35),
    .X(_047_));
 sky130_fd_sc_hd__mux2_2 _270_ (.A0(net14),
    .A1(\rx_module.data_reg[2] ),
    .S(net35),
    .X(_048_));
 sky130_fd_sc_hd__mux2_2 _271_ (.A0(net15),
    .A1(\rx_module.data_reg[3] ),
    .S(net35),
    .X(_049_));
 sky130_fd_sc_hd__mux2_2 _272_ (.A0(net16),
    .A1(\rx_module.data_reg[4] ),
    .S(net35),
    .X(_050_));
 sky130_fd_sc_hd__mux2_2 _273_ (.A0(net17),
    .A1(\rx_module.data_reg[5] ),
    .S(net35),
    .X(_051_));
 sky130_fd_sc_hd__mux2_2 _274_ (.A0(net18),
    .A1(\rx_module.data_reg[6] ),
    .S(net35),
    .X(_052_));
 sky130_fd_sc_hd__mux2_2 _275_ (.A0(net19),
    .A1(\rx_module.data_reg[7] ),
    .S(net35),
    .X(_053_));
 sky130_fd_sc_hd__o21ai_0 _276_ (.A1(\rx_module.state[3] ),
    .A2(_090_),
    .B1(net20),
    .Y(_121_));
 sky130_fd_sc_hd__o21ai_0 _277_ (.A1(_084_),
    .A2(_119_),
    .B1(_121_),
    .Y(_054_));
 sky130_fd_sc_hd__nand3b_1 _278_ (.A_N(\rx_module.tick_count[3] ),
    .B(_031_),
    .C(\rx_module.tick_count[2] ),
    .Y(_122_));
 sky130_fd_sc_hd__nor2b_4 _279_ (.A(\rx_module.sample_stage ),
    .B_N(\rx_module.state[1] ),
    .Y(_123_));
 sky130_fd_sc_hd__a211oi_1 _280_ (.A1(\rx_module.state[2] ),
    .A2(_122_),
    .B1(_123_),
    .C1(\rx_module.state[3] ),
    .Y(_124_));
 sky130_fd_sc_hd__nor2_1 _281_ (.A(\rx_module.tick_count[0] ),
    .B(_124_),
    .Y(_125_));
 sky130_fd_sc_hd__nor4_4 _282_ (.A(\rx_module.state[3] ),
    .B(\rx_module.state[0] ),
    .C(\rx_module.state[2] ),
    .D(net39),
    .Y(_126_));
 sky130_fd_sc_hd__nand3b_1 _283_ (.A_N(\rx_module.tick_count[3] ),
    .B(\rx_module.rx_filtered ),
    .C(\rx_module.state[2] ),
    .Y(_127_));
 sky130_fd_sc_hd__nand2_1 _284_ (.A(\rx_module.tick_count[2] ),
    .B(_031_),
    .Y(_128_));
 sky130_fd_sc_hd__a21oi_2 _285_ (.A1(_095_),
    .A2(_127_),
    .B1(_128_),
    .Y(_129_));
 sky130_fd_sc_hd__inv_1 _286_ (.A(net41),
    .Y(_130_));
 sky130_fd_sc_hd__o31a_1 _287_ (.A1(\rx_module.state[3] ),
    .A2(\rx_module.state[2] ),
    .A3(_123_),
    .B1(_130_),
    .X(_131_));
 sky130_fd_sc_hd__nor3_4 _288_ (.A(_126_),
    .B(_129_),
    .C(_131_),
    .Y(_132_));
 sky130_fd_sc_hd__mux2_1 _289_ (.A0(\rx_module.tick_count[0] ),
    .A1(_125_),
    .S(_132_),
    .X(_055_));
 sky130_fd_sc_hd__inv_1 _290_ (.A(\rx_module.tick_count[1] ),
    .Y(_133_));
 sky130_fd_sc_hd__a211o_1 _291_ (.A1(_122_),
    .A2(\rx_module.state[2] ),
    .B1(_123_),
    .C1(\rx_module.state[3] ),
    .X(_134_));
 sky130_fd_sc_hd__nand2_1 _292_ (.A(_032_),
    .B(_134_),
    .Y(_135_));
 sky130_fd_sc_hd__mux2i_1 _293_ (.A0(_133_),
    .A1(_135_),
    .S(_132_),
    .Y(_056_));
 sky130_fd_sc_hd__nand2_1 _294_ (.A(_031_),
    .B(net41),
    .Y(_136_));
 sky130_fd_sc_hd__nor2_1 _295_ (.A(\rx_module.tick_count[2] ),
    .B(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__and2_1 _296_ (.A(\rx_module.tick_count[2] ),
    .B(_136_),
    .X(_138_));
 sky130_fd_sc_hd__o32ai_1 _297_ (.A1(\rx_module.state[3] ),
    .A2(\rx_module.state[2] ),
    .A3(_123_),
    .B1(_137_),
    .B2(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__o21ai_0 _298_ (.A1(_126_),
    .A2(_129_),
    .B1(\rx_module.tick_count[2] ),
    .Y(_140_));
 sky130_fd_sc_hd__nand2_1 _299_ (.A(_139_),
    .B(_140_),
    .Y(_057_));
 sky130_fd_sc_hd__nand3_1 _300_ (.A(\rx_module.tick_count[2] ),
    .B(\rx_module.tick_count[0] ),
    .C(\rx_module.tick_count[1] ),
    .Y(_141_));
 sky130_fd_sc_hd__nor3_1 _301_ (.A(\rx_module.tick_count[3] ),
    .B(_124_),
    .C(_141_),
    .Y(_142_));
 sky130_fd_sc_hd__a2111oi_4 _302_ (.A1(_134_),
    .A2(_141_),
    .B1(_126_),
    .C1(_129_),
    .D1(_131_),
    .Y(_143_));
 sky130_fd_sc_hd__o2bb2ai_1 _303_ (.A1_N(_132_),
    .A2_N(_142_),
    .B1(_143_),
    .B2(_083_),
    .Y(_058_));
 sky130_fd_sc_hd__nor2_1 _304_ (.A(_021_),
    .B(\tx_module.bit_count[0] ),
    .Y(_144_));
 sky130_fd_sc_hd__mux2_2 _305_ (.A0(\tx_module.bit_count[0] ),
    .A1(_144_),
    .S(\tx_module.tx_sample_stage ),
    .X(_145_));
 sky130_fd_sc_hd__nor2_4 _306_ (.A(\tx_module.state[0] ),
    .B(net38),
    .Y(_146_));
 sky130_fd_sc_hd__a22o_2 _307_ (.A1(net38),
    .A2(_145_),
    .B1(_146_),
    .B2(\tx_module.bit_count[0] ),
    .X(_059_));
 sky130_fd_sc_hd__mux2_2 _308_ (.A0(\tx_module.bit_count[1] ),
    .A1(_020_),
    .S(\tx_module.tx_sample_stage ),
    .X(_147_));
 sky130_fd_sc_hd__a22o_2 _309_ (.A1(\tx_module.bit_count[1] ),
    .A2(_146_),
    .B1(_147_),
    .B2(net38),
    .X(_060_));
 sky130_fd_sc_hd__mux2_2 _310_ (.A0(\tx_module.bit_count[2] ),
    .A1(_022_),
    .S(\tx_module.tx_sample_stage ),
    .X(_148_));
 sky130_fd_sc_hd__a22o_2 _311_ (.A1(\tx_module.bit_count[2] ),
    .A2(_146_),
    .B1(_148_),
    .B2(net38),
    .X(_061_));
 sky130_fd_sc_hd__nor2b_1 _312_ (.A(\tx_module.tx_sample_stage ),
    .B_N(net38),
    .Y(_149_));
 sky130_fd_sc_hd__a211oi_4 _313_ (.A1(\tx_module.state[0] ),
    .A2(_082_),
    .B1(_146_),
    .C1(_149_),
    .Y(_150_));
 sky130_fd_sc_hd__mux2i_1 _315_ (.A0(net3),
    .A1(\tx_module.data_reg[1] ),
    .S(net37),
    .Y(_152_));
 sky130_fd_sc_hd__nor2_1 _316_ (.A(\tx_module.data_reg[0] ),
    .B(net36),
    .Y(_153_));
 sky130_fd_sc_hd__a21oi_2 _317_ (.A1(net36),
    .A2(_152_),
    .B1(_153_),
    .Y(_062_));
 sky130_fd_sc_hd__mux2i_1 _318_ (.A0(net4),
    .A1(\tx_module.data_reg[2] ),
    .S(net37),
    .Y(_154_));
 sky130_fd_sc_hd__nor2_1 _319_ (.A(\tx_module.data_reg[1] ),
    .B(net36),
    .Y(_155_));
 sky130_fd_sc_hd__a21oi_2 _320_ (.A1(net36),
    .A2(_154_),
    .B1(_155_),
    .Y(_063_));
 sky130_fd_sc_hd__mux2i_1 _321_ (.A0(net5),
    .A1(\tx_module.data_reg[3] ),
    .S(net37),
    .Y(_156_));
 sky130_fd_sc_hd__nor2_1 _322_ (.A(\tx_module.data_reg[2] ),
    .B(net36),
    .Y(_157_));
 sky130_fd_sc_hd__a21oi_1 _323_ (.A1(net36),
    .A2(_156_),
    .B1(_157_),
    .Y(_064_));
 sky130_fd_sc_hd__mux2i_1 _324_ (.A0(net6),
    .A1(\tx_module.data_reg[4] ),
    .S(net37),
    .Y(_158_));
 sky130_fd_sc_hd__nor2_1 _325_ (.A(\tx_module.data_reg[3] ),
    .B(net36),
    .Y(_159_));
 sky130_fd_sc_hd__a21oi_1 _326_ (.A1(net36),
    .A2(_158_),
    .B1(_159_),
    .Y(_065_));
 sky130_fd_sc_hd__mux2i_1 _327_ (.A0(net7),
    .A1(\tx_module.data_reg[5] ),
    .S(net37),
    .Y(_160_));
 sky130_fd_sc_hd__nor2_1 _328_ (.A(\tx_module.data_reg[4] ),
    .B(net36),
    .Y(_161_));
 sky130_fd_sc_hd__a21oi_1 _329_ (.A1(net36),
    .A2(_160_),
    .B1(_161_),
    .Y(_066_));
 sky130_fd_sc_hd__mux2i_1 _330_ (.A0(net8),
    .A1(\tx_module.data_reg[6] ),
    .S(net37),
    .Y(_162_));
 sky130_fd_sc_hd__nor2_1 _331_ (.A(\tx_module.data_reg[5] ),
    .B(net36),
    .Y(_163_));
 sky130_fd_sc_hd__a21oi_1 _332_ (.A1(net36),
    .A2(_162_),
    .B1(_163_),
    .Y(_067_));
 sky130_fd_sc_hd__mux2i_1 _333_ (.A0(net9),
    .A1(\tx_module.data_reg[7] ),
    .S(net37),
    .Y(_164_));
 sky130_fd_sc_hd__nor2_1 _334_ (.A(\tx_module.data_reg[6] ),
    .B(net36),
    .Y(_165_));
 sky130_fd_sc_hd__a21oi_1 _335_ (.A1(net36),
    .A2(_164_),
    .B1(_165_),
    .Y(_068_));
 sky130_fd_sc_hd__inv_1 _336_ (.A(\tx_module.data_reg[7] ),
    .Y(_166_));
 sky130_fd_sc_hd__nand3b_1 _337_ (.A_N(net37),
    .B(net10),
    .C(net36),
    .Y(_167_));
 sky130_fd_sc_hd__o21ai_0 _338_ (.A1(_166_),
    .A2(net36),
    .B1(_167_),
    .Y(_069_));
 sky130_fd_sc_hd__inv_1 _339_ (.A(\tx_module.tick_count[0] ),
    .Y(_168_));
 sky130_fd_sc_hd__nor2_2 _340_ (.A(\tx_module.state[3] ),
    .B(\tx_module.state[2] ),
    .Y(_169_));
 sky130_fd_sc_hd__nand2b_1 _341_ (.A_N(\tx_module.tx_sample_stage ),
    .B(\tx_module.state[1] ),
    .Y(_170_));
 sky130_fd_sc_hd__a21oi_1 _342_ (.A1(_170_),
    .A2(_169_),
    .B1(net41),
    .Y(_171_));
 sky130_fd_sc_hd__a21oi_1 _343_ (.A1(_146_),
    .A2(_169_),
    .B1(_171_),
    .Y(_172_));
 sky130_fd_sc_hd__o21ai_0 _344_ (.A1(_078_),
    .A2(_169_),
    .B1(_170_),
    .Y(_173_));
 sky130_fd_sc_hd__nand3_1 _345_ (.A(net41),
    .B(_168_),
    .C(_173_),
    .Y(_174_));
 sky130_fd_sc_hd__o21ai_0 _346_ (.A1(_168_),
    .A2(_172_),
    .B1(_174_),
    .Y(_070_));
 sky130_fd_sc_hd__inv_1 _347_ (.A(\tx_module.tick_count[1] ),
    .Y(_175_));
 sky130_fd_sc_hd__nand3_1 _348_ (.A(net41),
    .B(_034_),
    .C(_173_),
    .Y(_176_));
 sky130_fd_sc_hd__o21ai_0 _349_ (.A1(_175_),
    .A2(_172_),
    .B1(_176_),
    .Y(_071_));
 sky130_fd_sc_hd__nand2_1 _350_ (.A(_170_),
    .B(_169_),
    .Y(_177_));
 sky130_fd_sc_hd__nor2b_1 _351_ (.A(\tx_module.tick_count[2] ),
    .B_N(_033_),
    .Y(_178_));
 sky130_fd_sc_hd__a21oi_1 _352_ (.A1(_170_),
    .A2(_169_),
    .B1(_033_),
    .Y(_179_));
 sky130_fd_sc_hd__a211o_2 _353_ (.A1(_146_),
    .A2(_169_),
    .B1(_171_),
    .C1(_179_),
    .X(_180_));
 sky130_fd_sc_hd__a32o_1 _354_ (.A1(_177_),
    .A2(_172_),
    .A3(_178_),
    .B1(_180_),
    .B2(\tx_module.tick_count[2] ),
    .X(_072_));
 sky130_fd_sc_hd__nand3_1 _355_ (.A(\tx_module.tick_count[2] ),
    .B(\tx_module.tick_count[0] ),
    .C(\tx_module.tick_count[1] ),
    .Y(_181_));
 sky130_fd_sc_hd__nor2_1 _356_ (.A(\tx_module.tick_count[3] ),
    .B(_181_),
    .Y(_182_));
 sky130_fd_sc_hd__a221o_1 _357_ (.A1(_146_),
    .A2(_169_),
    .B1(_173_),
    .B2(_181_),
    .C1(_171_),
    .X(_183_));
 sky130_fd_sc_hd__a32o_1 _358_ (.A1(_177_),
    .A2(_172_),
    .A3(_182_),
    .B1(_183_),
    .B2(\tx_module.tick_count[3] ),
    .X(_073_));
 sky130_fd_sc_hd__mux2i_1 _359_ (.A0(net22),
    .A1(_080_),
    .S(\tx_module.state[0] ),
    .Y(_184_));
 sky130_fd_sc_hd__nand3_1 _360_ (.A(\tx_module.state[3] ),
    .B(net22),
    .C(_079_),
    .Y(_185_));
 sky130_fd_sc_hd__o21ai_0 _361_ (.A1(\tx_module.state[3] ),
    .A2(_184_),
    .B1(_185_),
    .Y(_074_));
 sky130_fd_sc_hd__ha_1 _362_ (.A(\tx_module.bit_count[0] ),
    .B(\tx_module.bit_count[1] ),
    .COUT(_186_),
    .SUM(_020_));
 sky130_fd_sc_hd__ha_1 _363_ (.A(\tx_module.bit_count[2] ),
    .B(_186_),
    .COUT(_021_),
    .SUM(_022_));
 sky130_fd_sc_hd__ha_1 _364_ (.A(\rx_module.bit_count[0] ),
    .B(\rx_module.bit_count[1] ),
    .COUT(_187_),
    .SUM(_023_));
 sky130_fd_sc_hd__ha_1 _365_ (.A(\rx_module.bit_count[2] ),
    .B(_187_),
    .COUT(_024_),
    .SUM(_025_));
 sky130_fd_sc_hd__ha_1 _366_ (.A(_026_),
    .B(_027_),
    .COUT(_028_),
    .SUM(_029_));
 sky130_fd_sc_hd__ha_1 _367_ (.A(\baud_gen.counter[0] ),
    .B(\baud_gen.counter[1] ),
    .COUT(_030_),
    .SUM(_188_));
 sky130_fd_sc_hd__ha_4 _368_ (.A(\rx_module.tick_count[0] ),
    .B(\rx_module.tick_count[1] ),
    .COUT(_031_),
    .SUM(_032_));
 sky130_fd_sc_hd__ha_1 _369_ (.A(\tx_module.tick_count[0] ),
    .B(\tx_module.tick_count[1] ),
    .COUT(_033_),
    .SUM(_034_));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.baud_tick$_DFF_PN0_  (.D(net34),
    .Q(\baud_gen.baud_tick ),
    .RESET_B(net44),
    .CLK(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[0]$_DFF_PN0_  (.D(_009_),
    .Q(\baud_gen.counter[0] ),
    .RESET_B(net43),
    .CLK(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[1]$_DFF_PN0_  (.D(_010_),
    .Q(\baud_gen.counter[1] ),
    .RESET_B(net43),
    .CLK(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[2]$_DFF_PN0_  (.D(_011_),
    .Q(\baud_gen.counter[2] ),
    .RESET_B(net43),
    .CLK(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[3]$_DFF_PN0_  (.D(_012_),
    .Q(\baud_gen.counter[3] ),
    .RESET_B(net44),
    .CLK(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[4]$_DFF_PN0_  (.D(_013_),
    .Q(\baud_gen.counter[4] ),
    .RESET_B(net44),
    .CLK(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[5]$_DFF_PN0_  (.D(_014_),
    .Q(\baud_gen.counter[5] ),
    .RESET_B(net43),
    .CLK(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[6]$_DFF_PN0_  (.D(_015_),
    .Q(\baud_gen.counter[6] ),
    .RESET_B(net44),
    .CLK(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[7]$_DFF_PN0_  (.D(_016_),
    .Q(\baud_gen.counter[7] ),
    .RESET_B(net43),
    .CLK(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \baud_gen.counter[8]$_DFF_PN0_  (.D(_017_),
    .Q(\baud_gen.counter[8] ),
    .RESET_B(net44),
    .CLK(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_0__f_clk (.A(clknet_0_clk),
    .X(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_1__f_clk (.A(clknet_0_clk),
    .X(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_2__f_clk (.A(clknet_0_clk),
    .X(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_3__f_clk (.A(clknet_0_clk),
    .X(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_4__f_clk (.A(clknet_0_clk),
    .X(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_5__f_clk (.A(clknet_0_clk),
    .X(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_6__f_clk (.A(clknet_0_clk),
    .X(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_7__f_clk (.A(clknet_0_clk),
    .X(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload0 (.A(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__bufinv_16 clkload1 (.A(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__bufinv_16 clkload2 (.A(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload3 (.A(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload4 (.A(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload5 (.A(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload6 (.A(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold46 (.A(reset_n),
    .X(net46));
 sky130_fd_sc_hd__buf_2 input1 (.A(net46),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input10 (.A(tx_data[7]),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input11 (.A(tx_start),
    .X(net11));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input2 (.A(rx),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(tx_data[0]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(tx_data[1]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(tx_data[2]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(tx_data[3]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(tx_data[4]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(tx_data[5]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(tx_data[6]),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output12 (.A(net12),
    .X(rx_data[0]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output13 (.A(net13),
    .X(rx_data[1]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output14 (.A(net14),
    .X(rx_data[2]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output15 (.A(net15),
    .X(rx_data[3]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output16 (.A(net16),
    .X(rx_data[4]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output17 (.A(net17),
    .X(rx_data[5]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output18 (.A(net18),
    .X(rx_data[6]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output19 (.A(net19),
    .X(rx_data[7]));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output20 (.A(net20),
    .X(rx_done));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output21 (.A(net21),
    .X(tx));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output22 (.A(net22),
    .X(tx_busy));
 sky130_fd_sc_hd__buf_4 place34 (.A(_008_),
    .X(net34));
 sky130_fd_sc_hd__buf_12 place35 (.A(_120_),
    .X(net35));
 sky130_fd_sc_hd__buf_12 place36 (.A(_150_),
    .X(net36));
 sky130_fd_sc_hd__buf_4 place37 (.A(net38),
    .X(net37));
 sky130_fd_sc_hd__buf_4 place38 (.A(\tx_module.state[1] ),
    .X(net38));
 sky130_fd_sc_hd__buf_4 place39 (.A(\rx_module.state[1] ),
    .X(net39));
 sky130_fd_sc_hd__buf_4 place40 (.A(\rx_module.sample_stage ),
    .X(net40));
 sky130_fd_sc_hd__buf_4 place41 (.A(\baud_gen.baud_tick ),
    .X(net41));
 sky130_fd_sc_hd__buf_4 place42 (.A(net43),
    .X(net42));
 sky130_fd_sc_hd__buf_4 place43 (.A(net1),
    .X(net43));
 sky130_fd_sc_hd__buf_12 place44 (.A(net1),
    .X(net44));
 sky130_fd_sc_hd__buf_4 place45 (.A(net1),
    .X(net45));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.bit_count[0]$_DFFE_PN0P_  (.D(_035_),
    .Q(\rx_module.bit_count[0] ),
    .RESET_B(net45),
    .CLK(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.bit_count[1]$_DFFE_PN0P_  (.D(_036_),
    .Q(\rx_module.bit_count[1] ),
    .RESET_B(net45),
    .CLK(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.bit_count[2]$_DFFE_PN0P_  (.D(_037_),
    .Q(\rx_module.bit_count[2] ),
    .RESET_B(net45),
    .CLK(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.data_reg[0]$_DFFE_PN0P_  (.D(_038_),
    .Q(\rx_module.data_reg[0] ),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.data_reg[1]$_DFFE_PN0P_  (.D(_039_),
    .Q(\rx_module.data_reg[1] ),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.data_reg[2]$_DFFE_PN0P_  (.D(_040_),
    .Q(\rx_module.data_reg[2] ),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.data_reg[3]$_DFFE_PN0P_  (.D(_041_),
    .Q(\rx_module.data_reg[3] ),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.data_reg[4]$_DFFE_PN0P_  (.D(_042_),
    .Q(\rx_module.data_reg[4] ),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.data_reg[5]$_DFFE_PN0P_  (.D(_043_),
    .Q(\rx_module.data_reg[5] ),
    .RESET_B(net44),
    .CLK(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.data_reg[6]$_DFFE_PN0P_  (.D(_044_),
    .Q(\rx_module.data_reg[6] ),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.data_reg[7]$_DFFE_PN0P_  (.D(_045_),
    .Q(\rx_module.data_reg[7] ),
    .RESET_B(net44),
    .CLK(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_data[0]$_DFFE_PN0P_  (.D(_046_),
    .Q(net12),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_data[1]$_DFFE_PN0P_  (.D(_047_),
    .Q(net13),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_data[2]$_DFFE_PN0P_  (.D(_048_),
    .Q(net14),
    .RESET_B(net44),
    .CLK(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_data[3]$_DFFE_PN0P_  (.D(_049_),
    .Q(net15),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_data[4]$_DFFE_PN0P_  (.D(_050_),
    .Q(net16),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_data[5]$_DFFE_PN0P_  (.D(_051_),
    .Q(net17),
    .RESET_B(net44),
    .CLK(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_data[6]$_DFFE_PN0P_  (.D(_052_),
    .Q(net18),
    .RESET_B(net44),
    .CLK(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_data[7]$_DFFE_PN0P_  (.D(_053_),
    .Q(net19),
    .RESET_B(net44),
    .CLK(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.rx_done$_DFFE_PN0P_  (.D(_054_),
    .Q(net20),
    .RESET_B(net44),
    .CLK(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \rx_module.rx_filtered$_DFF_P_  (.D(\rx_module.rx_sync ),
    .Q(\rx_module.rx_filtered ),
    .CLK(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \rx_module.rx_sync$_DFF_P_  (.D(net2),
    .Q(\rx_module.rx_sync ),
    .CLK(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.sample_stage$_DFF_PN0_  (.D(_018_),
    .Q(\rx_module.sample_stage ),
    .RESET_B(net45),
    .CLK(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 \rx_module.state[0]$_DFF_PN1_  (.D(_000_),
    .Q(\rx_module.state[0] ),
    .SET_B(net44),
    .CLK(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.state[1]$_DFF_PN0_  (.D(_001_),
    .Q(\rx_module.state[1] ),
    .RESET_B(net45),
    .CLK(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.state[2]$_DFF_PN0_  (.D(_002_),
    .Q(\rx_module.state[2] ),
    .RESET_B(net44),
    .CLK(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.state[3]$_DFF_PN0_  (.D(_003_),
    .Q(\rx_module.state[3] ),
    .RESET_B(net45),
    .CLK(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.tick_count[0]$_DFFE_PN0P_  (.D(_055_),
    .Q(\rx_module.tick_count[0] ),
    .RESET_B(net45),
    .CLK(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.tick_count[1]$_DFFE_PN0P_  (.D(_056_),
    .Q(\rx_module.tick_count[1] ),
    .RESET_B(net45),
    .CLK(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.tick_count[2]$_DFFE_PN0P_  (.D(_057_),
    .Q(\rx_module.tick_count[2] ),
    .RESET_B(net45),
    .CLK(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \rx_module.tick_count[3]$_DFFE_PN0P_  (.D(_058_),
    .Q(\rx_module.tick_count[3] ),
    .RESET_B(net45),
    .CLK(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.bit_count[0]$_DFFE_PN0P_  (.D(_059_),
    .Q(\tx_module.bit_count[0] ),
    .RESET_B(net44),
    .CLK(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.bit_count[1]$_DFFE_PN0P_  (.D(_060_),
    .Q(\tx_module.bit_count[1] ),
    .RESET_B(net44),
    .CLK(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.bit_count[2]$_DFFE_PN0P_  (.D(_061_),
    .Q(\tx_module.bit_count[2] ),
    .RESET_B(net43),
    .CLK(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.data_reg[0]$_DFFE_PN0P_  (.D(_062_),
    .Q(\tx_module.data_reg[0] ),
    .RESET_B(net43),
    .CLK(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.data_reg[1]$_DFFE_PN0P_  (.D(_063_),
    .Q(\tx_module.data_reg[1] ),
    .RESET_B(net42),
    .CLK(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.data_reg[2]$_DFFE_PN0P_  (.D(_064_),
    .Q(\tx_module.data_reg[2] ),
    .RESET_B(net42),
    .CLK(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.data_reg[3]$_DFFE_PN0P_  (.D(_065_),
    .Q(\tx_module.data_reg[3] ),
    .RESET_B(net42),
    .CLK(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.data_reg[4]$_DFFE_PN0P_  (.D(_066_),
    .Q(\tx_module.data_reg[4] ),
    .RESET_B(net42),
    .CLK(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.data_reg[5]$_DFFE_PN0P_  (.D(_067_),
    .Q(\tx_module.data_reg[5] ),
    .RESET_B(net42),
    .CLK(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.data_reg[6]$_DFFE_PN0P_  (.D(_068_),
    .Q(\tx_module.data_reg[6] ),
    .RESET_B(net42),
    .CLK(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.data_reg[7]$_DFFE_PN0P_  (.D(_069_),
    .Q(\tx_module.data_reg[7] ),
    .RESET_B(net43),
    .CLK(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 \tx_module.state[0]$_DFF_PN1_  (.D(_004_),
    .Q(\tx_module.state[0] ),
    .SET_B(net43),
    .CLK(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.state[1]$_DFF_PN0_  (.D(_005_),
    .Q(\tx_module.state[1] ),
    .RESET_B(net44),
    .CLK(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.state[2]$_DFF_PN0_  (.D(_006_),
    .Q(\tx_module.state[2] ),
    .RESET_B(net43),
    .CLK(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.state[3]$_DFF_PN0_  (.D(_007_),
    .Q(\tx_module.state[3] ),
    .RESET_B(net44),
    .CLK(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.tick_count[0]$_DFFE_PN0P_  (.D(_070_),
    .Q(\tx_module.tick_count[0] ),
    .RESET_B(net45),
    .CLK(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.tick_count[1]$_DFFE_PN0P_  (.D(_071_),
    .Q(\tx_module.tick_count[1] ),
    .RESET_B(net45),
    .CLK(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.tick_count[2]$_DFFE_PN0P_  (.D(_072_),
    .Q(\tx_module.tick_count[2] ),
    .RESET_B(net45),
    .CLK(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.tick_count[3]$_DFFE_PN0P_  (.D(_073_),
    .Q(\tx_module.tick_count[3] ),
    .RESET_B(net45),
    .CLK(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__dfstp_2 \tx_module.tx$_DFF_PN1_  (.D(_075_),
    .Q(net21),
    .SET_B(net43),
    .CLK(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.tx_busy$_DFFE_PN0P_  (.D(_074_),
    .Q(net22),
    .RESET_B(net43),
    .CLK(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \tx_module.tx_sample_stage$_DFF_PN0_  (.D(_019_),
    .Q(\tx_module.tx_sample_stage ),
    .RESET_B(net43),
    .CLK(clknet_3_2__leaf_clk));
endmodule
