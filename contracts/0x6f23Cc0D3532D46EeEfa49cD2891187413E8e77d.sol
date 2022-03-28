contract main {




// =====================  Runtime code  =====================


address pefiAddress;
address adminAddress;
address sub_142e7e3fAddress;
address sub_347380fbAddress;
uint256 stor3;
address fundsReceiverAddress;
uint256 sub_e865ae23;
uint256 sub_170b4eb1;
uint256 sub_2915d5db;
uint256 sub_0a1b8e53;
uint256 sub_c45cc9fa;
uint256 sub_e5546a4f;
uint256 sub_210cc2c7;
uint256 sub_e14b9404;
uint256 sub_f4f78802;
uint256 sub_79cf134a;
array of uint256 sub_81501ee4;
uint256 sub_420fce1c;
mapping of struct sub_fa3cb11f;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of uint8 stor20;
array of address sub_4d2810b4;
array of address sub_2e6b2faf;
array of address sub_1bb1fa5f;

function sub_0a1b8e53(?) {
    return sub_0a1b8e53
}

function sub_142e7e3f(?) {
    return sub_142e7e3fAddress
}

function sub_170b4eb1(?) {
    return sub_170b4eb1
}

function sub_1bb1fa5f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1bb1fa5f.length
    return sub_1bb1fa5f[arg1]
}

function sub_210cc2c7(?) {
    return sub_210cc2c7
}

function fundsReceiver() {
    return fundsReceiverAddress
}

function sub_2915d5db(?) {
    return sub_2915d5db
}

function sub_2e6b2faf(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2e6b2faf.length
    return sub_2e6b2faf[arg1]
}

function sub_347380fb(?) {
    return address(sub_347380fbAddress)
}

function pefi() {
    return pefiAddress
}

function sub_420fce1c(?) {
    return sub_420fce1c
}

function sub_4d2810b4(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4d2810b4.length
    return sub_4d2810b4[arg1]
}

function sub_767a974e(?) {
    return sub_81501ee4.length
}

function sub_79cf134a(?) {
    return sub_79cf134a
}

function sub_81501ee4(?) {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return sub_81501ee4[arg1]
}

function sub_a2d34564(?) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function sub_af740e9f(?) {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function sub_c45cc9fa(?) {
    return sub_c45cc9fa
}

function sub_d53c9c01(?) {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function sub_e14b9404(?) {
    return sub_e14b9404
}

function sub_e5546a4f(?) {
    return sub_e5546a4f
}

function sub_e865ae23(?) {
    return sub_e865ae23
}

function sub_f4f78802(?) {
    return sub_f4f78802
}

function admin() {
    return adminAddress
}

function sub_fa3cb11f(?) {
    require calldata.size - 4 >= 32
    return sub_fa3cb11f[arg1].field_0, sub_fa3cb11f[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_fc948b50(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe596f7520617265206e6f7420617574686f72697a656420746f20646f2074686973,
                    mem[198 len 30]
    sub_2915d5db = arg1
}

function forwardFunds() {
    if block.timestamp < sub_2915d5db:
        revert with 0, 'The event is still ongoing.'
    call fundsReceiverAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(pefiAddress)
    staticcall pefiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pefiAddress)
    call pefiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args fundsReceiverAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f63fdb80(?) payable {
    if block.timestamp >= sub_2915d5db:
        revert with 0, 'The event is over.'
    require ext_code.size(sub_142e7e3fAddress)
    staticcall sub_142e7e3fAddress.0xc3c5a547 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e506c6561736520726567697374657220796f75722050656e6775696e206669727374,
                    mem[199 len 29]
    if msg.value < sub_c45cc9fa:
        revert with 0, 'Under min donation'
    if sub_fa3cb11f[address(msg.sender)].field_256 + msg.value < sub_fa3cb11f[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    sub_fa3cb11f[address(msg.sender)].field_256 += msg.value
    if sub_170b4eb1 + msg.value < sub_170b4eb1:
        revert with 0, 'SafeMath: addition overflow'
    sub_170b4eb1 += msg.value
    emit 0x3e562249: msg.value, msg.sender
    address(sub_347380fbAddress) = msg.sender
    mem[96] = 0
    mem[128] = msg.value
    s = 15
    idx = 96
    while 160 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 17
    while 17 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if sub_79cf134a + 1 < sub_79cf134a:
        revert with 0, 'SafeMath: addition overflow'
    sub_79cf134a++
    if not stor20[address(msg.sender)]:
        if sub_fa3cb11f[address(msg.sender)].field_256 >= sub_210cc2c7:
            stor20[address(msg.sender)] = 1
            sub_4d2810b4.length++
            sub_4d2810b4[sub_4d2810b4.length] = msg.sender
        if not stor19[address(msg.sender)]:
            if sub_fa3cb11f[address(msg.sender)].field_256 >= sub_e5546a4f:
                stor19[address(msg.sender)] = 1
                sub_2e6b2faf.length++
                sub_2e6b2faf[sub_2e6b2faf.length] = msg.sender
            if not stor18[address(msg.sender)]:
                stor18[address(msg.sender)] = 1
                sub_1bb1fa5f.length++
                sub_1bb1fa5f[sub_1bb1fa5f.length] = msg.sender
}

function sub_c598a8c4(?) {
    require calldata.size - 4 >= 32
    if block.timestamp >= sub_2915d5db:
        revert with 0, 'The event is over.'
    require ext_code.size(sub_142e7e3fAddress)
    staticcall sub_142e7e3fAddress.0xc3c5a547 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e506c6561736520726567697374657220796f75722050656e6775696e206669727374,
                    mem[199 len 29]
    if arg1 < sub_0a1b8e53:
        revert with 0, 'Under min donation'
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(pefiAddress)
    call pefiAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_fa3cb11f[address(msg.sender)].field_0 + arg1 < sub_fa3cb11f[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    sub_fa3cb11f[address(msg.sender)].field_0 += arg1
    if sub_e865ae23 + arg1 < sub_e865ae23:
        revert with 0, 'SafeMath: addition overflow'
    sub_e865ae23 += arg1
    emit 0x9810b47a: arg1, msg.sender
    address(sub_347380fbAddress) = msg.sender
    mem[96] = arg1
    mem[128] = 0
    s = 15
    idx = 96
    while 160 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 17
    while 17 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if sub_79cf134a + 1 < sub_79cf134a:
        revert with 0, 'SafeMath: addition overflow'
    sub_79cf134a++
    if not stor20[address(msg.sender)]:
        if sub_fa3cb11f[address(msg.sender)].field_0 >= sub_f4f78802:
            stor20[address(msg.sender)] = 1
            sub_4d2810b4.length++
            sub_4d2810b4[sub_4d2810b4.length] = msg.sender
        if not stor19[address(msg.sender)]:
            if sub_fa3cb11f[address(msg.sender)].field_0 >= sub_e14b9404:
                stor19[address(msg.sender)] = 1
                sub_2e6b2faf.length++
                sub_2e6b2faf[sub_2e6b2faf.length] = msg.sender
            if not stor18[address(msg.sender)]:
                stor18[address(msg.sender)] = 1
                sub_1bb1fa5f.length++
                sub_1bb1fa5f[sub_1bb1fa5f.length] = msg.sender
}

function sub_803b0f8a(?) {
    mem[96] = 0xecd0159500000000000000000000000000000000000000000000000000000000
    mem[100] = address(sub_347380fbAddress)
    require ext_code.size(sub_142e7e3fAddress)
    staticcall sub_142e7e3fAddress.0xecd01595 with:
            gas gas_remaining wei
           args address(sub_347380fbAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 0, stor3)
    require mem[96 len 4], Mask(224, 0, stor3) <= 4294967296
    require mem[96 len 4], Mask(224, 0, stor3) + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 0, stor3) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor3) + mem[mem[96 len 4], Mask(224, 0, stor3) + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor3) + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _7 % 32:
        mem[64] = _7 + ceil32(return_data.size) + 128
        mem[_7 + ceil32(return_data.size) + 128] = 32
        mem[_7 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_7 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_7 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _7 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_7 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_7) + ceil32(return_data.size) + 128] = mem[floor32(_7) + ceil32(return_data.size) + -(_7 % 32) + 160 len _7 % 32]
    mem[64] = floor32(_7) + ceil32(return_data.size) + 160
    mem[floor32(_7) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_7) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_7) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_7) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_7) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_7) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}



}
