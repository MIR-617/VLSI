module swap;
  reg [7:0] a, b; // Using reg for sequential logic and defining the width

  initial begin
    a = 8'd8; // Initialize a with 8
    b = 8'd5; // Initialize b with 5

    $display("Before swap: a=%0d, b=%0d", a, b);

    // Temporary swap logic using non-blocking assignments
    a <= b;
    b <= a;

    #10; // Wait for the swap to take place

    $display("After swap: a=%0d, b=%0d", a, b);
  end
endmodule
