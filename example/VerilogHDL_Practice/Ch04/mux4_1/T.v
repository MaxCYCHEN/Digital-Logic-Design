
`timescale 1ns/1ps

module T;
    reg A = 1'b0;
    reg B = 1'b1;
    reg C = 1'b1;
    reg D = 1'b0;
    reg S1 = 1'b0;
    reg S0 = 1'b0;
    wire Y;


    mux4_1 UUT (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .S1(S1),
        .S0(S0),
        .Y(Y));

    initial
    begin
      #2400 // Final time:  2400 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        A = 1'b1;
        C = 1'b0;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  400ns
        #100;
        A = 1'b1;
        B = 1'b0;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  500ns
        #100;
        A = 1'b0;
        C = 1'b1;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  600ns
        #100;
        B = 1'b1;
        C = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  700ns
        #100;
        A = 1'b1;
        B = 1'b0;
        D = 1'b1;
        S0 = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  800ns
        #100;
        A = 1'b0;
        C = 1'b1;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  900ns
        #100;
        B = 1'b1;
        C = 1'b0;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1000ns
        #100;
        A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1100ns
        #100;
        A = 1'b0;
        B = 1'b1;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1200ns
        #100;
        A = 1'b1;
        C = 1'b0;
        D = 1'b1;
        S1 = 1'b1;
        S0 = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1300ns
        #100;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1400ns
        #100;
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1500ns
        #100;
        A = 1'b1;
        B = 1'b0;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1600ns
        #100;
        A = 1'b0;
        C = 1'b1;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1700ns
        #100;
        B = 1'b1;
        C = 1'b0;
        D = 1'b1;
        S0 = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1800ns
        #100;
        A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1900ns
        #100;
        A = 1'b0;
        B = 1'b1;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2000ns
        #100;
        A = 1'b1;
        C = 1'b0;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  2100ns
        #100;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2200ns
        #100;
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2300ns
        #100;
        A = 1'b1;
        B = 1'b0;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  2400ns
        #100;
        A = 1'b0;
        C = 1'b1;
        D = 1'b0;
    end

endmodule

