contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of struct stor1;

function _fallback() payable {
    revert
}

function sub_9062eb3a(?) payable {
    if stor0.length:
        mem[128] = uint256(stor0.field_0)
        idx = 128
        s = 0
        while (32 * stor0.length) + 96 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor0.length, data=mem[128 len 32 * stor0.length])
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    mem[(32 * stor0.length) + 192 len 32 * stor0.length] = mem[128 len 32 * stor0.length]
    return memory
      from (32 * stor0.length) + 128
       len (96 * stor0.length) + 64
}

function sub_09421198(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = uint16(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = uint16(stor2.field_8 * (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s))
        idx = idx + 32
        s = (2 * -(s + 3 / 32) + 1) + s - (s + 3 / 32 * s)
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 30 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sub_2808da68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    stor2.length++
    stor2[stor2.length.field_4].field_0 = uint16(arg1) * 256^(2 * stor2.length % 16) or !(65535 * 256^(2 * stor2.length % 16)) and stor2[stor2.length.field_4].field_0
    if not block.timestamp:
        revert with 'NH{q', 18
    if not uint16(arg1):
        revert with 'NH{q', 18
    if block.timestamp < uint16(arg1):
        revert with 'NH{q', 17
    if block.timestamp - uint16(arg1) > -block.difficulty - 1:
        revert with 'NH{q', 17
    if block.timestamp - uint16(arg1) + block.difficulty > -(sha3(block.coinbase) / uint16(arg1)) - 1:
        revert with 'NH{q', 17
    if block.timestamp - uint16(arg1) + block.difficulty + (sha3(block.coinbase) / uint16(arg1)) > -block.gas_limit - 1:
        revert with 'NH{q', 17
    if block.timestamp - uint16(arg1) + block.difficulty + (sha3(block.coinbase) / uint16(arg1)) + block.gas_limit > -(sha3(uint16(arg1)) / block.timestamp) - 1:
        revert with 'NH{q', 17
    if block.timestamp - uint16(arg1) + block.difficulty + (sha3(block.coinbase) / uint16(arg1)) + block.gas_limit + (sha3(uint16(arg1)) / block.timestamp) > -block.number - 1:
        revert with 'NH{q', 17
    stor0.length++
    stor0[stor0.length].field_0 = sha3(block.timestamp - uint16(arg1) + block.difficulty + (sha3(block.coinbase) / uint16(arg1)) + block.gas_limit + (sha3(uint16(arg1)) / block.timestamp) + block.number)
    if stor1[address(msg.sender)].field_0 <= 0:
        stor1[address(msg.sender)].field_0 = 1
        stor1[address(msg.sender)].field_8 = 0
    else:
        if stor1[address(msg.sender)].field_0 > 65534:
            revert with 'NH{q', 17
        stor1[address(msg.sender)].field_0 = uint16(stor1[address(msg.sender)].field_0 + 1)
}



}
