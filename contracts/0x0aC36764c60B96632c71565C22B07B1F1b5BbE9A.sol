contract main {




// =====================  Runtime code  =====================


#
#  - sub_85091bcb(?)
#
array of uint256 stor1;
array of uint256 stor64;
array of uint256 stor65;

function _fallback() payable {
    revert
}

function populate() payable {
    mem[64] = 96
    idx = 0
    while idx < 32:
        mem[96] = 1
        mem[128] = 'g'
        mem[160] = 0
        mem[192] = 0
        s = 0
        while s < 1:
            mem[s + 256] = mem[s + 128]
            s = s + 32
            continue 
        mem[257] = idx
        mem[224] = 33
        mem[64] = 353
        mem[289] = 0
        mem[321] = 0
        mem[385] = 32
        mem[417] = 32
        mem[449] = sha3(mem[256 len 1], idx) % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        mem[481] = 3
        mem[513] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        mod_exp = bigModExp(' ', sha3(mem[256 len 1], idx) % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47, 3, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
        mem[353] = mod_exp
        require bigModExp.result
        s = 0
        s = sha3(mem[256 len 33]) % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
        while mod_exp <= -4:
            mod_exp = bigModExp(' ', mod_exp + 3, 0xc19139cb84c680a6e14116da060561765e05aa45a1c72a34f082305b61f3f52, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
            require bigModExp.result
            mem[mem[64] + 32] = 32
            mem[mem[64] + 64] = 32
            mem[mem[64] + 96] = mod_exp
            mem[mem[64] + 128] = 2
            mem[mem[64] + 160] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            mod_exp = bigModExp(' ', mod_exp, 2, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
            mem[mem[64]] = mod_exp
            if mod_exp != mod_exp + 3:
                if s > -2:
                    revert with 'NH{q', 17
                mem[mem[64]] = 32
                mem[385] = 32
                mem[417] = 32
                mem[449] = s + 1
                mem[481] = 3
                mem[513] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                mod_exp = bigModExp(mem[353], 32, 32, s + 1, 3, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
                mem[353] = mod_exp
                require bigModExp.result
                s = mod_exp
                s = s + 1
                continue 
            _289 = mem[64]
            mem[64] = mem[64] + 64
            mem[_289] = s
            mem[_289 + 32] = mod_exp
            if idx >= 32:
                revert with 'NH{q', 50
            stor[2 * idx] = s
            stor1[idx] = mod_exp
            _295 = mem[64]
            mem[64] = mem[64] + 64
            mem[_295] = 1
            mem[_295 + 32] = 'h'
            _297 = mem[64]
            mem[64] = mem[64] + 64
            mem[_297] = 0
            mem[_297 + 32] = 0
            _299 = mem[64]
            t = 0
            while t < 1:
                mem[_299 + t + 32] = mem[_295 + t + 32]
                mem[mem[64]] = 32
                mem[385] = 32
                mem[417] = 32
                mem[449] = s
                mem[481] = 3
                mem[513] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                mod_exp = bigModExp(mem[353], 32, 32, s, 3, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
                mem[353] = mod_exp
                require bigModExp.result
                t = t + 32
                continue 
            mem[_299 + 33] = idx
            _367 = mem[64]
            mem[mem[64]] = _299 + -mem[64] + 33
            mem[64] = _299 + 65
            _369 = sha3(mem[_367 + 32 len mem[_367]])
            mem[64] = _299 + 129
            mem[_299 + 65] = 0
            mem[_299 + 97] = 0
            mem[_299 + 161] = 32
            mem[_299 + 193] = 32
            mem[_299 + 225] = _369 % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            mem[_299 + 257] = 3
            mem[_299 + 289] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            mod_exp = bigModExp(' ', _369 % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47, 3, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
            mem[_299 + 129] = mod_exp
            require bigModExp.result
            t = 0
            t = _369 % 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            while mod_exp <= -4:
                mod_exp = bigModExp(' ', mod_exp + 3, 0xc19139cb84c680a6e14116da060561765e05aa45a1c72a34f082305b61f3f52, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
                require bigModExp.result
                mem[mem[64] + 32] = 32
                mem[mem[64] + 64] = 32
                mem[mem[64] + 96] = mod_exp
                mem[mem[64] + 128] = 2
                mem[mem[64] + 160] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                mod_exp = bigModExp(' ', mod_exp, 2, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
                if mod_exp != mod_exp + 3:
                    if t > -2:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 32
                    mem[385] = 32
                    mem[417] = 32
                    mem[449] = s
                    mem[481] = 3
                    mem[513] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                    mod_exp = bigModExp(mem[353], 32, 32, s, 3, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
                    mem[353] = mod_exp
                    require bigModExp.result
                    mem[mem[64]] = 32
                    mem[_299 + 161] = 32
                    mem[_299 + 193] = 32
                    mem[_299 + 225] = t + 1
                    mem[_299 + 257] = 3
                    mem[_299 + 289] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                    mod_exp = bigModExp(mem[_299 + 129], 32, 32, t + 1, 3, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
                    mem[_299 + 129] = mod_exp
                    require bigModExp.result
                    t = mod_exp
                    t = t + 1
                    continue 
                _437 = mem[64]
                mem[64] = mem[64] + 64
                mem[_437] = t
                mem[_437 + 32] = mod_exp
                if idx >= 32:
                    revert with 'NH{q', 50
                stor64[idx] = t
                stor65[idx] = mod_exp
                if idx == -1:
                    revert with 'NH{q', 17
                mem[mem[64]] = 32
                mem[385] = 32
                mem[417] = 32
                mem[449] = s
                mem[481] = 3
                mem[513] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                mod_exp = bigModExp(mem[353], 32, 32, s, 3, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
                mem[353] = mod_exp
                require bigModExp.result
                mem[mem[64]] = 32
                mem[_299 + 161] = 32
                mem[_299 + 193] = 32
                mem[_299 + 225] = t
                mem[_299 + 257] = 3
                mem[_299 + 289] = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                mod_exp = bigModExp(mem[_299 + 129], 32, 32, t, 3, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47) 
                mem[_299 + 129] = mod_exp
                require bigModExp.result
                idx = idx + 1
                continue 
            revert with 'NH{q', 17
        revert with 'NH{q', 17
}



}
