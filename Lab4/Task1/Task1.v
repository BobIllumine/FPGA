module Task1(SW0, SW1, LED0);
	input SW0, SW1;
	output LED0;
	and(SW0, SW1, LED0);
endmodule 