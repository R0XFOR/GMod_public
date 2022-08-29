concommand.Add( "decode", function( ply, cmd, args )
	rand = math.random(9999)
	
	File1 = file.Open("lua/custom/dupe.txt", "rb", "MOD")
	--File2 = file.Open("lua/custom/dupe_" .. tostring(rand) .. "_decoded.txt", "wb", "MOD")
	
	success, tbl, info = AdvDupe2.Decode(File1:Read())
	print( rand )
	file.Write( "advdupe2_decoded/dupe_" .. tostring(rand) .. "_decoded.txt", table.ToString( tbl, "decoded", true ) )
	
	File1:Close()
end)
