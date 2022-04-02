contract main {




// =====================  Runtime code  =====================


address owner;
address wnativeAddress;
address routerAddress;
address gtonAddress;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
uint256 relayTopic;
mapping of uint8 stor9;
mapping of uint8 stor10;

function relayTopic() {
    return relayTopic
}

function wnative() {
    return wnativeAddress
}

function owner() {
    return owner
}

function canRoute(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function gton() {
    return gtonAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setRelayTopic(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    relayTopic = arg1
    emit SetRelayTopic(relayTopic, arg1);
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function setCanRoute(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor9[address(arg1)] = uint8(arg2)
    emit SetCanRoute(msg.sender, arg1, bool(uint8(arg2)));
}

function reclaimNative(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(string arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    stor4[arg1[all]] = arg2
    stor5[arg1[all]] = arg3
    emit SetFees(Array(len=arg1.length, data=arg1[all]), arg2, arg3);
}

function setLimits(string arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    stor6[arg1[all]] = arg2
    stor7[arg1[all]] = arg3
    emit SetLimits(Array(len=arg1.length, data=arg1[all]), arg2, arg3);
}

function setIsAllowedChain(string arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'ACW'
    stor10[arg1[all]] = uint8(arg2)
    emit SetIsAllowedChain(Array(len=arg1.length, data=arg1[all]), arg2);
}

function reclaimERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function feeMin(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor4[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function lowerLimit(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor6[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function upperLimit(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor7[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function feePercent(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor5[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function isAllowedChain(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor10[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function lock(string arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor10[arg1[all]]:
        revert with 0, 'R1'
    if msg.value <= stor6[arg1[all]]:
        revert with 0, 'R2'
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 7
    if msg.value >= stor7[arg1[all]]:
        revert with 0, 'R3'
    require ext_code.size(wnativeAddress)
    call wnativeAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = routerAddress
    mem[132] = msg.value
    require ext_code.size(wnativeAddress)
    call wnativeAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, msg.value
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = wnativeAddress
    mem[ceil32(return_data.size) + 160] = gtonAddress
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = msg.value
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 3600
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args msg.value, 0, 160, address(this.address), block.timestamp + 3600, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _94 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _95 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 < 0 or (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 224 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    require return_data.size >= _94 + (32 * _95) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _95] = mem[ceil32(return_data.size) + _94 + 224 len 32 * _95]
    mem[mem[64] len arg1.length] = arg1[all]
    mem[arg1.length + mem[64]] = 5
    if 1 >= _95:
        revert with 0, 50
    _160 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and stor5[arg1[all]] > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    mem[mem[64] len arg1.length] = arg1[all]
    mem[arg1.length + mem[64]] = 4
    if _160 * stor5[arg1[all]] / 100000 > stor4[arg1[all]]:
        if 1 >= _95:
            revert with 0, 50
        _166 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < _160 * stor5[arg1[all]] / 100000:
            revert with 0, 17
        if 0 >= _95:
            revert with 0, 50
        _172 = mem[(2 * ceil32(return_data.size)) + 224]
        if 1 >= _95:
            revert with 0, 50
        _175 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 64] = stor4[arg1[all]]
        mem[mem[64] + 96] = stor5[arg1[all]]
        mem[mem[64] + 128] = _160 * stor5[arg1[all]] / 100000
        mem[mem[64] + 160] = _166 - (_160 * stor5[arg1[all]] / 100000)
        emit CalculateFee(_172, _175, stor4[arg1[all]], stor5[arg1[all]], _160 * stor5[arg1[all]] / 100000, _166 - (_160 * stor5[arg1[all]] / 100000));
        if _166 - (_160 * stor5[arg1[all]] / 100000) <= 0:
            revert with 0, 'R4'
        mem[mem[64] len arg2.length] = arg2[all]
        mem[arg2.length + mem[64]] = 0
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 0
        _207 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = arg1.length
        mem[mem[64] + 128 len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length + 128] = 0
        mem[mem[64] + 32] = ceil32(arg1.length) + 128
        mem[_207 + ceil32(arg1.length) + 128] = arg2.length
        mem[_207 + ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        mem[_207 + ceil32(arg1.length) + arg2.length + 160] = 0
        mem[_207 + 64] = _166 - (_160 * stor5[arg1[all]] / 100000)
        emit Lock(string rg1, bytes rg2, string rg3, bytes rg4, uint256 rg5):
                  mem[mem[64] len _207 + ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 160],
                  sha3(arg1[all]),
                  sha3(arg2[all]),
    else:
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 4
        if 1 >= _95:
            revert with 0, 50
        _170 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < stor4[arg1[all]]:
            revert with 0, 17
        if 0 >= _95:
            revert with 0, 50
        _177 = mem[(2 * ceil32(return_data.size)) + 224]
        if 1 >= _95:
            revert with 0, 50
        _179 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 64] = stor4[arg1[all]]
        mem[mem[64] + 96] = stor5[arg1[all]]
        mem[mem[64] + 128] = _160 * stor5[arg1[all]] / 100000
        mem[mem[64] + 160] = _170 - stor4[arg1[all]]
        emit CalculateFee(_177, _179, stor4[arg1[all]], stor5[arg1[all]], _160 * stor5[arg1[all]] / 100000, _170 - stor4[arg1[all]]);
        if _170 - stor4[arg1[all]] <= 0:
            revert with 0, 'R4'
        mem[mem[64] len arg2.length] = arg2[all]
        mem[arg2.length + mem[64]] = 0
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 0
        _210 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = arg1.length
        mem[mem[64] + 128 len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length + 128] = 0
        mem[mem[64] + 32] = ceil32(arg1.length) + 128
        mem[_210 + ceil32(arg1.length) + 128] = arg2.length
        mem[_210 + ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        mem[_210 + ceil32(arg1.length) + arg2.length + 160] = 0
        mem[_210 + 64] = _170 - stor4[arg1[all]]
        emit Lock(string rg1, bytes rg2, string rg3, bytes rg4, uint256 rg5):
                  mem[mem[64] len _210 + ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 160],
                  sha3(arg1[all]),
                  sha3(arg2[all]),
}

function routeValue(bytes16 arg1, string arg2, bytes arg3, bytes32 arg4, bytes arg5, bytes arg6, bytes arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == Mask(128, 128, arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 160 < 128 or ceil32(arg2.length) + ceil32(arg3.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg2.length) + 128] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 192 < 160 or ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 192 > test266151307():
        revert with 0, 65
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 192] = 0
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(arg6.length) + 224 < 192 or ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 > test266151307():
        revert with 0, 65
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 192] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 224 len arg6.length] = arg6[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 224] = 0
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    if arg7.length > test266151307():
        revert with 0, 65
    if ceil32(arg7.length) + 256 < 224 or ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256 > test266151307():
        revert with 0, 65
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = arg7.length
    require arg7 + arg7.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 256 len arg7.length] = arg7[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256] = 0
    mem[0] = msg.sender
    mem[32] = 9
    if not stor9[msg.sender]:
        revert with 0, 'ACR'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288] = relayTopic
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 256] = 32
    _12 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 288 len Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 288 len -arg7.length + ceil32(arg7.length)]])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 352] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 320] = 32
    if sha3(arg4) != _12:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256 len ceil32(arg7.length) - arg7.length]
        if ceil32(arg7.length) <= arg7.length:
            _180 = sha3(Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 224 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])]
            if ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]) <= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]:
                _331 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
                    _462 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = Mask(128, 128, arg1)
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = 128
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg2.length + 544] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = ceil32(arg2.length) + 160
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 576 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) <= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                        _462,
                                        _331,
                                        sha3(Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256),
                    else:
                        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 576] = 0
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                        _462,
                                        _331,
                                        _180,
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 384] = 0
                    _475 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = Mask(128, 128, arg1)
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = 128
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg2.length + 544] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = ceil32(arg2.length) + 160
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 576 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 576] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                    emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                    _475,
                                    _331,
                                    _180,
            else:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)] + 384] = 0
                _338 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
                    _465 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = Mask(128, 128, arg1)
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = 128
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg2.length + 544] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = ceil32(arg2.length) + 160
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 576 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 576] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                    emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                    _465,
                                    _338,
                                    _180,
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 384] = 0
                    _478 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = Mask(128, 128, arg1)
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = 128
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg2.length + 544] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = ceil32(arg2.length) + 160
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 576 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 576] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                    emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                    _478,
                                    _338,
                                    _180,
        else:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg7.length + 384] = 0
            _185 = sha3(Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 224 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])]
            if ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]) <= Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]:
                _334 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
                    _468 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = Mask(128, 128, arg1)
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = 128
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg2.length + 544] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = ceil32(arg2.length) + 160
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 576 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) <= Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                        _468,
                                        _334,
                                        sha3(Mask(8 * arg7.length, -(8 * arg7.length) + 256, arg7[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + arg7.length + 256 len ceil32(arg7.length) - arg7.length]) << (8 * arg7.length) - 256),
                    else:
                        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 576] = 0
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                        emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                        _468,
                                        _334,
                                        _185,
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 384] = 0
                    _481 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = Mask(128, 128, arg1)
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = 128
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg2.length + 544] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = ceil32(arg2.length) + 160
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 576 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 576] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                    emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                    _481,
                                    _334,
                                    _185,
            else:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)] + 384] = 0
                _342 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) <= Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
                    _471 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = Mask(128, 128, arg1)
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = 128
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg2.length + 544] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = ceil32(arg2.length) + 160
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 576 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 576] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                    emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                    _471,
                                    _342,
                                    _185,
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + 384] = 0
                    _484 = sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]])
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = Mask(128, 128, arg1)
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 416] = 128
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 512] = arg2.length
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) > arg2.length:
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + arg2.length + 544] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 448] = ceil32(arg2.length) + 160
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 544] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                    mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 576 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
                        mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 576] = 0
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 480] = arg8
                    emit RouteValue(bytes16 rg1, string rg2, bytes rg3, bytes rg4, bytes rg5, bytes rg6, uint256 rg7):
                                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 192],
                                    _484,
                                    _342,
                                    _185,
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 388] = routerAddress
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 420] = arg8
    require ext_code.size(gtonAddress)
    call gtonAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, arg8
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 384] = 2
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 416] = gtonAddress
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 448] = wnativeAddress
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 484] = arg8
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 516] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 548] = 160
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 644] = 2
    idx = 0
    s = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 676
    t = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 416
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 580] = this.address
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 612] = block.timestamp + 3600
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg8, 0, 160, address(this.address), block.timestamp + 3600, 2, mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 676 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + 480
    require return_data.size >= 32
    _188 = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg8) >> 32
    require mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg8) >> 32 <= test266151307()
    require ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg8) >> 32 + 511 < ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + return_data.size + 480
    _190 = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg8) >> 32 + 480]
    if mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg8) >> 32 + 480] > test266151307():
        revert with 0, 65
    if (32 * mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg8) >> 32 + 480]) + 32 < 0 or ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + (32 * mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg8) >> 32 + 480]) + 512 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + (32 * mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + 480 len 4], Mask(224, 32, arg8) >> 32 + 480]) + 512
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + 480] = _190
    require return_data.size >= _188 + (32 * _190) + 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + 512 len 32 * _190] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + ceil32(return_data.size) + _188 + 512 len 32 * _190]
    if 1 >= _190:
        revert with 0, 50
    _328 = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + 544]
    mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _328
    require ext_code.size(wnativeAddress)
    call wnativeAddress.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args _328
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if var126002 < 20:
        if var128001 >= Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)]:
            revert with 0, 50
        if var132002 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if var138001 > !var138002:
            revert with 0, 17
        if var144001 == -1:
            revert with 0, 17
        # nil
    else:
        if 1 >= _190:
            revert with 0, 50
        call address(var126003) with:
           value mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + 544] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= _190:
            revert with 0, 50
        _1139 = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + 512]
        if 1 >= _190:
            revert with 0, 50
        _1141 = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(arg7.length) + (2 * ceil32(return_data.size)) + 544]
        mem[mem[64]] = address(var126003)
        mem[mem[64] + 32] = _1139
        mem[mem[64] + 64] = _1141
        emit DeliverRelay(address(var126003), _1139, _1141);
        _1144 = mem[64]
        _1145 = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)]
        mem[mem[64] len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + ceil32(arg6.length) + 256 len ceil32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + arg6.length + 256 len -arg6.length + ceil32(arg6.length)])]
        if ceil32(_1145) <= _1145:
            _1432 = sha3(mem[mem[64] len _1145])
            _1434 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
            mem[mem[64] len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 224 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])]
            if ceil32(_1434) <= _1434:
                _1717 = sha3(mem[mem[64] len _1434])
                _1718 = mem[64]
                _1722 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
                mem[mem[64] len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                if ceil32(_1722) <= _1722:
                    _1994 = sha3(mem[mem[64] len _1722])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 128] = arg2.length
                    mem[mem[64] + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) <= arg2.length:
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2254 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2254)] = mem[ceil32(arg2.length) + 160 len ceil32(_2254)]
                        if ceil32(_2254) > _2254:
                            mem[ceil32(arg2.length) + mem[64] + _2254 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2254) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _1994, _1717, _1432);
                    else:
                        mem[mem[64] + arg2.length + 160] = 0
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2262 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2262)] = mem[ceil32(arg2.length) + 160 len ceil32(_2262)]
                        if ceil32(_2262) > _2262:
                            mem[ceil32(arg2.length) + mem[64] + _2262 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2262) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _1994, _1717, _1432);
                else:
                    mem[mem[64] + _1722] = 0
                    _2006 = sha3(mem[mem[64] len _1722 + _1718 - mem[64]])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 128] = arg2.length
                    mem[mem[64] + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) <= arg2.length:
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2255 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2255)] = mem[ceil32(arg2.length) + 160 len ceil32(_2255)]
                        if ceil32(_2255) > _2255:
                            mem[ceil32(arg2.length) + mem[64] + _2255 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2255) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2006, _1717, _1432);
                    else:
                        mem[mem[64] + arg2.length + 160] = 0
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2263 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2263)] = mem[ceil32(arg2.length) + 160 len ceil32(_2263)]
                        if ceil32(_2263) > _2263:
                            mem[ceil32(arg2.length) + mem[64] + _2263 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2263) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2006, _1717, _1432);
            else:
                mem[mem[64] + _1434] = 0
                _1724 = sha3(mem[mem[64] len _1434])
                _1725 = mem[64]
                _1730 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
                mem[mem[64] len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                var144001 = ceil32(_1730)
                if ceil32(_1730) <= _1730:
                    _1997 = sha3(mem[mem[64] len _1730])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 128] = arg2.length
                    mem[mem[64] + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) <= arg2.length:
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2256 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2256)] = mem[ceil32(arg2.length) + 160 len ceil32(_2256)]
                        if ceil32(_2256) > _2256:
                            mem[ceil32(arg2.length) + mem[64] + _2256 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2256) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _1997, _1724, _1432);
                    else:
                        mem[mem[64] + arg2.length + 160] = 0
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2264 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2264)] = mem[ceil32(arg2.length) + 160 len ceil32(_2264)]
                        if ceil32(_2264) > _2264:
                            mem[ceil32(arg2.length) + mem[64] + _2264 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2264) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _1997, _1724, _1432);
                else:
                    mem[mem[64] + _1730] = 0
                    _2009 = sha3(mem[mem[64] len _1730 + _1725 - mem[64]])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 128] = arg2.length
                    mem[mem[64] + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) <= arg2.length:
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2257 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2257)] = mem[ceil32(arg2.length) + 160 len ceil32(_2257)]
                        if ceil32(_2257) > _2257:
                            mem[ceil32(arg2.length) + mem[64] + _2257 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2257) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2009, _1724, _1432);
                    else:
                        mem[mem[64] + arg2.length + 160] = 0
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2265 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2265)] = mem[ceil32(arg2.length) + 160 len ceil32(_2265)]
                        if ceil32(_2265) > _2265:
                            mem[ceil32(arg2.length) + mem[64] + _2265 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2265) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2009, _1724, _1432);
        else:
            mem[mem[64] + _1145] = 0
            _1436 = sha3(mem[mem[64] len _1145 + _1144 - mem[64]])
            _1438 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
            mem[mem[64] len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg5.length) + 224 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])]
            if ceil32(_1438) <= _1438:
                _1720 = sha3(mem[mem[64] len _1438])
                _1721 = mem[64]
                _1726 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
                mem[mem[64] len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                var144001 = ceil32(_1726)
                if ceil32(_1726) <= _1726:
                    _2000 = sha3(mem[mem[64] len _1726])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 128] = arg2.length
                    mem[mem[64] + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) <= arg2.length:
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2258 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2258)] = mem[ceil32(arg2.length) + 160 len ceil32(_2258)]
                        if ceil32(_2258) > _2258:
                            mem[ceil32(arg2.length) + mem[64] + _2258 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2258) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2000, _1720, _1436);
                    else:
                        mem[mem[64] + arg2.length + 160] = 0
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2266 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2266)] = mem[ceil32(arg2.length) + 160 len ceil32(_2266)]
                        if ceil32(_2266) > _2266:
                            mem[ceil32(arg2.length) + mem[64] + _2266 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2266) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2000, _1720, _1436);
                else:
                    mem[mem[64] + _1726] = 0
                    _2012 = sha3(mem[mem[64] len _1726 + _1721 - mem[64]])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 128] = arg2.length
                    mem[mem[64] + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) <= arg2.length:
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2259 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2259)] = mem[ceil32(arg2.length) + 160 len ceil32(_2259)]
                        if ceil32(_2259) > _2259:
                            mem[ceil32(arg2.length) + mem[64] + _2259 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2259) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2012, _1720, _1436);
                    else:
                        mem[mem[64] + arg2.length + 160] = 0
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2267 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2267)] = mem[ceil32(arg2.length) + 160 len ceil32(_2267)]
                        if ceil32(_2267) > _2267:
                            mem[ceil32(arg2.length) + mem[64] + _2267 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2267) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2012, _1720, _1436);
            else:
                mem[mem[64] + _1438] = 0
                _1728 = sha3(mem[mem[64] len _1438])
                _1729 = mem[64]
                _1731 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
                mem[mem[64] len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
                if ceil32(_1731) <= _1731:
                    _2003 = sha3(mem[mem[64] len _1731])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 128] = arg2.length
                    mem[mem[64] + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) <= arg2.length:
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2260 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2260)] = mem[ceil32(arg2.length) + 160 len ceil32(_2260)]
                        if ceil32(_2260) > _2260:
                            mem[ceil32(arg2.length) + mem[64] + _2260 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2260) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2003, _1728, _1436);
                    else:
                        mem[mem[64] + arg2.length + 160] = 0
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2268 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2268)] = mem[ceil32(arg2.length) + 160 len ceil32(_2268)]
                        if ceil32(_2268) > _2268:
                            mem[ceil32(arg2.length) + mem[64] + _2268 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2268) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2003, _1728, _1436);
                else:
                    mem[mem[64] + _1731] = 0
                    _2015 = sha3(mem[mem[64] len _1731 + _1729 - mem[64]])
                    mem[mem[64]] = Mask(128, 128, arg1)
                    mem[mem[64] + 32] = 128
                    mem[mem[64] + 128] = arg2.length
                    mem[mem[64] + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
                    if ceil32(arg2.length) <= arg2.length:
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2261 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2261)] = mem[ceil32(arg2.length) + 160 len ceil32(_2261)]
                        if ceil32(_2261) > _2261:
                            mem[ceil32(arg2.length) + mem[64] + _2261 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2261) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2015, _1728, _1436);
                    else:
                        mem[mem[64] + arg2.length + 160] = 0
                        mem[mem[64] + 64] = ceil32(arg2.length) + 160
                        _2269 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 160] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[ceil32(arg2.length) + mem[64] + 192 len ceil32(_2269)] = mem[ceil32(arg2.length) + 160 len ceil32(_2269)]
                        if ceil32(_2269) > _2269:
                            mem[ceil32(arg2.length) + mem[64] + _2269 + 192] = 0
                        mem[mem[64] + 96] = arg8
                        emit RouteValue(Mask(128, 128, arg1), Array(len=arg2.length, data=mem[mem[64] + 160 len ceil32(_2269) + ceil32(arg2.length) + 32]), ceil32(arg2.length) + 160, arg8, _2015, _1728, _1436);
}



}
