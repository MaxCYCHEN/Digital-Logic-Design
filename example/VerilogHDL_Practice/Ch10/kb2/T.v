
`timescale 1ns/1ps

module T;
    reg Clk10M = 1'b0;
    reg Clr = 1'b1;
    reg [1:3] Co = 3'b111;
    wire [3:1] De;
    wire A;
    wire B;
    wire C;
    wire D;
    wire E;
    wire F;
    wire G;
    wire FN;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;

    initial    // Clock process for Clk10M
    begin
        #OFFSET;
        forever
        begin
            Clk10M = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) Clk10M = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    kb2 UUT (
        .Clk10M(Clk10M),
        .Clr(Clr),
        .Co(Co),
        .De(De),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(G),
        .FN(FN));

    initial
    begin
      #42200 // Final time:  42200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  285ns
        #285;
        Clr = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  315ns
        #30;
        CHECK_A(1'b0);
        CHECK_B(1'b0);
        CHECK_C(1'b0);
        CHECK_D(1'b0);
        CHECK_E(1'b0);
        CHECK_F(1'b0);
        CHECK_G(1'b0);
        CHECK_De(3'b000);
        // -------------------------------------
        // -------------  Current Time:  885ns
        #570;
        Co = 3'b101;
        // -------------------------------------
        // -------------  Current Time:  915ns
        #30;
        CHECK_De(3'b001);
        // -------------------------------------
        // -------------  Current Time:  1315ns
        #400;
        CHECK_FN(1'b1);
        // -------------------------------------
        // -------------  Current Time:  1685ns
        #370;
        Co = 3'b111;
        // -------------------------------------
        // -------------  Current Time:  1715ns
        #30;
        CHECK_De(3'b010);
        // -------------------------------------
        // -------------  Current Time:  2515ns
        #800;
        CHECK_De(3'b011);
        // -------------------------------------
        // -------------  Current Time:  3315ns
        #800;
        CHECK_De(3'b100);
        // -------------------------------------
        // -------------  Current Time:  4115ns
        #800;
        CHECK_De(3'b101);
        // -------------------------------------
        // -------------  Current Time:  4915ns
        #800;
        CHECK_De(3'b110);
        // -------------------------------------
        // -------------  Current Time:  5715ns
        #800;
        CHECK_De(3'b111);
        // -------------------------------------
        // -------------  Current Time:  6515ns
        #800;
        CHECK_De(3'b000);
        // -------------------------------------
        // -------------  Current Time:  7285ns
        #770;
        Co = 3'b101;
        // -------------------------------------
        // -------------  Current Time:  7315ns
        #30;
        CHECK_De(3'b001);
        // -------------------------------------
        // -------------  Current Time:  8085ns
        #770;
        Co = 3'b111;
        // -------------------------------------
        // -------------  Current Time:  8115ns
        #30;
        CHECK_De(3'b010);
        // -------------------------------------
        // -------------  Current Time:  8915ns
        #800;
        CHECK_De(3'b011);
        // -------------------------------------
        // -------------  Current Time:  9715ns
        #800;
        CHECK_De(3'b100);
        // -------------------------------------
        // -------------  Current Time:  10515ns
        #800;
        CHECK_De(3'b101);
        // -------------------------------------
        // -------------  Current Time:  11315ns
        #800;
        CHECK_De(3'b110);
        // -------------------------------------
        // -------------  Current Time:  12115ns
        #800;
        CHECK_De(3'b111);
        // -------------------------------------
        // -------------  Current Time:  12915ns
        #800;
        CHECK_De(3'b000);
        // -------------------------------------
        // -------------  Current Time:  13715ns
        #800;
        CHECK_De(3'b001);
        // -------------------------------------
        // -------------  Current Time:  14115ns
        #400;
        CHECK_FN(1'b0);
        // -------------------------------------
        // -------------  Current Time:  14515ns
        #400;
        CHECK_De(3'b010);
        // -------------------------------------
        // -------------  Current Time:  15315ns
        #800;
        CHECK_De(3'b011);
        // -------------------------------------
        // -------------  Current Time:  16115ns
        #800;
        CHECK_De(3'b100);
        // -------------------------------------
        // -------------  Current Time:  16915ns
        #800;
        CHECK_De(3'b101);
        // -------------------------------------
        // -------------  Current Time:  17715ns
        #800;
        CHECK_De(3'b110);
        // -------------------------------------
        // -------------  Current Time:  18515ns
        #800;
        CHECK_De(3'b111);
        // -------------------------------------
        // -------------  Current Time:  19285ns
        #770;
        Co = 3'b011;
        // -------------------------------------
        // -------------  Current Time:  19315ns
        #30;
        CHECK_A(1'b1);
        CHECK_C(1'b1);
        CHECK_D(1'b1);
        CHECK_F(1'b1);
        CHECK_G(1'b1);
        CHECK_De(3'b000);
        // -------------------------------------
        // -------------  Current Time:  20085ns
        #770;
        Co = 3'b111;
        // -------------------------------------
        // -------------  Current Time:  20115ns
        #30;
        CHECK_A(1'b0);
        CHECK_C(1'b0);
        CHECK_D(1'b0);
        CHECK_F(1'b0);
        CHECK_G(1'b0);
        CHECK_De(3'b001);
        // -------------------------------------
        // -------------  Current Time:  20915ns
        #800;
        CHECK_De(3'b010);
        // -------------------------------------
        // -------------  Current Time:  21715ns
        #800;
        CHECK_De(3'b011);
        // -------------------------------------
        // -------------  Current Time:  22515ns
        #800;
        CHECK_De(3'b100);
        // -------------------------------------
        // -------------  Current Time:  23315ns
        #800;
        CHECK_De(3'b101);
        // -------------------------------------
        // -------------  Current Time:  24115ns
        #800;
        CHECK_De(3'b110);
        // -------------------------------------
        // -------------  Current Time:  24915ns
        #800;
        CHECK_De(3'b111);
        // -------------------------------------
        // -------------  Current Time:  25715ns
        #800;
        CHECK_A(1'b1);
        CHECK_C(1'b1);
        CHECK_D(1'b1);
        CHECK_F(1'b1);
        CHECK_G(1'b1);
        CHECK_De(3'b000);
        // -------------------------------------
        // -------------  Current Time:  26515ns
        #800;
        CHECK_A(1'b0);
        CHECK_C(1'b0);
        CHECK_D(1'b0);
        CHECK_F(1'b0);
        CHECK_G(1'b0);
        CHECK_De(3'b001);
        // -------------------------------------
        // -------------  Current Time:  27285ns
        #770;
        Co = 3'b110;
        // -------------------------------------
        // -------------  Current Time:  27315ns
        #30;
        CHECK_De(3'b010);
        // -------------------------------------
        // -------------  Current Time:  28085ns
        #770;
        Co = 3'b111;
        // -------------------------------------
        // -------------  Current Time:  28115ns
        #30;
        CHECK_De(3'b011);
        // -------------------------------------
        // -------------  Current Time:  28915ns
        #800;
        CHECK_De(3'b100);
        // -------------------------------------
        // -------------  Current Time:  29715ns
        #800;
        CHECK_De(3'b101);
        // -------------------------------------
        // -------------  Current Time:  30515ns
        #800;
        CHECK_De(3'b110);
        // -------------------------------------
        // -------------  Current Time:  31315ns
        #800;
        CHECK_De(3'b111);
        // -------------------------------------
        // -------------  Current Time:  32115ns
        #800;
        CHECK_A(1'b1);
        CHECK_C(1'b1);
        CHECK_D(1'b1);
        CHECK_F(1'b1);
        CHECK_G(1'b1);
        CHECK_De(3'b000);
        // -------------------------------------
        // -------------  Current Time:  32915ns
        #800;
        CHECK_A(1'b0);
        CHECK_C(1'b0);
        CHECK_D(1'b0);
        CHECK_F(1'b0);
        CHECK_G(1'b0);
        CHECK_De(3'b001);
        // -------------------------------------
        // -------------  Current Time:  33715ns
        #800;
        CHECK_De(3'b010);
        // -------------------------------------
        // -------------  Current Time:  34515ns
        #800;
        CHECK_De(3'b011);
        // -------------------------------------
        // -------------  Current Time:  35315ns
        #800;
        CHECK_De(3'b100);
        // -------------------------------------
        // -------------  Current Time:  36115ns
        #800;
        CHECK_De(3'b101);
        // -------------------------------------
        // -------------  Current Time:  36915ns
        #800;
        CHECK_De(3'b110);
        // -------------------------------------
        // -------------  Current Time:  37715ns
        #800;
        CHECK_De(3'b111);
        // -------------------------------------
        // -------------  Current Time:  38515ns
        #800;
        CHECK_A(1'b1);
        CHECK_C(1'b1);
        CHECK_D(1'b1);
        CHECK_F(1'b1);
        CHECK_G(1'b1);
        CHECK_De(3'b000);
        // -------------------------------------
        // -------------  Current Time:  39315ns
        #800;
        CHECK_A(1'b0);
        CHECK_C(1'b0);
        CHECK_D(1'b0);
        CHECK_F(1'b0);
        CHECK_G(1'b0);
        CHECK_De(3'b001);
        // -------------------------------------
    end

endmodule

