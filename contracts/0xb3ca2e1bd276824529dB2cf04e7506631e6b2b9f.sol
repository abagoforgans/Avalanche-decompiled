contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
address stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;
array of struct stor62514009886607029107290561805838585334079798074568712924583230797734656856476;

function _fallback() payable {
    revert
}

function setTicketCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2 = arg1
}

function setLockTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg1 >= stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Lock time should be smaller than round duration'
    stor5 = arg1
}

function setRoundDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg1 <= stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Round duration should be greater than lock time'
    stor6 = arg1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Caller is not CFO'
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function currentRound() payable {
    if stor4.length < 1:
        revert with 0, 17
    if stor4.length - 1 >= stor4.length:
        revert with 0, 50
    mem[932] = this.address
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
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
    if stor4.length - 1 >= stor4.length:
        revert with 0, 50
    if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0:
        mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0) + 960] = 32
        idx = 0
        s = ceil32(return_data.size) + 960
        t = ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0) + 1408
        while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 32, stor4.length - 1, 
               stor4[stor4.length].field_0,
               stor5,
               stor6,
               stor2,
               stor4[stor4.length].field_0,
               stor4[stor4.length].field_0,
               (35 * ext_call.return_data[0]) - (35 * ext_call.return_data[0] / 10) / 100,
               (60 * ext_call.return_data[0]) - (60 * ext_call.return_data[0] / 10) / 100,
               (5 * ext_call.return_data[0]) - (5 * ext_call.return_data[0] / 10) / 100,
               ext_call.return_data[0] / 10,
               384,
               stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0,
               mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0) + 1408 len 32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0]
    mem[ceil32(return_data.size) + 960] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0
    idx = ceil32(return_data.size) + 960
    s = 0
    while ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0) + 928 > idx:
        mem[idx + 32] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0) + 960] = 32
    idx = 0
    s = ceil32(return_data.size) + 960
    t = ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0) + 1408
    while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 32, stor4.length - 1, 
           stor4[stor4.length].field_0,
           stor5,
           stor6,
           stor2,
           stor4[stor4.length].field_0,
           stor4[stor4.length].field_0,
           (35 * ext_call.return_data[0]) - (35 * ext_call.return_data[0] / 10) / 100, (60 * ext_call.return_data[0]) - (60 * ext_call.return_data[0] / 10) / 100, (5 * ext_call.return_data[0]) - (5 * ext_call.return_data[0] / 10) / 100, ext_call.return_data[0] / 10 >> 768,
           384,
           stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0,
           mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0) + 1408 len 32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0]
}

function sub_e1059fe5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor4.length < 1:
        revert with 0, 17
    if stor4.length - 1 >= stor4.length:
        revert with 0, 50
    if stor4[stor4.length].field_0 > !stor6:
        revert with 0, 17
    if stor4[stor4.length].field_0 + stor6 < stor5:
        revert with 0, 17
    if block.timestamp >= stor4[stor4.length].field_0 + stor6 - stor5:
        revert with 0, 'Outside buy period'
    if not ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please provide at least one number'
    if stor4.length - 1 >= stor4.length:
        revert with 0, 50
    if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0:
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor4[stor4.length].field_0 == -1:
            revert with 0, 17
        stor4[stor4.length].field_0++
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        if uint32(cd[((32 * idx) + cd[4] + 36)]) >= 99999:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'One of the provided numbers is invalid'
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224].field_0++
        stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224][stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224].field_0].field_0 = msg.sender or Mask(96, 160, stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224][stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(cd[((32 * idx) + cd[4] + 36)]) / 10 << 224].field_0].field_0)
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][cd[((32 * idx) + cd[4] + 36)] << 224].field_0++
        stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][cd[((32 * idx) + cd[4] + 36)] << 224][stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][cd[((32 * idx) + cd[4] + 36)] << 224].field_0].field_0 = msg.sender or Mask(96, 160, stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][cd[((32 * idx) + cd[4] + 36)] << 224][stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][cd[((32 * idx) + cd[4] + 36)] << 224].field_0].field_0)
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        mem[32] = (12 * stor4.length) + sha3(4) - 7
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint32(cd[((32 * idx) + cd[4] + 36)])
        stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0++
        stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender][stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_3].field_0 = !(test266151307() * 256^(4 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0)) and stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender][stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_3].field_0 or 256^(4 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 7][msg.sender].field_0) * uint32(cd[((32 * idx) + cd[4] + 36)])
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        stor4[stor4.length].field_0++
        mem[0] = (12 * stor4.length) + sha3(4) - 6
        stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + stor4[stor4.length].field_0].field_0 = msg.sender or Mask(96, 160, stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + stor4[stor4.length].field_0].field_0)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor2 and ('cd', 4).length > -1 / stor2:
        revert with 0, 17
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor2 * ('cd', 4).length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6d3c4c10(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[384 len 128] = call.data[calldata.size len 128]
    mem[224] = 384
    mem[256] = 0
    mem[288] = 96
    mem[320] = 96
    mem[352] = 96
    if stor4.length < 1:
        revert with 0, 17
    if arg1 >= stor4.length - 1:
        revert with 0, 'Round does not exists'
    mem[512] = stor4[arg1].field_0
    mem[544] = stor4[arg1].field_256
    mem[576] = stor4[arg1].field_1536
    mem[608] = stor4[arg1].field_512
    mem[800] = stor4[arg1].field_1792
    idx = 800
    s = (12 * arg1) + 7
    while 928 > idx + 32:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[640] = 800
    if arg1 >= stor4.length:
        revert with 0, 50
    mem[672] = stor4[arg1].field_2816
    mem[928] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
    if not stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
        mem[704] = 928
        if arg1 >= stor4.length:
            revert with 0, 50
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 960] = stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0
        if not stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0:
            mem[736] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 960
            if arg1 >= stor4.length:
                revert with 0, 50
            mem[32] = (12 * arg1) + sha3(4) + 5
            mem[64] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0
            if not stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0:
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024] = 32
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1056] = stor4[arg1].field_0
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1088] = stor4[arg1].field_256
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1120] = stor4[arg1].field_1536
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1152] = stor4[arg1].field_512
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1184 len 128] = stor4[arg1].field_1792, mem[832 len 96]
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1312] = stor4[arg1].field_2816
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1344] = 384
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1440] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
                idx = 0
                s = 960
                t = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472
                while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1376] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 416
                mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472] = stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0
                idx = 0
                s = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 992
                t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504
                while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1408] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 448
                _160 = mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992]
                mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504] = mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992]
                idx = 0
                s = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024
                t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1536
                while idx < _160:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024
                   len (96 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * _160) + 512
            mem[0] = sha3(msg.sender, (12 * arg1) + sha3(4) + 5)
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0
            idx = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024
            s = 0
            while (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 992 > idx:
                mem[idx + 32] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
            mem[768] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024] = 32
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1056] = stor4[arg1].field_0
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1088] = stor4[arg1].field_256
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1120] = stor4[arg1].field_1536
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1152] = stor4[arg1].field_512
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1184 len 128] = stor4[arg1].field_1792, mem[832 len 96]
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1312] = stor4[arg1].field_2816
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1344] = 384
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1440] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
            idx = 0
            s = 960
            t = mem[64] + 448
            while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1376] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 416
            _161 = mem[mem[736]]
            mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472] = mem[mem[736]]
            idx = 0
            s = mem[736] + 32
            t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504
            while idx < _161:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1408] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * _161) + 448
            _219 = mem[mem[768]]
            mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _161) + 1504] = mem[mem[768]]
            idx = 0
            s = mem[768] + 32
            t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _161) + 1536
            while idx < _219:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _161) + (32 * _219) + -mem[64] + 1536
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 992] = stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0
        idx = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 992
        s = 0
        while (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 960 > idx:
            mem[idx + 32] = stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[736] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 960
        if arg1 >= stor4.length:
            revert with 0, 50
        mem[0] = msg.sender
        mem[32] = (12 * arg1) + sha3(4) + 5
        mem[64] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0
        if not stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0:
            mem[768] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024] = 32
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1056] = stor4[arg1].field_0
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1088] = stor4[arg1].field_256
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1120] = stor4[arg1].field_1536
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1152] = stor4[arg1].field_512
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1184 len 128] = stor4[arg1].field_1792, mem[832 len 96]
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1312] = stor4[arg1].field_2816
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1344] = 384
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1440] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
            idx = 0
            s = 960
            t = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472
            while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1376] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 416
            mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472] = stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0
            idx = 0
            s = mem[736] + 32
            t = mem[64] + (32 * mem[928]) + 480
            while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1408] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 448
            _279 = mem[mem[768]]
            mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504] = mem[mem[768]]
            idx = 0
            s = mem[768] + 32
            t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1536
            while idx < _279:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _279) + -mem[64] + 1536
        mem[0] = sha3(msg.sender, (12 * arg1) + sha3(4) + 5)
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0
        idx = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024
        s = 0
        while (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 992 > idx:
            mem[idx + 32] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[768] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024] = 32
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1056] = stor4[arg1].field_0
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1088] = stor4[arg1].field_256
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1120] = stor4[arg1].field_1536
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1152] = stor4[arg1].field_512
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1184 len 128] = stor4[arg1].field_1792, mem[832 len 96]
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1312] = stor4[arg1].field_2816
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1344] = 384
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1440] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
        idx = 0
        s = 960
        t = mem[64] + 448
        while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1376] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 416
        _280 = mem[mem[736]]
        mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472] = mem[mem[736]]
        idx = 0
        s = mem[736] + 32
        t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504
        while idx < _280:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1408] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * _280) + 448
        _325 = mem[mem[768]]
        mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _280) + 1504] = mem[mem[768]]
        idx = 0
        s = mem[768] + 32
        t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _280) + 1536
        while idx < _325:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _280) + (32 * _325) + -mem[64] + 1536
    mem[960] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
    idx = 960
    s = 0
    while (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 928 > idx:
        mem[idx + 32] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[704] = 928
    if arg1 >= stor4.length:
        revert with 0, 50
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 960] = stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0
    if not stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0:
        mem[736] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 960
        if arg1 >= stor4.length:
            revert with 0, 50
        mem[0] = msg.sender
        mem[32] = (12 * arg1) + sha3(4) + 5
        mem[64] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0
        if not stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0:
            mem[768] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024] = 32
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1056] = stor4[arg1].field_0
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1088] = stor4[arg1].field_256
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1120] = stor4[arg1].field_1536
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1152] = stor4[arg1].field_512
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1184 len 128] = stor4[arg1].field_1792, mem[832 len 96]
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1312] = stor4[arg1].field_2816
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1344] = 384
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1440] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
            idx = 0
            s = 960
            t = mem[64] + 448
            while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1376] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 416
            _222 = mem[mem[736]]
            mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472] = mem[mem[736]]
            idx = 0
            s = mem[736] + 32
            t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504
            while idx < _222:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1408] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * _222) + 448
            _281 = mem[mem[768]]
            mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _222) + 1504] = mem[mem[768]]
            idx = 0
            s = mem[768] + 32
            t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _222) + 1536
            while idx < _281:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _222) + (32 * _281) + -mem[64] + 1536
        mem[0] = sha3(msg.sender, (12 * arg1) + sha3(4) + 5)
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0
        idx = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024
        s = 0
        while (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 992 > idx:
            mem[idx + 32] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
        mem[768] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024] = 32
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1056] = stor4[arg1].field_0
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1088] = stor4[arg1].field_256
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1120] = stor4[arg1].field_1536
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1152] = stor4[arg1].field_512
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1184 len 128] = stor4[arg1].field_1792, mem[832 len 96]
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1312] = stor4[arg1].field_2816
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1344] = 384
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1440] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
        idx = 0
        s = 960
        t = mem[64] + 448
        while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1376] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 416
        _282 = mem[mem[736]]
        mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472] = mem[mem[736]]
        idx = 0
        s = mem[736] + 32
        t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504
        while idx < _282:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1408] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * _282) + 448
        _327 = mem[mem[768]]
        mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _282) + 1504] = mem[mem[768]]
        idx = 0
        s = mem[768] + 32
        t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _282) + 1536
        while idx < _327:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _282) + (32 * _327) + -mem[64] + 1536
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 992] = stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0
    idx = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 992
    s = 0
    while (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 960 > idx:
        mem[idx + 32] = stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[736] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 960
    if arg1 >= stor4.length:
        revert with 0, 50
    mem[0] = msg.sender
    mem[32] = (12 * arg1) + sha3(4) + 5
    mem[64] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0
    if not stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0:
        mem[768] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024] = 32
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1056] = stor4[arg1].field_0
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1088] = stor4[arg1].field_256
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1120] = stor4[arg1].field_1536
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1152] = stor4[arg1].field_512
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1184 len 128] = stor4[arg1].field_1792, mem[832 len 96]
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1312] = stor4[arg1].field_2816
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1344] = 384
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1440] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
        idx = 0
        s = 960
        t = mem[64] + 448
        while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1376] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 416
        _328 = mem[mem[736]]
        mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472] = mem[mem[736]]
        idx = 0
        s = mem[736] + 32
        t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504
        while idx < _328:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1408] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * _328) + 448
        _355 = mem[mem[768]]
        mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _328) + 1504] = mem[mem[768]]
        idx = 0
        s = mem[768] + 32
        t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _328) + 1536
        while idx < _355:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _328) + (32 * _355) + -mem[64] + 1536
    mem[0] = sha3(msg.sender, (12 * arg1) + sha3(4) + 5)
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0
    idx = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 1024
    s = 0
    while (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 992 > idx:
        mem[idx + 32] = stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[768] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + 992
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1024] = 32
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1056] = stor4[arg1].field_0
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1088] = stor4[arg1].field_256
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1120] = stor4[arg1].field_1536
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1152] = stor4[arg1].field_512
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1184 len 128] = stor4[arg1].field_1792, mem[832 len 96]
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1312] = stor4[arg1].field_2816
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1344] = 384
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1440] = stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0
    idx = 0
    s = 960
    t = mem[64] + 448
    while idx < stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1376] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + 416
    _356 = mem[mem[736]]
    mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1472] = mem[mem[736]]
    idx = 0
    s = mem[736] + 32
    t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1504
    while idx < _356:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + 1408] = (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * _356) + 448
    _368 = mem[mem[768]]
    mem[(64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _356) + 1504] = mem[mem[768]]
    idx = 0
    s = mem[768] + 32
    t = (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _356) + 1536
    while idx < _368:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor[(12 * arg1) + ('name', 'stor4', 4) + 3][stor4[arg1].field_256 / 10 << 224].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 4][stor4[arg1].field_256].field_0) + (32 * stor[(12 * arg1) + ('name', 'stor4', 4) + 5][msg.sender].field_0) + (32 * _356) + (32 * _368) + -mem[64] + 1536
}

function draw() payable {
    if stor4.length < 1:
        revert with 0, 17
    else:
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        else:
            if stor4[stor4.length].field_0 > !stor6:
                revert with 0, 17
            else:
                if block.timestamp < stor4[stor4.length].field_0 + stor6:
                    revert with 0, 'Deadline not reached yet'
                else:
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    else:
                        if stor4[stor4.length].field_0:
                            if block.number < 1:
                                revert with 0, 17
                            else:
                                if block.timestamp > !block.gas_limit:
                                    revert with 0, 17
                                else:
                                    if block.timestamp + block.gas_limit > !block.hash(block.number - 1):
                                        revert with 0, 17
                                    else:
                                        if block.timestamp + block.gas_limit + block.hash(block.number - 1) > !msg.sender:
                                            revert with 0, 17
                                        else:
                                            if block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender > !block.coinbase:
                                                revert with 0, 17
                                            else:
                                                mem[128] = block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase
                                                mem[96] = 32
                                                if stor4.length - 1 >= stor4.length:
                                                    revert with 0, 50
                                                else:
                                                    stor4[stor4.length].field_0 = uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000)
                                                    mem[292] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    mem[288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < ext_call.return_data[0] / 10:
                                                            revert with 0, 17
                                                        else:
                                                            if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x750750750750750750750750750750750750750750750750750750750750750:
                                                                revert with 0, 17
                                                            else:
                                                                mem[160] = (35 * ext_call.return_data[0]) - (35 * ext_call.return_data[0] / 10) / 100
                                                                if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x444444444444444444444444444444444444444444444444444444444444444:
                                                                    revert with 0, 17
                                                                else:
                                                                    mem[192] = (60 * ext_call.return_data[0]) - (60 * ext_call.return_data[0] / 10) / 100
                                                                    if ext_call.return_data[0] - (ext_call.return_data[0] / 10) > 0x3333333333333333333333333333333333333333333333333333333333333333:
                                                                        revert with 0, 17
                                                                    else:
                                                                        mem[224] = (5 * ext_call.return_data[0]) - (5 * ext_call.return_data[0] / 10) / 100
                                                                        mem[256] = ext_call.return_data[0] / 10
                                                                        if stor4.length - 1 >= stor4.length:
                                                                            revert with 0, 50
                                                                        else:
                                                                            s = (12 * stor4.length) - 5
                                                                            idx = 160
                                                                            while 288 > idx:
                                                                                stor4[s].field_0 = mem[idx]
                                                                                s = s + 1
                                                                                idx = idx + 32
                                                                                continue 
                                                                            idx = (12 * stor4.length) - 1
                                                                            while (12 * stor4.length) - 1 > idx:
                                                                                stor4[idx].field_0 = 0
                                                                                idx = idx + 1
                                                                                continue 
                                                                            if stor4.length - 1 >= stor4.length:
                                                                                revert with 0, 50
                                                                            else:
                                                                                mem[32] = (12 * stor4.length) + sha3(4) - 9
                                                                                mem[64] = ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320
                                                                                mem[ceil32(return_data.size) + 288] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                                                                                if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[0] = 4
                                                                                        if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0 != 0:
                                                                                            if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                                                                                                revert with 0, 18
                                                                                            else:
                                                                                                idx = 0
                                                                                                while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                                                                                                    if idx >= mem[ceil32(return_data.size) + 288]:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 332 len 20]
                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                                                                                                        require ext_code.size(stor3)
                                                                                                        call stor3.0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _345 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_345] == bool(mem[_345])
                                                                                                            if idx == -1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    if 0 > !stor4[stor4.length].field_0:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                            revert with 0, 50
                                                                                                        else:
                                                                                                            mem[0] = uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000)
                                                                                                            mem[32] = (12 * stor4.length) + sha3(4) - 8
                                                                                                            _352 = mem[64]
                                                                                                            mem[64] = mem[64] + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 32
                                                                                                            mem[_352] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                            if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[0] = 4
                                                                                                                    if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0 != 0:
                                                                                                                        if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            idx = 0
                                                                                                                            while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                                if idx >= mem[_352]:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + _352 + 44 len 20]
                                                                                                                                    mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                    call stor3.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _422 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_422] == bool(mem[_422])
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            continue 
                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if not stor4[stor4.length].field_0:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                                        mem[0] = 4
                                                                                                                                                        mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _478 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_478] == bool(mem[_478])
                                                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                mem[0] = 4
                                                                                                                                                                if stor4[stor4.length].field_0 + stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    mem[mem[64] + 4] = stor1
                                                                                                                                                                    mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                                                    call stor3.0xa9059cbb with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        _531 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        require mem[_531] == bool(mem[_531])
                                                                                                                                                                        stor4.length++
                                                                                                                                                                        stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                                        stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                                        stor8A35[stor4.length].field_24 = 0
                                                                                                                    else:
                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if not stor4[stor4.length].field_0:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                            mem[0] = 4
                                                                                                                                            mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _385 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_385] == bool(mem[_385])
                                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[0] = 4
                                                                                                                                                    if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64] + 4] = stor1
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _403 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_403] == bool(mem[_403])
                                                                                                                                                            stor4.length++
                                                                                                                                                            stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                            stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                            stor8A35[stor4.length].field_24 = 0
                                                                                                            else:
                                                                                                                mem[_352 + 32] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                idx = _352 + 32
                                                                                                                s = 0
                                                                                                                while _352 + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) > idx:
                                                                                                                    mem[idx + 32] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224][s].field_256
                                                                                                                    idx = idx + 32
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[0] = 4
                                                                                                                    if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0 != 0:
                                                                                                                        if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            idx = 0
                                                                                                                            while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                                if idx >= mem[_352]:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + _352 + 44 len 20]
                                                                                                                                    mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                    call stor3.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _729 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_729] == bool(mem[_729])
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            continue 
                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if not stor4[stor4.length].field_0:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                                        mem[0] = 4
                                                                                                                                                        mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _769 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_769] == bool(mem[_769])
                                                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                mem[0] = 4
                                                                                                                                                                if stor4[stor4.length].field_0 + stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    mem[mem[64] + 4] = stor1
                                                                                                                                                                    mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                                                    call stor3.0xa9059cbb with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        _794 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        require mem[_794] == bool(mem[_794])
                                                                                                                                                                        stor4.length++
                                                                                                                                                                        stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                                        stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                                        stor8A35[stor4.length].field_24 = 0
                                                                                                                    else:
                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if not stor4[stor4.length].field_0:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                            mem[0] = 4
                                                                                                                                            mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _636 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_636] == bool(mem[_636])
                                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[0] = 4
                                                                                                                                                    if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64] + 4] = stor1
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _681 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_681] == bool(mem[_681])
                                                                                                                                                            stor4.length++
                                                                                                                                                            stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                            stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                            stor8A35[stor4.length].field_24 = 0
                                                                                        else:
                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                mem[32] = (12 * stor4.length) + sha3(4) - 8
                                                                                                mem[64] = ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 352
                                                                                                mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        mem[0] = 4
                                                                                                        if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0 != 0:
                                                                                                            if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                revert with 0, 18
                                                                                                            else:
                                                                                                                idx = 0
                                                                                                                while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                    if idx >= mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320]:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 364 len 20]
                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _347 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_347] == bool(mem[_347])
                                                                                                                            if idx == -1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                continue 
                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    if 0 > !stor4[stor4.length].field_0:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if not stor4[stor4.length].field_0:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                            mem[0] = 4
                                                                                                                                            mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _371 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_371] == bool(mem[_371])
                                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[0] = 4
                                                                                                                                                    if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64] + 4] = stor1
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _393 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_393] == bool(mem[_393])
                                                                                                                                                            stor4.length++
                                                                                                                                                            stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                            stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                            stor8A35[stor4.length].field_24 = 0
                                                                                                        else:
                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                revert with 0, 50
                                                                                                            else:
                                                                                                                if not stor4[stor4.length].field_0:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                require ext_code.size(stor3)
                                                                                                                                call stor3.0xa9059cbb with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if 0 > !stor4[stor4.length].field_0:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor1, stor4[stor4.length].field_0 / 10
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                                stor4.length++
                                                                                                                                                stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                stor8A35[stor4.length].field_24 = 0
                                                                                                else:
                                                                                                    mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 352] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                    idx = ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 352
                                                                                                    s = 0
                                                                                                    while ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 320 > idx:
                                                                                                        mem[idx + 32] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224][s].field_256
                                                                                                        idx = idx + 32
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        mem[0] = 4
                                                                                                        if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0 != 0:
                                                                                                            if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                revert with 0, 18
                                                                                                            else:
                                                                                                                idx = 0
                                                                                                                while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                    if idx >= mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320]:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 364 len 20]
                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _594 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_594] == bool(mem[_594])
                                                                                                                            if idx == -1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                continue 
                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    if 0 > !stor4[stor4.length].field_0:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if not stor4[stor4.length].field_0:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                            mem[0] = 4
                                                                                                                                            mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _649 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_649] == bool(mem[_649])
                                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[0] = 4
                                                                                                                                                    if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64] + 4] = stor1
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _691 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_691] == bool(mem[_691])
                                                                                                                                                            stor4.length++
                                                                                                                                                            stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                            stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                            stor8A35[stor4.length].field_24 = 0
                                                                                                        else:
                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                revert with 0, 50
                                                                                                            else:
                                                                                                                if not stor4[stor4.length].field_0:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                require ext_code.size(stor3)
                                                                                                                                call stor3.0xa9059cbb with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if 0 > !stor4[stor4.length].field_0:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor1, stor4[stor4.length].field_0 / 10
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                                stor4.length++
                                                                                                                                                stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                stor8A35[stor4.length].field_24 = 0
                                                                                else:
                                                                                    mem[ceil32(return_data.size) + 320] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                                                                                    idx = ceil32(return_data.size) + 320
                                                                                    s = 0
                                                                                    while ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 288 > idx:
                                                                                        mem[idx + 32] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224][s].field_256
                                                                                        idx = idx + 32
                                                                                        s = s + 1
                                                                                        continue 
                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                        revert with 0, 50
                                                                                    else:
                                                                                        mem[0] = 4
                                                                                        if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0 != 0:
                                                                                            if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                                                                                                revert with 0, 18
                                                                                            else:
                                                                                                idx = 0
                                                                                                while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0:
                                                                                                    if idx >= mem[ceil32(return_data.size) + 288]:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 332 len 20]
                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                                                                                                        require ext_code.size(stor3)
                                                                                                        call stor3.0xa9059cbb with:
                                                                                                             gas gas_remaining wei
                                                                                                            args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _596 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_596] == bool(mem[_596])
                                                                                                            if idx == -1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                continue 
                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    if 0 > !stor4[stor4.length].field_0:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                            revert with 0, 50
                                                                                                        else:
                                                                                                            mem[0] = uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000)
                                                                                                            mem[32] = (12 * stor4.length) + sha3(4) - 8
                                                                                                            _609 = mem[64]
                                                                                                            mem[64] = mem[64] + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 32
                                                                                                            mem[_609] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                            if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[0] = 4
                                                                                                                    if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0 != 0:
                                                                                                                        if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            idx = 0
                                                                                                                            while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                                if idx >= mem[_609]:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + _609 + 44 len 20]
                                                                                                                                    mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                    call stor3.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _731 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_731] == bool(mem[_731])
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            continue 
                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if not stor4[stor4.length].field_0:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                                        mem[0] = 4
                                                                                                                                                        mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _770 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_770] == bool(mem[_770])
                                                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                mem[0] = 4
                                                                                                                                                                if stor4[stor4.length].field_0 + stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    mem[mem[64] + 4] = stor1
                                                                                                                                                                    mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                                                    call stor3.0xa9059cbb with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        _795 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        require mem[_795] == bool(mem[_795])
                                                                                                                                                                        stor4.length++
                                                                                                                                                                        stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                                        stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                                        stor8A35[stor4.length].field_24 = 0
                                                                                                                    else:
                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if not stor4[stor4.length].field_0:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                            mem[0] = 4
                                                                                                                                            mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _676 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_676] == bool(mem[_676])
                                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[0] = 4
                                                                                                                                                    if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64] + 4] = stor1
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _707 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_707] == bool(mem[_707])
                                                                                                                                                            stor4.length++
                                                                                                                                                            stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                            stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                            stor8A35[stor4.length].field_24 = 0
                                                                                                            else:
                                                                                                                mem[_609 + 32] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                idx = _609 + 32
                                                                                                                s = 0
                                                                                                                while _609 + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) > idx:
                                                                                                                    mem[idx + 32] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224][s].field_256
                                                                                                                    idx = idx + 32
                                                                                                                    s = s + 1
                                                                                                                    continue 
                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[0] = 4
                                                                                                                    if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0 != 0:
                                                                                                                        if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            idx = 0
                                                                                                                            while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                                if idx >= mem[_609]:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    mem[mem[64] + 4] = mem[(32 * idx) + _609 + 44 len 20]
                                                                                                                                    mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                    call stor3.0xa9059cbb with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _872 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_872] == bool(mem[_872])
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            continue 
                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if not stor4[stor4.length].field_0:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                                revert with 0, 50
                                                                                                                                            else:
                                                                                                                                                if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                                        revert with 0, 50
                                                                                                                                                    else:
                                                                                                                                                        stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                                        mem[0] = 4
                                                                                                                                                        mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _882 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_882] == bool(mem[_882])
                                                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                                                revert with 0, 50
                                                                                                                                                            else:
                                                                                                                                                                mem[0] = 4
                                                                                                                                                                if stor4[stor4.length].field_0 + stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                                    revert with 0, 17
                                                                                                                                                                else:
                                                                                                                                                                    mem[mem[64] + 4] = stor1
                                                                                                                                                                    mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                                                    call stor3.0xa9059cbb with:
                                                                                                                                                                         gas gas_remaining wei
                                                                                                                                                                        args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        _887 = mem[64]
                                                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        require mem[_887] == bool(mem[_887])
                                                                                                                                                                        stor4.length++
                                                                                                                                                                        stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                                        stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                                        stor8A35[stor4.length].field_24 = 0
                                                                                                                    else:
                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if not stor4[stor4.length].field_0:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                            mem[0] = 4
                                                                                                                                            mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _835 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_835] == bool(mem[_835])
                                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[0] = 4
                                                                                                                                                    if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64] + 4] = stor1
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _855 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_855] == bool(mem[_855])
                                                                                                                                                            stor4.length++
                                                                                                                                                            stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                            stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                            stor8A35[stor4.length].field_24 = 0
                                                                                        else:
                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                revert with 0, 50
                                                                                            else:
                                                                                                mem[32] = (12 * stor4.length) + sha3(4) - 8
                                                                                                mem[64] = ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 352
                                                                                                mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        mem[0] = 4
                                                                                                        if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0 != 0:
                                                                                                            if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                revert with 0, 18
                                                                                                            else:
                                                                                                                idx = 0
                                                                                                                while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                    if idx >= mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320]:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 364 len 20]
                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _598 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_598] == bool(mem[_598])
                                                                                                                            if idx == -1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                continue 
                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    if 0 > !stor4[stor4.length].field_0:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if not stor4[stor4.length].field_0:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                            mem[0] = 4
                                                                                                                                            mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _651 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_651] == bool(mem[_651])
                                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[0] = 4
                                                                                                                                                    if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64] + 4] = stor1
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _693 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_693] == bool(mem[_693])
                                                                                                                                                            stor4.length++
                                                                                                                                                            stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                            stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                            stor8A35[stor4.length].field_24 = 0
                                                                                                        else:
                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                revert with 0, 50
                                                                                                            else:
                                                                                                                if not stor4[stor4.length].field_0:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                require ext_code.size(stor3)
                                                                                                                                call stor3.0xa9059cbb with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if 0 > !stor4[stor4.length].field_0:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor1, stor4[stor4.length].field_0 / 10
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                                stor4.length++
                                                                                                                                                stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                stor8A35[stor4.length].field_24 = 0
                                                                                                else:
                                                                                                    mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 352] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                    idx = ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 352
                                                                                                    s = 0
                                                                                                    while ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0) + 320 > idx:
                                                                                                        mem[idx + 32] = stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224][s].field_256
                                                                                                        idx = idx + 32
                                                                                                        s = s + 1
                                                                                                        continue 
                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                        revert with 0, 50
                                                                                                    else:
                                                                                                        mem[0] = 4
                                                                                                        if stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0 != 0:
                                                                                                            if not stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                revert with 0, 18
                                                                                                            else:
                                                                                                                idx = 0
                                                                                                                while idx < stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0:
                                                                                                                    if idx >= mem[ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 320]:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + (32 * stor[(12 * stor4.length) + ('name', 'stor4', 4) - 9][uint32(sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000) / 10 << 224].field_0) + 364 len 20]
                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args mem[mem[64] + 4], stor4[stor4.length].field_0 / stor[(12 * stor4.length) + ('name', 'stor4', 4) - 8][sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % 100000 << 224].field_0
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _811 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_811] == bool(mem[_811])
                                                                                                                            if idx == -1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                continue 
                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    if 0 > !stor4[stor4.length].field_0:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if not stor4[stor4.length].field_0:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                    revert with 0, 50
                                                                                                                                else:
                                                                                                                                    if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if stor4.length - 1 >= stor4.length:
                                                                                                                                            revert with 0, 50
                                                                                                                                        else:
                                                                                                                                            stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                            mem[0] = 4
                                                                                                                                            mem[mem[64] + 4] = stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64] + 36] = stor4[stor4.length].field_0
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _840 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_840] == bool(mem[_840])
                                                                                                                                                if stor4.length - 1 >= stor4.length:
                                                                                                                                                    revert with 0, 50
                                                                                                                                                else:
                                                                                                                                                    mem[0] = 4
                                                                                                                                                    if stor4[stor4.length].field_0 > !stor4[stor4.length].field_0:
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        mem[mem[64] + 4] = stor1
                                                                                                                                                        mem[mem[64] + 36] = stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                                        call stor3.0xa9059cbb with:
                                                                                                                                                             gas gas_remaining wei
                                                                                                                                                            args stor1, stor4[stor4.length].field_0 + stor4[stor4.length].field_0 / 10
                                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            _860 = mem[64]
                                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            require mem[_860] == bool(mem[_860])
                                                                                                                                                            stor4.length++
                                                                                                                                                            stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                            stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                            stor8A35[stor4.length].field_24 = 0
                                                                                                        else:
                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                revert with 0, 50
                                                                                                            else:
                                                                                                                if not stor4[stor4.length].field_0:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                        revert with 0, 50
                                                                                                                    else:
                                                                                                                        if sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0 >= stor4[stor4.length].field_0:
                                                                                                                            revert with 0, 50
                                                                                                                        else:
                                                                                                                            if stor4.length - 1 >= stor4.length:
                                                                                                                                revert with 0, 50
                                                                                                                            else:
                                                                                                                                stor4[stor4.length].field_0 = stor[sha3((12 * stor4.length) + ('name', 'stor4', 4) - 6) + (sha3(block.timestamp + block.gas_limit + block.hash(block.number - 1) + msg.sender + block.coinbase) % stor4[stor4.length].field_0)].field_0
                                                                                                                                require ext_code.size(stor3)
                                                                                                                                call stor3.0xa9059cbb with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args stor4[stor4.length].field_0, stor4[stor4.length].field_0
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                    if stor4.length - 1 >= stor4.length:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        if 0 > !stor4[stor4.length].field_0:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(stor3)
                                                                                                                                            call stor3.0xa9059cbb with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args stor1, stor4[stor4.length].field_0 / 10
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                                stor4.length++
                                                                                                                                                stor4[stor4.length].field_0 = block.timestamp
                                                                                                                                                stor8A35[stor4.length].field_0 = 100000
                                                                                                                                                stor8A35[stor4.length].field_24 = 0
                        else:
                            if stor4.length - 1 >= stor4.length:
                                revert with 0, 50
                            else:
                                stor4[stor4.length].field_0 = block.timestamp
}



}
