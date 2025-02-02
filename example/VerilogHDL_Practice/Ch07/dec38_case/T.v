
`timescale 1ns/1ps

module T;
    reg [2:0] Q = 3'b000;
    wire [7:0] D;

    dec38_case UUT (
        .Q(Q),
        .D(D));

    initial
    begin
      #800 // Final time:  800 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        Q = 3'b001;
        // -------------------------------------
        // -------------  Current Time:  150ns
        #50;
        CHECK_D(8'b00000010);
        // -------------------------------------
        // -------------  Current Time:  200ns
        #50;
        Q = 3'b010;
        // -------------------------------------
        // -------------  Current Time:  250ns
        #50;
        CHECK_D(8'b00000100);
        // -------------------------------------
        // -------------  Current Time:  300ns
        #50;
        Q = 3'b011;
        // -------------------------------------
        // -------------  Current Time:  350ns
        #50;
        CHECK_D(8'b00001000);
        // -------------------------------------
        // -------------  Current Time:  400ns
        #50;
        Q = 3'b100;
        // -------------------------------------
        // -------------  Current Time:  450ns
        #50;
        CHECK_D(8'b00010000);
        // -------------------------------------
        // -------------  Current Time:  500ns
        #50;
        Q = 3'b101;
        // -------------------------------------
        // -------------  Current Time:  550ns
        #50;
        CHECK_D(8'b00100000);
        // -------------------------------------
        // -------------  Current Time:  600ns
        #50;
        Q = 3'b110;
        // -------------------------------------
        // -------------  Current Time:  650ns
        #50;
        CHECK_D(8'b01000000);
        // -------------------------------------
        // -------------  Current Time:  700ns
        #50;
        Q = 3'b111;
        // -------------------------------------
        // -------------  Current Time:  750ns
        #50;
        CHECK_D(8'b10000000);
    end

endmodule

