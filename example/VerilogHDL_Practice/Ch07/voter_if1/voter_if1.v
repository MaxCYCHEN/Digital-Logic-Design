// Ch07 voter_if1.v
// 四人投票機 (使用 if 查表)

module voter_if1 (I, O);
input  [3:0] I;		// I 四位元輸入
output [3:1] O;		// O 三位元輸出
reg    [3:1] O;		// 宣告 O 為暫存器資料

// 使用 if 敘述
always@ (I)
  if      (I == 4'b0000)   O = 3'b100;
  else if (I == 4'b0001)   O = 3'b100;
  else if (I == 4'b0010)   O = 3'b100;
  else if (I == 4'b0011)   O = 3'b010;
  else if (I == 4'b0100)   O = 3'b100; 
  else if (I == 4'b0101)   O = 3'b010;
  else if (I == 4'b0110)   O = 3'b010;
  else if (I == 4'b0111)   O = 3'b001;
  else if (I == 4'b1000)   O = 3'b100;
  else if (I == 4'b1001)   O = 3'b010;
  else if (I == 4'b1010)   O = 3'b010;
  else if (I == 4'b1011)   O = 3'b001;
  else if (I == 4'b1100)   O = 3'b010; 
  else if (I == 4'b1101)   O = 3'b001;
  else if (I == 4'b1110)   O = 3'b001;
  else                     O = 3'b001;

endmodule
