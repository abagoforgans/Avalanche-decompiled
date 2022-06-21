contract main {




// =====================  Runtime code  =====================


#
#  - sub_6d3c4c10(?)
#
address stor0;
address stor1;
address stor2;
array of struct stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037084;

function _fallback() payable {
    revert
}

function setTicketCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor6 = arg1
}

function setLockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg1 >= stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Lock time should be smaller than round duration'
    stor4 = arg1
}

function setRoundDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg1 <= stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Round duration should be greater than lock time'
    stor5 = arg1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Caller is not CFO'
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function currentRound() payable {
    if stor3.length < 1:
        revert with 0, 17
    if stor3.length - 1 >= stor3.length:
        revert with 0, 50
    mem[932] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] / 10:
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x750750750750750750750750750750750750750750750750750750750750750:
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if stor3.length - 1 >= stor3.length:
        revert with 0, 50
    if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0:
        mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0) + 960] = 32
        idx = 0
        s = ceil32(return_data.size) + 960
        t = ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0) + 1408
        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, stor3.length - 1, 
               stor3[stor3.length].field_0,
               stor4,
               stor5,
               stor6,
               stor3[stor3.length].field_0,
               stor3[stor3.length].field_0,
               (35 * ext_call.return_data[0]) - (35 * ext_call.return_data[0] / 10) / 100,
               (60 * ext_call.return_data[0]) - (60 * ext_call.return_data[0] / 10) / 100,
               (5 * ext_call.return_data[0]) - (5 * ext_call.return_data[0] / 10) / 100,
               ext_call.return_data[0] / 10,
               384,
               stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0,
               mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0) + 1408 len 32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0]
    mem[ceil32(return_data.size) + 960] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0
    idx = ceil32(return_data.size) + 960
    s = 0
    while ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0) + 928 > idx:
        mem[idx + 32] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0) + 960] = 32
    idx = 0
    s = ceil32(return_data.size) + 960
    t = ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0) + 1408
    while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 32, stor3.length - 1, 
           stor3[stor3.length].field_0,
           stor4,
           stor5,
           stor6,
           stor3[stor3.length].field_0,
           stor3[stor3.length].field_0,
           (35 * ext_call.return_data[0]) - (35 * ext_call.return_data[0] / 10) / 100, (60 * ext_call.return_data[0]) - (60 * ext_call.return_data[0] / 10) / 100, (5 * ext_call.return_data[0]) - (5 * ext_call.return_data[0] / 10) / 100, ext_call.return_data[0] / 10 >> 768,
           384,
           stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0,
           mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0) + 1408 len 32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0]
}

function sub_e1059fe5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor3.length < 1:
        revert with 0, 17
    if stor3.length - 1 >= stor3.length:
        revert with 0, 50
    if stor3[stor3.length].field_0 > !stor5:
        revert with 0, 17
    if stor3[stor3.length].field_0 + stor5 < stor4:
        revert with 0, 17
    if block.timestamp >= stor3[stor3.length].field_0 + stor5 - stor4:
        revert with 0, 'Outside buy period'
    if not ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please provide at least one number'
    if stor3.length - 1 >= stor3.length:
        revert with 0, 50
    if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0:
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        if stor3[stor3.length].field_0 == -1:
            revert with 0, 17
        stor3[stor3.length].field_0++
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        if uint32(cd[((32 * idx) + cd[4] + 36)]) >= 99999:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'One of the provided numbers is invalid'
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224].field_0++
        stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224][stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224].field_0].field_0 = msg.sender or Mask(96, 160, stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224][stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224].field_0].field_0)
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][cd[((32 * idx) + cd[4] + 36)] << 224].field_0++
        stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][cd[((32 * idx) + cd[4] + 36)] << 224][stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][cd[((32 * idx) + cd[4] + 36)] << 224].field_0].field_0 = msg.sender or Mask(96, 160, stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][cd[((32 * idx) + cd[4] + 36)] << 224][stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][cd[((32 * idx) + cd[4] + 36)] << 224].field_0].field_0)
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        mem[32] = (12 * stor3.length) + sha3(3) - 7
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0++
        stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender][stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_3].field_0 = uint32(cd[((32 * idx) + cd[4] + 36)]) * 256^(4 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0) or stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender][stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_3].field_0 and !(test266151307() * 256^(4 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 7][msg.sender].field_0))
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        stor3[stor3.length].field_0++
        mem[0] = (12 * stor3.length) + sha3(3) - 6
        stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + stor3[stor3.length].field_0].field_0 = msg.sender or Mask(96, 160, stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + stor3[stor3.length].field_0].field_0)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor6 and ('cd', 4).length > -1 / stor6:
        revert with 0, 17
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor6 * ('cd', 4).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function draw() payable {
    if stor3.length < 1:
        revert with 0, 17
    if stor3.length - 1 >= stor3.length:
        revert with 0, 50
    if stor3[stor3.length].field_0 > !stor5:
        revert with 0, 17
    if block.timestamp < stor3[stor3.length].field_0 + stor5:
        revert with 0, 'Deadline not reached yet'
    if stor3.length - 1 >= stor3.length:
        revert with 0, 50
    if not stor3[stor3.length].field_0:
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        stor3[stor3.length].field_0 = block.timestamp
    else:
        if block.number < 1:
            revert with 0, 17
        if block.timestamp > !block.gas_limit:
            revert with 0, 17
        if block.timestamp + block.gas_limit > !block.hash(block.number - 1):
            revert with 0, 17
        if block.timestamp + block.gas_limit + block.hash(block.number - 1) > !msg.sender:
            revert with 0, 17
        if block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender > !block.coinbase:
            revert with 0, 17
        mem[128] = block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase
        mem[96] = 32
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        stor3[stor3.length].field_0 = uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000)
        mem[292] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] / 10:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x750750750750750750750750750750750750750750750750750750750750750:
            revert with 0, 17
        mem[160] = (35 * ext_call.return_data[0]) - (35 * ext_call.return_data[0] / 10) / 100
        if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x444444444444444444444444444444444444444444444444444444444444444:
            revert with 0, 17
        mem[192] = (60 * ext_call.return_data[0]) - (60 * ext_call.return_data[0] / 10) / 100
        if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        mem[224] = (5 * ext_call.return_data[0]) - (5 * ext_call.return_data[0] / 10) / 100
        mem[256] = ext_call.return_data[0] / 10
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        s = (12 * stor3.length) - 5
        idx = 160
        while 288 > idx:
            stor3[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (12 * stor3.length) - 1
        while (12 * stor3.length) - 1 > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
        if stor3.length - 1 >= stor3.length:
            revert with 0, 50
        mem[32] = (12 * stor3.length) + sha3(3) - 9
        mem[64] = ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320
        mem[ceil32(return_data.size) + 288] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
            if stor3.length - 1 >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                mem[32] = (12 * stor3.length) + sha3(3) - 8
                mem[64] = ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 352
                mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if 0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            revert with 0, 18
                        idx = 0
                        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            if idx >= mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320]:
                                revert with 0, 50
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 364 len 20]
                            mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _347 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_347] == bool(mem[_347])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if 0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _371 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_371] == bool(mem[_371])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_393] == bool(mem[_393])
                else:
                    mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 352] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                    idx = ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 352
                    s = 0
                    while ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 320 > idx:
                        mem[idx + 32] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if 0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            revert with 0, 18
                        idx = 0
                        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            if idx >= mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320]:
                                revert with 0, 50
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 364 len 20]
                            mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_594] == bool(mem[_594])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if 0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _649 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_649] == bool(mem[_649])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _691 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_691] == bool(mem[_691])
            else:
                if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                    revert with 0, 18
                idx = 0
                while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                    if idx >= mem[ceil32(return_data.size) + 288]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 332 len 20]
                    mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_345] == bool(mem[_345])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                if 0 > !stor3[stor3.length].field_0:
                    revert with 0, 17
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                mem[0] = uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000)
                mem[32] = (12 * stor3.length) + sha3(3) - 8
                _352 = mem[64]
                mem[64] = mem[64] + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 32
                mem[_352] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_385] == bool(mem[_385])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_403] == bool(mem[_403])
                    else:
                        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            revert with 0, 18
                        idx = 0
                        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            if idx >= mem[_352]:
                                revert with 0, 50
                            mem[mem[64] + 4] = mem[(32 * idx) + _352 + 44 len 20]
                            mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _422 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_422] == bool(mem[_422])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_478] == bool(mem[_478])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 + stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _531 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_531] == bool(mem[_531])
                else:
                    mem[_352 + 32] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                    idx = _352 + 32
                    s = 0
                    while _352 + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) > idx:
                        mem[idx + 32] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_636] == bool(mem[_636])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _681 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_681] == bool(mem[_681])
                    else:
                        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            revert with 0, 18
                        idx = 0
                        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            if idx >= mem[_352]:
                                revert with 0, 50
                            mem[mem[64] + 4] = mem[(32 * idx) + _352 + 44 len 20]
                            mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _729 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_729] == bool(mem[_729])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _769 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_769] == bool(mem[_769])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 + stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _794 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_794] == bool(mem[_794])
        else:
            mem[ceil32(return_data.size) + 320] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
            idx = ceil32(return_data.size) + 320
            s = 0
            while ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 288 > idx:
                mem[idx + 32] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor3.length - 1 >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                mem[32] = (12 * stor3.length) + sha3(3) - 8
                mem[64] = ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 352
                mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if 0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            revert with 0, 18
                        idx = 0
                        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            if idx >= mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320]:
                                revert with 0, 50
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 364 len 20]
                            mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_598] == bool(mem[_598])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if 0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _651 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_651] == bool(mem[_651])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _693 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_693] == bool(mem[_693])
                else:
                    mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 352] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                    idx = ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 352
                    s = 0
                    while ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 320 > idx:
                        mem[idx + 32] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if 0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            revert with 0, 18
                        idx = 0
                        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            if idx >= mem[ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320]:
                                revert with 0, 50
                            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 364 len 20]
                            mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _811 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_811] == bool(mem[_811])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if 0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _840 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_840] == bool(mem[_840])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_860] == bool(mem[_860])
            else:
                if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                    revert with 0, 18
                idx = 0
                while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                    if idx >= mem[ceil32(return_data.size) + 288]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 332 len 20]
                    mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _596 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_596] == bool(mem[_596])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                if 0 > !stor3[stor3.length].field_0:
                    revert with 0, 17
                if stor3.length - 1 >= stor3.length:
                    revert with 0, 50
                mem[0] = uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000)
                mem[32] = (12 * stor3.length) + sha3(3) - 8
                _609 = mem[64]
                mem[64] = mem[64] + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 32
                mem[_609] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _676 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_676] == bool(mem[_676])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_707] == bool(mem[_707])
                    else:
                        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            revert with 0, 18
                        idx = 0
                        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            if idx >= mem[_609]:
                                revert with 0, 50
                            mem[mem[64] + 4] = mem[(32 * idx) + _609 + 44 len 20]
                            mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _731 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_731] == bool(mem[_731])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _770 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_770] == bool(mem[_770])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 + stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _795 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_795] == bool(mem[_795])
                else:
                    mem[_609 + 32] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                    idx = _609 + 32
                    s = 0
                    while _609 + (32 * stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) > idx:
                        mem[idx + 32] = stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    mem[0] = 3
                    if 0 == stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_835] == bool(mem[_835])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _855 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_855] == bool(mem[_855])
                    else:
                        if not stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            revert with 0, 18
                        idx = 0
                        while idx < stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                            if idx >= mem[_609]:
                                revert with 0, 50
                            mem[mem[64] + 4] = mem[(32 * idx) + _609 + 44 len 20]
                            mem[mem[64] + 36] = stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], stor3[stor3.length].field_0 / stor[(12 * stor3.length) + ('name', 'stor3', 3) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _872 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_872] == bool(mem[_872])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if not stor3[stor3.length].field_0:
                            revert with 0, 18
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0 >= stor3[stor3.length].field_0:
                            revert with 0, 50
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        stor3[stor3.length].field_0 = stor[sha3((12 * stor3.length) + ('name', 'stor3', 3) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor3[stor3.length].field_0)].field_0
                        mem[0] = 3
                        mem[mem[64] + 4] = stor3[stor3.length].field_0
                        mem[mem[64] + 36] = stor3[stor3.length].field_0
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor3[stor3.length].field_0, stor3[stor3.length].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _882 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_882] == bool(mem[_882])
                        if stor3.length - 1 >= stor3.length:
                            revert with 0, 50
                        mem[0] = 3
                        if stor3[stor3.length].field_0 + stor3[stor3.length].field_0 > !stor3[stor3.length].field_0:
                            revert with 0, 17
                        mem[mem[64] + 4] = stor1
                        mem[mem[64] + 36] = stor3[stor3.length].field_0 + stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, stor3[stor3.length].field_0 + stor3[stor3.length].field_0 + stor3[stor3.length].field_0 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _887 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_887] == bool(mem[_887])
        stor3.length++
        stor3[stor3.length].field_0 = block.timestamp
        storC257[stor3.length].field_0 = 100000
        storC257[stor3.length].field_24 = 0
}



}
