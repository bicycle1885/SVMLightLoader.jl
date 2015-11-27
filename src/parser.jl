using Ragel
using BufferedStreams

const svmlight_start  = 21
const svmlight_first_final  = 21
const svmlight_error  = 0
const svmlight_en_main  = 21
const _svmlight_nfa_targs = Int8[ 0, 0 ,  ]
const _svmlight_nfa_offsets = Int8[ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,  ]
const _svmlight_nfa_push_actions = Int8[ 0, 0 ,  ]
const _svmlight_nfa_pop_trans = Int8[ 0, 0 ,  ]
type SVMLightParser
state::Ragel.State
seqbuf::BufferedOutputStream{BufferedStreams.EmptyStreamSource}

function SVMLightParser(input::BufferedInputStream)
	begin
	cs = convert( Int , svmlight_start );
	
end
return new(Ragel.State(cs, input), BufferedOutputStream())
end
	end

function parse(parser::SVMLightParser)
	state = parser.state
	
	# variables used by Ragel
	p = state.p
	pe = state.stream.available
	cs = state.cs
	data = state.stream.buffer
	eof = pe + 1
	
	target::Float64 = 0.0
	feature::Int    = 0
	value::Float64  = 0.0
	pairs = Pair{	Int,Float64}[]

begin
cs = convert( Int , svmlight_start );

end
@inbounds while 	true
	if p == pe
		state.p = p
		state.stream.available = pe
		nb = fillbuffer!(state)
		p = state.p
		pe = state.stream.available
		if nb == 0
			eof = pe  # trigger eof handling
		else
			eof = pe + 1
		end
	end
	
	begin
	if ( p == pe  )
		@goto _test_eof
		
	end
	if ( cs  == 21 )
		@goto st_case_21
	elseif ( cs  == 0 )
		@goto st_case_0
	elseif ( cs  == 22 )
		@goto st_case_22
	elseif ( cs  == 1 )
		@goto st_case_1
	elseif ( cs  == 2 )
		@goto st_case_2
	elseif ( cs  == 3 )
		@goto st_case_3
	elseif ( cs  == 4 )
		@goto st_case_4
	elseif ( cs  == 5 )
		@goto st_case_5
	elseif ( cs  == 6 )
		@goto st_case_6
	elseif ( cs  == 7 )
		@goto st_case_7
	elseif ( cs  == 8 )
		@goto st_case_8
	elseif ( cs  == 9 )
		@goto st_case_9
	elseif ( cs  == 10 )
		@goto st_case_10
	elseif ( cs  == 11 )
		@goto st_case_11
	elseif ( cs  == 12 )
		@goto st_case_12
	elseif ( cs  == 13 )
		@goto st_case_13
	elseif ( cs  == 14 )
		@goto st_case_14
	elseif ( cs  == 15 )
		@goto st_case_15
	elseif ( cs  == 16 )
		@goto st_case_16
	elseif ( cs  == 17 )
		@goto st_case_17
	elseif ( cs  == 18 )
		@goto st_case_18
	elseif ( cs  == 19 )
		@goto st_case_19
	elseif ( cs  == 20 )
		@goto st_case_20
	end
	@goto st_out
	@label st_case_21
	if ( (data[1+(p )]) == 10 )
		begin
		@goto st22
		
	end
elseif ( (data[1+(p )]) == 13 )
	begin
	@goto st1
	
end
elseif 	( (data[1+(p )]) == 35 )
	begin
	@goto st2
	
end
elseif 	( (data[1+(p )]) == 43 )
	begin
	@goto ctr35
	
end
elseif 	( (data[1+(p )]) == 45 )
	begin
	@goto ctr35
	
end
elseif 	( (data[1+(p )]) == 46 )
	begin
	@goto ctr36
	
end
end
if 	( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
	begin
	@goto ctr37
	
end

end
begin
	@goto st0

end
@label st_case_0
@label st0
cs = 0;
@goto _out
@label ctr6
begin
target  = Ragel.@float64_from_anchor!
end
begin
empty!(pairs)
end
@goto st22
@label ctr11
begin
empty!(pairs)
end
@goto st22
@label ctr25
begin
value = Ragel.@float64_from_anchor!
push!(pairs, feature => value)
end
begin
empty!(pairs)
end
@goto st22
@label ctr38
begin
state.linenum += 1
end
@goto st22
@label st22
p+= 1;
if ( p == pe  )
@goto _test_eof22

end
@label st_case_22
if ( (data[1+(p )]) == 10 )
begin
@goto ctr38

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr39

end
elseif ( (data[1+(p )]) == 35 )
begin
@goto ctr40

end
elseif ( (data[1+(p )]) == 43 )
begin
@goto ctr41

end
elseif ( (data[1+(p )]) == 45 )
begin
@goto ctr41

end
elseif ( (data[1+(p )]) == 46 )
begin
@goto ctr42

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto ctr43

end

end
begin
@goto st0

end
@label ctr7
begin
target  = Ragel.@float64_from_anchor!
end
begin
empty!(pairs)
end
@goto st1
@label ctr12
begin
empty!(pairs)
end
@goto st1
@label ctr26
begin
value = Ragel.@float64_from_anchor!
push!(pairs, feature => value)
end
begin
empty!(pairs)
end
@goto st1
@label ctr39
begin
state.linenum += 1
end
@goto st1
@label st1
p+= 1;
if ( p == pe  )
@goto _test_eof1

end
@label st_case_1
if ( (data[1+(p )])== 10  )
begin
@goto st22

end

end
begin
@goto st0

end
@label ctr40
begin
state.linenum += 1
end
@goto st2
@label st2
p+= 1;
if ( p == pe  )
@goto _test_eof2

end
@label st_case_2
if ( (data[1+(p )])== 10  )
begin
@goto st22

end

end
if ( (data[1+(p )])<= 127  )
begin
@goto st2

end

end
begin
@goto st0

end
@label ctr35
begin
Ragel.@anchor!
end
@goto st3
@label ctr41
begin
state.linenum += 1
end
begin
Ragel.@anchor!
end
@goto st3
@label st3
p+= 1;
if ( p == pe  )
@goto _test_eof3

end
@label st_case_3
if ( (data[1+(p )])== 46  )
begin
@goto st4

end

end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st20

end

end
begin
@goto st0

end
@label ctr36
begin
Ragel.@anchor!
end
@goto st4
@label ctr42
begin
state.linenum += 1
end
begin
Ragel.@anchor!
end
@goto st4
@label st4
p+= 1;
if ( p == pe  )
@goto _test_eof4

end
@label st_case_4
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st5

end

end
begin
@goto st0

end
@label st5
p+= 1;
if ( p == pe  )
@goto _test_eof5

end
@label st_case_5
if ( (data[1+(p )]) == 10 )
begin
@goto ctr6

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr7

end
elseif ( (data[1+(p )]) == 32 )
begin
@goto ctr8

end
elseif ( (data[1+(p )]) == 35 )
begin
@goto ctr9

end
elseif ( (data[1+(p )]) == 69 )
begin
@goto st17

end
elseif ( (data[1+(p )]) == 101 )
begin
@goto st17

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st5

end

end
begin
@goto st0

end
@label ctr8
begin
target  = Ragel.@float64_from_anchor!
end
@goto st6
@label ctr27
begin
value = Ragel.@float64_from_anchor!
push!(pairs, feature => value)
end
@goto st6
@label st6
p+= 1;
if ( p == pe  )
@goto _test_eof6

end
@label st_case_6
if ( (data[1+(p )]) == 10 )
begin
@goto ctr11

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr12

end
elseif ( (data[1+(p )]) == 32 )
begin
@goto st6

end
elseif ( (data[1+(p )]) == 35 )
begin
@goto st7

end
end
if ( 49 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto ctr15

end

end
begin
@goto st0

end
@label ctr9
begin
target  = Ragel.@float64_from_anchor!
end
@goto st7
@label ctr16
begin
empty!(pairs)
end
@goto st7
@label ctr28
begin
value = Ragel.@float64_from_anchor!
push!(pairs, feature => value)
end
@goto st7
@label st7
p+= 1;
if ( p == pe  )
@goto _test_eof7

end
@label st_case_7
if ( (data[1+(p )]) == 10 )
begin
@goto ctr11

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr16

end
end
if ( (data[1+(p )])<= 127  )
begin
@goto st7

end

end
begin
@goto st0

end
@label ctr15
begin
Ragel.@anchor!
end
@goto st8
@label st8
p+= 1;
if ( p == pe  )
@goto _test_eof8

end
@label st_case_8
if ( (data[1+(p )])== 58  )
begin
@goto ctr18

end

end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st8

end

end
begin
@goto st0

end
@label ctr18
begin
feature = Ragel.@int64_from_anchor!
end
@goto st9
@label st9
p+= 1;
if ( p == pe  )
@goto _test_eof9

end
@label st_case_9
if ( (data[1+(p )]) == 43 )
begin
@goto ctr19

end
elseif ( (data[1+(p )]) == 45 )
begin
@goto ctr19

end
elseif ( (data[1+(p )]) == 46 )
begin
@goto ctr20

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto ctr21

end

end
begin
@goto st0

end
@label ctr19
begin
Ragel.@anchor!
end
@goto st10
@label st10
p+= 1;
if ( p == pe  )
@goto _test_eof10

end
@label st_case_10
if ( (data[1+(p )])== 46  )
begin
@goto st11

end

end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st16

end

end
begin
@goto st0

end
@label ctr20
begin
Ragel.@anchor!
end
@goto st11
@label st11
p+= 1;
if ( p == pe  )
@goto _test_eof11

end
@label st_case_11
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st12

end

end
begin
@goto st0

end
@label st12
p+= 1;
if ( p == pe  )
@goto _test_eof12

end
@label st_case_12
if ( (data[1+(p )]) == 10 )
begin
@goto ctr25

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr26

end
elseif ( (data[1+(p )]) == 32 )
begin
@goto ctr27

end
elseif ( (data[1+(p )]) == 35 )
begin
@goto ctr28

end
elseif ( (data[1+(p )]) == 69 )
begin
@goto st13

end
elseif ( (data[1+(p )]) == 101 )
begin
@goto st13

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st12

end

end
begin
@goto st0

end
@label st13
p+= 1;
if ( p == pe  )
@goto _test_eof13

end
@label st_case_13
if ( (data[1+(p )]) == 43 )
begin
@goto st14

end
elseif ( (data[1+(p )]) == 45 )
begin
@goto st14

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st15

end

end
begin
@goto st0

end
@label st14
p+= 1;
if ( p == pe  )
@goto _test_eof14

end
@label st_case_14
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st15

end

end
begin
@goto st0

end
@label st15
p+= 1;
if ( p == pe  )
@goto _test_eof15

end
@label st_case_15
if ( (data[1+(p )]) == 10 )
begin
@goto ctr25

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr26

end
elseif ( (data[1+(p )]) == 32 )
begin
@goto ctr27

end
elseif ( (data[1+(p )]) == 35 )
begin
@goto ctr28

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st15

end

end
begin
@goto st0

end
@label ctr21
begin
Ragel.@anchor!
end
@goto st16
@label st16
p+= 1;
if ( p == pe  )
@goto _test_eof16

end
@label st_case_16
if ( (data[1+(p )]) == 10 )
begin
@goto ctr25

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr26

end
elseif ( (data[1+(p )]) == 32 )
begin
@goto ctr27

end
elseif ( (data[1+(p )]) == 35 )
begin
@goto ctr28

end
elseif ( (data[1+(p )]) == 46 )
begin
@goto st11

end
elseif ( (data[1+(p )]) == 69 )
begin
@goto st13

end
elseif ( (data[1+(p )]) == 101 )
begin
@goto st13

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st16

end

end
begin
@goto st0

end
@label st17
p+= 1;
if ( p == pe  )
@goto _test_eof17

end
@label st_case_17
if ( (data[1+(p )]) == 43 )
begin
@goto st18

end
elseif ( (data[1+(p )]) == 45 )
begin
@goto st18

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st19

end

end
begin
@goto st0

end
@label st18
p+= 1;
if ( p == pe  )
@goto _test_eof18

end
@label st_case_18
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st19

end

end
begin
@goto st0

end
@label st19
p+= 1;
if ( p == pe  )
@goto _test_eof19

end
@label st_case_19
if ( (data[1+(p )]) == 10 )
begin
@goto ctr6

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr7

end
elseif ( (data[1+(p )]) == 32 )
begin
@goto ctr8

end
elseif ( (data[1+(p )]) == 35 )
begin
@goto ctr9

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st19

end

end
begin
@goto st0

end
@label ctr37
begin
Ragel.@anchor!
end
@goto st20
@label ctr43
begin
state.linenum += 1
end
begin
Ragel.@anchor!
end
@goto st20
@label st20
p+= 1;
if ( p == pe  )
@goto _test_eof20

end
@label st_case_20
if ( (data[1+(p )]) == 10 )
begin
@goto ctr6

end
elseif ( (data[1+(p )]) == 13 )
begin
@goto ctr7

end
elseif ( (data[1+(p )]) == 32 )
begin
@goto ctr8

end
elseif ( (data[1+(p )]) == 35 )
begin
@goto ctr9

end
elseif ( (data[1+(p )]) == 46 )
begin
@goto st4

end
elseif ( (data[1+(p )]) == 69 )
begin
@goto st17

end
elseif ( (data[1+(p )]) == 101 )
begin
@goto st17

end
end
if ( 48 <= (data[1+(p )])&& (data[1+(p )])<= 57  )
begin
@goto st20

end

end
begin
@goto st0

end
@label st_out
@label _test_eof22
cs = 22;
@goto _test_eof
@label _test_eof1
cs = 1;
@goto _test_eof
@label _test_eof2
cs = 2;
@goto _test_eof
@label _test_eof3
cs = 3;
@goto _test_eof
@label _test_eof4
cs = 4;
@goto _test_eof
@label _test_eof5
cs = 5;
@goto _test_eof
@label _test_eof6
cs = 6;
@goto _test_eof
@label _test_eof7
cs = 7;
@goto _test_eof
@label _test_eof8
cs = 8;
@goto _test_eof
@label _test_eof9
cs = 9;
@goto _test_eof
@label _test_eof10
cs = 10;
@goto _test_eof
@label _test_eof11
cs = 11;
@goto _test_eof
@label _test_eof12
cs = 12;
@goto _test_eof
@label _test_eof13
cs = 13;
@goto _test_eof
@label _test_eof14
cs = 14;
@goto _test_eof
@label _test_eof15
cs = 15;
@goto _test_eof
@label _test_eof16
cs = 16;
@goto _test_eof
@label _test_eof17
cs = 17;
@goto _test_eof
@label _test_eof18
cs = 18;
@goto _test_eof
@label _test_eof19
cs = 19;
@goto _test_eof
@label _test_eof20
cs = 20;
@goto _test_eof
@label _test_eof
begin

end
if ( p == eof  )
begin
if ( cs  == 22 )
begin
state.linenum += 1
end

break;
end

end

end
@label _out
begin

end

end
if cs == svmlight_error
error("Error parsing svmlight input on line ", state.linenum)
elseif p == pe == eof
break
end
end

state.p = p
state.stream.available = pe
state.cs = cs
if p >= pe
state.finished = true
end
end
