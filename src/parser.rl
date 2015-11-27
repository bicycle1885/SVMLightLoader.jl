using Ragel
using BufferedStreams

%%{
    machine svmlight;

    action count_line { state.linenum += 1 }
    action anchor     { Ragel.@anchor! }
    action target     { target  = Ragel.@float64_from_anchor! }
    action feature    { feature = Ragel.@int64_from_anchor!   }
    action value      {
        value = Ragel.@float64_from_anchor!
        push!(pairs, feature => value)
    }
    action line       {
        empty!(pairs)
    }

    newline = '\r'? '\n' %count_line;
    comment = '#' (ascii - newline)*;
    sign    = '-' | '+';
    integer = [1-9] [0-9]*;
    float   = sign? [0-9]* '.'? [0-9]+ ([eE] sign? [0-9]+)?;
    target  = float   >anchor %target;
    feature = integer >anchor %feature;
    value   = float >anchor %value;
    line    = target (' '+ feature ':' value)* ' '* comment? %line;

    main   := ((comment | line)? newline)*;
}%%

%% write data;

type SVMLightParser
    state::Ragel.State
    seqbuf::BufferedOutputStream{BufferedStreams.EmptyStreamSource}

    function SVMLightParser(input::BufferedInputStream)
        %% write init;
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
    pairs = Pair{Int,Float64}[]

    %% write init;

    @inbounds while true
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

        %% write exec;

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
