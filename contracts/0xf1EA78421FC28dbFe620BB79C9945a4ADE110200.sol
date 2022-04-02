contract main {




// =====================  Runtime code  =====================


address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
mapping of uint256 storemanFee;
mapping of uint256 stor15;
mapping of uint256 stor16;
uint256 lockedTime;
uint256 smgFeeReceiverTimeout;
uint8 stor19;
address owner; offset 8
uint256 stor19; offset 8
uint8 halted; offset 160
uint128 stor20; offset 160
address newOwner;
mapping of uint256 stor99;

function getStoremanFee(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return storemanFee[arg1]
}

function owner() {
    return owner
}

function lockedTime() {
    return lockedTime
}

function halted() {
    return bool(halted)
}

function newOwner() {
    return newOwner
}

function smgFeeReceiverTimeout() {
    return smgFeeReceiverTimeout
}

function _fallback() payable {
    revert
}

function getPartners() {
    return stor10, stor11, stor12, stor9, stor13
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    owner = 0
}

function acceptOwnership() {
    if msg.sender == newOwner:
        Mask(248, 0, stor19.field_8) = newOwner
}

function getFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return stor15[arg1][arg2], stor16[arg1][arg2]
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    newOwner = arg1
}

function setLockedTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    lockedTime = arg1
}

function setHalt(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor20 = Mask(96, 0, arg1)
}

function setWithdrawFeeTimeout(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    smgFeeReceiverTimeout = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor15[arg1][arg2] = arg3
    stor16[arg1][arg2] = arg4
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getLeftLockedTime(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x574d446cdf628f9a8b8b244a1483f77584940dcb)
    delegate 0x574d446cdf628f9a8b8b244a1483f77584940dcb.0xa8cee80d with:
         gas gas_remaining wei
        args 5, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function setPartners(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'Parameter is invalid'
    if not arg2:
        revert with 0, 'Parameter is invalid'
    if not arg5:
        revert with 0, 'Parameter is invalid'
    stor11 = arg2
    stor10 = arg1
    stor9 = arg4
    stor12 = arg3
    stor13 = arg5
}

function userLock(bytes32 arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if halted:
        revert with 0, 'Smart contract is halted'
    require ext_code.size(stor11)
    call stor11.getStoremanGroupStatus(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[31 len 1] != 5:
        revert with 0, 'PK is not ready'
    if block.timestamp < ext_call.return_data[32]:
        revert with 0, 'PK is not ready'
    if block.timestamp > ext_call.return_data[64]:
        revert with 0, 'PK is not ready'
    mem[ceil32(return_data.size) + 384 len arg4.length] = arg4[all]
    mem[ceil32(return_data.size) + ceil32(arg4.length) + 384] = 0xa7d07f7500000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
    delegate 0xfe631743eef5418103738d41d8221423e675b249.0xa7d07f75 with:
         gas gas_remaining wei
        args 5, 64, arg1, arg2, arg3, 128, arg4.length, arg4[all], mem[ceil32(return_data.size) + arg4.length + 384 len ceil32(arg4.length) - arg4.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function userBurn(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, bytes arg6) payable {
    require calldata.size - 4 >= 192
    require arg6 <= test266151307()
    require calldata.size > arg6 + 35
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if halted:
        revert with 0, 'Smart contract is halted'
    require ext_code.size(stor11)
    call stor11.getStoremanGroupStatus(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[31 len 1] != 5:
        revert with 0, 'PK is not ready'
    if block.timestamp < ext_call.return_data[32]:
        revert with 0, 'PK is not ready'
    if block.timestamp > ext_call.return_data[64]:
        revert with 0, 'PK is not ready'
    mem[ceil32(return_data.size) + 512 len arg6.length] = arg6[all]
    mem[ceil32(return_data.size) + ceil32(arg6.length) + 512] = 0x87c66fb00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
    delegate 0xfe631743eef5418103738d41d8221423e675b249.0x87c66fb with:
         gas gas_remaining wei
        args 5, 64, arg1, arg2, arg3, arg4, address(arg5), 192, arg6.length, arg6[all], mem[ceil32(return_data.size) + arg6.length + 512 len ceil32(arg6.length) - arg6.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function delUintValue(bytes arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Not owner'
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 0
    _21 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = _21
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = 0
}

function setUintValue(bytes arg1, bytes arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Not owner'
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 0
    _21 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = _21
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = arg3
}

function getUintValue(bytes arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 0
    _21 = sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = _21
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
}

function smgWithdrawFee(bytes32 arg1, uint256 arg2, address arg3, bytes arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not uint8(stor19.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor19.field_0) = 0
    if smgFeeReceiverTimeout + arg2 < arg2:
        revert with 0, 'SafeMath add overflow'
    if block.timestamp >= smgFeeReceiverTimeout + arg2:
        revert with 0, 'The receiver address expired'
    if storemanFee[arg1] <= 0:
        revert with 0, 'Fee is null'
    mem[0] = arg1
    mem[32] = 14
    storemanFee[arg1] = 0
    call arg3 with:
       value storemanFee[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0x44cefb6900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor11)
    call stor11.getStoremanGroupConfig(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 352
    _20 = mem[256]
    _22 = mem[320]
    require mem[320] <= test266151307()
    require return_data.size + 96 > mem[320] + 127
    _23 = mem[mem[320] + 96]
    require mem[mem[320] + 96] <= test266151307()
    require ceil32(mem[mem[320] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[320] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[320] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _23
    require _22 + _23 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_23)] = mem[_22 + 128 len ceil32(_23)]
    if ceil32(_23) <= _23:
        _207 = mem[352]
        require mem[352] <= test266151307()
        require return_data.size + 96 > mem[352] + 127
        _209 = mem[mem[352] + 96]
        require mem[mem[352] + 96] <= test266151307()
        _211 = mem[64]
        require mem[64] + ceil32(mem[mem[352] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[352] + 96]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[352] + 96]) + 32
        mem[_211] = _209
        require _207 + _209 + 32 <= return_data.size
        mem[_211 + 32 len ceil32(_209)] = mem[_207 + 128 len ceil32(_209)]
        if ceil32(_209) <= _209:
            _401 = mem[64]
            mem[64] = mem[64] + 64
            mem[_401] = 7
            mem[0] = arg1
            mem[_401 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _404 = mem[64]
            mem[64] = mem[64] + 64
            mem[_404] = 7
            mem[0] = arg1
            mem[_404 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _725 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg2
            mem[mem[64] + 96] = arg3
            _729 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _731 = mem[_729]
            mem[_725 + 128 len floor32(mem[_729])] = mem[_729 + 32 len floor32(mem[_729])]
            mem[_725 + floor32(mem[_729]) + 128] = 256^(-(mem[_729] % 32) + 32) - 1 and mem[_725 + floor32(mem[_729]) + 128] or mem[_729 + floor32(mem[_729]) + 32] and !(256^(-(mem[_729] % 32) + 32) - 1)
            hash = sha256hash(mem[_725 + 128 len _731]) 
            mem[_725 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_725 + ceil32(return_data.size) + 128] = arg4.length
            mem[_725 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _20, arg5, mem[ceil32(return_data.size) + 128], mem[ceil32(return_data.size) + 160], mem[_725 + ceil32(return_data.size) + 160], mem[_725 + ceil32(return_data.size) + 192], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_209 + _211 + 32] = 0
            _407 = mem[64]
            mem[64] = mem[64] + 64
            mem[_407] = 7
            mem[0] = arg1
            mem[_407 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _410 = mem[64]
            mem[64] = mem[64] + 64
            mem[_410] = 7
            mem[0] = arg1
            mem[_410 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _726 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg2
            mem[mem[64] + 96] = arg3
            _732 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _734 = mem[_732]
            mem[mem[64] len floor32(mem[_732])] = mem[_732 + 32 len floor32(mem[_732])]
            mem[mem[64] + floor32(mem[_732])] = 256^(-(mem[_732] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_732])] or mem[_732 + floor32(mem[_732]) + 32] and !(256^(-(mem[_732] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _726 + _734 + -mem[64] + 128]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _834 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _838 = mem[_834]
            _842 = mem[64]
            mem[64] = mem[64] + ceil32(arg4.length) + 32
            mem[_842] = arg4.length
            mem[_842 + 32 len arg4.length] = arg4[all]
            _846 = mem[ceil32(return_data.size) + 128]
            _850 = mem[ceil32(return_data.size) + 160]
            _854 = mem[_842 + 32]
            _858 = mem[_842 + 64]
            mem[mem[64] + 4] = _20
            mem[mem[64] + 36] = arg5
            mem[mem[64] + 68] = _846
            mem[mem[64] + 100] = _850
            mem[mem[64] + 132] = _854
            mem[mem[64] + 164] = _858
            mem[mem[64] + 196] = _838
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _20, arg5, _846, _850, _854, _858, _838
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _870 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_870]:
                revert with 0, 'Signature verification failed'
    else:
        mem[_23 + ceil32(return_data.size) + 128] = 0
        _208 = mem[352]
        require mem[352] <= test266151307()
        require return_data.size + 96 > mem[352] + 127
        _210 = mem[mem[352] + 96]
        require mem[mem[352] + 96] <= test266151307()
        _212 = mem[64]
        require mem[64] + ceil32(mem[mem[352] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[352] + 96]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[352] + 96]) + 32
        mem[_212] = _210
        require _208 + _210 + 32 <= return_data.size
        mem[_212 + 32 len ceil32(_210)] = mem[_208 + 128 len ceil32(_210)]
        if ceil32(_210) <= _210:
            _413 = mem[64]
            mem[64] = mem[64] + 64
            mem[_413] = 7
            mem[0] = arg1
            mem[_413 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _416 = mem[64]
            mem[64] = mem[64] + 64
            mem[_416] = 7
            mem[0] = arg1
            mem[_416 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _727 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg2
            mem[mem[64] + 96] = arg3
            _735 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _737 = mem[_735]
            mem[_727 + 128 len floor32(mem[_735])] = mem[_735 + 32 len floor32(mem[_735])]
            mem[_727 + floor32(mem[_735]) + 128] = 256^(-(mem[_735] % 32) + 32) - 1 and mem[_727 + floor32(mem[_735]) + 128] or mem[_735 + floor32(mem[_735]) + 32] and !(256^(-(mem[_735] % 32) + 32) - 1)
            hash = sha256hash(mem[_727 + 128 len _737]) 
            mem[_727 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_727 + ceil32(return_data.size) + 128] = arg4.length
            mem[_727 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _20, arg5, mem[ceil32(return_data.size) + 128], mem[ceil32(return_data.size) + 160], mem[_727 + ceil32(return_data.size) + 160], mem[_727 + ceil32(return_data.size) + 192], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_210 + _212 + 32] = 0
            _419 = mem[64]
            mem[64] = mem[64] + 64
            mem[_419] = 7
            mem[0] = arg1
            mem[_419 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _422 = mem[64]
            mem[64] = mem[64] + 64
            mem[_422] = 7
            mem[0] = arg1
            mem[_422 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _728 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg2
            mem[mem[64] + 96] = arg3
            _738 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _740 = mem[_738]
            mem[mem[64] len floor32(mem[_738])] = mem[_738 + 32 len floor32(mem[_738])]
            mem[mem[64] + floor32(mem[_738])] = 256^(-(mem[_738] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_738])] or mem[_738 + floor32(mem[_738]) + 32] and !(256^(-(mem[_738] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _728 + _740 + -mem[64] + 128]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _836 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _840 = mem[_836]
            _844 = mem[64]
            mem[64] = mem[64] + ceil32(arg4.length) + 32
            mem[_844] = arg4.length
            mem[_844 + 32 len arg4.length] = arg4[all]
            _848 = mem[ceil32(return_data.size) + 128]
            _852 = mem[ceil32(return_data.size) + 160]
            _856 = mem[_844 + 32]
            _860 = mem[_844 + 64]
            mem[mem[64] + 4] = _20
            mem[mem[64] + 36] = arg5
            mem[mem[64] + 68] = _848
            mem[mem[64] + 100] = _852
            mem[mem[64] + 132] = _856
            mem[mem[64] + 164] = _860
            mem[mem[64] + 196] = _840
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _20, arg5, _848, _852, _856, _860, _840
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _872 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_872]:
                revert with 0, 'Signature verification failed'
    emit SmgWithdrawFeeLogger(block.timestamp, storemanFee[arg1], arg1, arg3);
    uint8(stor19.field_0) = 1
}

function receiveDebt(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    if halted:
        revert with 0, 'Smart contract is halted'
    mem[192] = 0x44cefb6900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    require ext_code.size(stor11)
    call stor11.getStoremanGroupConfig(bytes32 rg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    _8 = uint32(arg3), mem[228 len 28]
    _12 = mem[352]
    _14 = mem[416]
    require mem[416] <= test266151307()
    require return_data.size + 192 > mem[416] + 223
    _15 = mem[mem[416] + 192]
    require mem[mem[416] + 192] <= test266151307()
    require ceil32(mem[mem[416] + 192]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[416] + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[416] + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[416] + 192]
    require _14 + _15 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(_15)] = mem[_14 + 224 len ceil32(_15)]
    if ceil32(_15) <= _15:
        _223 = mem[448]
        require mem[448] <= test266151307()
        require return_data.size + 192 > mem[448] + 223
        _225 = mem[mem[448] + 192]
        require mem[mem[448] + 192] <= test266151307()
        _227 = mem[64]
        require mem[64] + ceil32(mem[mem[448] + 192]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[448] + 192]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[448] + 192]) + 32
        mem[_227] = mem[mem[448] + 192]
        require _223 + _225 + 32 <= return_data.size
        mem[_227 + 32 len ceil32(_225)] = mem[_223 + 224 len ceil32(_225)]
        if ceil32(_225) <= _225:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[480]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[512]:
                revert with 0, 'PK is not ready'
            _469 = mem[64]
            mem[64] = mem[64] + 96
            mem[_469] = arg1
            mem[_469 + 32] = arg2
            mem[_469 + 64] = arg3
            mem[mem[64]] = 0x14f790c800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd)
            delegate 0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd.0x14f790c8 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _505 = mem[64]
            mem[64] = mem[64] + 64
            mem[_505] = 7
            _506 = mem[0]
            mem[_505 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _508 = mem[64]
            mem[64] = mem[64] + 64
            mem[_508] = 7
            mem[0] = _506
            mem[_508 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _813 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg2
            _817 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _819 = mem[_817]
            mem[_813 + 128 len floor32(mem[_817])] = mem[_817 + 32 len floor32(mem[_817])]
            mem[_813 + floor32(mem[_817]) + 128] = 256^(-(mem[_817] % 32) + 32) - 1 and mem[_813 + floor32(mem[_817]) + 128] or mem[_817 + floor32(mem[_817]) + 32] and !(256^(-(mem[_817] % 32) + 32) - 1)
            hash = sha256hash(mem[_813 + 128 len _819]) 
            mem[_813 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_813 + ceil32(return_data.size) + 128] = arg4.length
            mem[_813 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg5, mem[ceil32(return_data.size) + 224], mem[ceil32(return_data.size) + 256], mem[_813 + ceil32(return_data.size) + 160], mem[_813 + ceil32(return_data.size) + 192], hash
        else:
            mem[_225 + _227 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[480]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[512]:
                revert with 0, 'PK is not ready'
            _471 = mem[64]
            mem[64] = mem[64] + 96
            mem[_471] = arg1
            mem[_471 + 32] = arg2
            mem[_471 + 64] = arg3
            mem[mem[64]] = 0x14f790c800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd)
            delegate 0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd.0x14f790c8 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _511 = mem[64]
            mem[64] = mem[64] + 64
            mem[_511] = 7
            _512 = mem[0]
            mem[_511 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _514 = mem[64]
            mem[64] = mem[64] + 64
            mem[_514] = 7
            mem[0] = _512
            mem[_514 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _814 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, 0, ('name', 'stor0', 0) % 72057594037927936)]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg2
            _820 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _822 = mem[_820]
            mem[_814 + 128 len floor32(mem[_820])] = mem[_820 + 32 len floor32(mem[_820])]
            mem[_814 + floor32(mem[_820]) + 128] = 256^(-(mem[_820] % 32) + 32) - 1 and mem[_814 + floor32(mem[_820]) + 128] or mem[_820 + floor32(mem[_820]) + 32] and !(256^(-(mem[_820] % 32) + 32) - 1)
            hash = sha256hash(mem[_814 + 128 len _822]) 
            mem[_814 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_814 + ceil32(return_data.size) + 128] = arg4.length
            mem[_814 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg5, mem[ceil32(return_data.size) + 224], mem[ceil32(return_data.size) + 256], mem[_814 + ceil32(return_data.size) + 160], mem[_814 + ceil32(return_data.size) + 192], hash
    else:
        mem[_15 + ceil32(return_data.size) + 224] = 0
        _224 = mem[448]
        require mem[448] <= test266151307()
        require return_data.size + 192 > mem[448] + 223
        _226 = mem[mem[448] + 192]
        require mem[mem[448] + 192] <= test266151307()
        _228 = mem[64]
        require mem[64] + ceil32(mem[mem[448] + 192]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[448] + 192]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[448] + 192]) + 32
        mem[_228] = mem[mem[448] + 192]
        require _224 + _226 + 32 <= return_data.size
        mem[_228 + 32 len ceil32(_226)] = mem[_224 + 224 len ceil32(_226)]
        if ceil32(_226) <= _226:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[480]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[512]:
                revert with 0, 'PK is not ready'
            _473 = mem[64]
            mem[64] = mem[64] + 96
            mem[_473] = arg1
            mem[_473 + 32] = arg2
            mem[_473 + 64] = arg3
            mem[mem[64]] = 0x14f790c800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd)
            delegate 0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd.0x14f790c8 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _517 = mem[64]
            mem[64] = mem[64] + 64
            mem[_517] = 7
            _518 = mem[0]
            mem[_517 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _520 = mem[64]
            mem[64] = mem[64] + 64
            mem[_520] = 7
            mem[0] = _518
            mem[_520 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _815 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg2
            _823 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _825 = mem[_823]
            mem[_815 + 128 len floor32(mem[_823])] = mem[_823 + 32 len floor32(mem[_823])]
            mem[_815 + floor32(mem[_823]) + 128] = 256^(-(mem[_823] % 32) + 32) - 1 and mem[_815 + floor32(mem[_823]) + 128] or mem[_823 + floor32(mem[_823]) + 32] and !(256^(-(mem[_823] % 32) + 32) - 1)
            hash = sha256hash(mem[_815 + 128 len _825]) 
            mem[_815 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_815 + ceil32(return_data.size) + 128] = arg4.length
            mem[_815 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg5, mem[ceil32(return_data.size) + 224], mem[ceil32(return_data.size) + 256], mem[_815 + ceil32(return_data.size) + 160], mem[_815 + ceil32(return_data.size) + 192], hash
        else:
            mem[_226 + _228 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[480]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[512]:
                revert with 0, 'PK is not ready'
            _475 = mem[64]
            mem[64] = mem[64] + 96
            mem[_475] = arg1
            mem[_475 + 32] = arg2
            mem[_475 + 64] = arg3
            mem[mem[64]] = 0x14f790c800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd)
            delegate 0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd.0x14f790c8 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _523 = mem[64]
            mem[64] = mem[64] + 64
            mem[_523] = 7
            _524 = mem[0]
            mem[_523 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _526 = mem[64]
            mem[64] = mem[64] + 64
            mem[_526] = 7
            mem[0] = _524
            mem[_526 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _816 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg2
            _826 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _828 = mem[_826]
            mem[_816 + 128 len floor32(mem[_826])] = mem[_826 + 32 len floor32(mem[_826])]
            mem[_816 + floor32(mem[_826]) + 128] = 256^(-(mem[_826] % 32) + 32) - 1 and mem[_816 + floor32(mem[_826]) + 128] or mem[_826 + floor32(mem[_826]) + 32] and !(256^(-(mem[_826] % 32) + 32) - 1)
            hash = sha256hash(mem[_816 + 128 len _828]) 
            mem[_816 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_816 + ceil32(return_data.size) + 128] = arg4.length
            mem[_816 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg5, mem[ceil32(return_data.size) + 224], mem[ceil32(return_data.size) + 256], mem[_816 + ceil32(return_data.size) + 160], mem[_816 + ceil32(return_data.size) + 192], hash
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Signature verification failed'
}

function transferAsset(bytes32 arg1, bytes32 arg2, bytes32 arg3, bytes arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    if halted:
        revert with 0, 'Smart contract is halted'
    require ext_code.size(stor11)
    call stor11.getStoremanGroupStatus(bytes32 rg1) with:
         gas gas_remaining wei
        args arg3
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[31 len 1] != 5:
        revert with 0, 'PK is not ready'
    if block.timestamp < ext_call.return_data[32]:
        revert with 0, 'PK is not ready'
    if block.timestamp > ext_call.return_data[64]:
        revert with 0, 'PK is not ready'
    mem[ceil32(return_data.size) + 192] = 0x44cefb6900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    require ext_code.size(stor11)
    call stor11.getStoremanGroupConfig(bytes32 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 352
    _20 = uint32(arg2), mem[ceil32(return_data.size) + 228 len 28]
    _24 = mem[ceil32(return_data.size) + 352]
    _26 = mem[ceil32(return_data.size) + 416]
    require mem[ceil32(return_data.size) + 416] <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 223
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 192]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 192] <= test266151307()
    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 192]) + 224 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = _27
    require _26 + _27 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(_27)] = mem[ceil32(return_data.size) + _26 + 224 len ceil32(_27)]
    if ceil32(_27) > _27:
        mem[_27 + (2 * ceil32(return_data.size)) + 224] = 0
        _212 = mem[ceil32(return_data.size) + 448]
        require mem[ceil32(return_data.size) + 448] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 223
        _214 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192] <= test266151307()
        _216 = mem[64]
        require mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32
        mem[_216] = _214
        require _212 + _214 + 32 <= return_data.size
        mem[_216 + 32 len ceil32(_214)] = mem[ceil32(return_data.size) + _212 + 224 len ceil32(_214)]
        if ceil32(_214) <= _214:
            if uint8(_20) != 6:
                revert with 0, 'PK is not unregistered'
            _437 = mem[64]
            mem[64] = mem[64] + 96
            mem[_437] = arg1
            mem[_437 + 32] = arg2
            mem[_437 + 64] = arg3
            mem[mem[64]] = 0x2cd63b3300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd)
            delegate 0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd.0x2cd63b33 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _473 = mem[64]
            mem[64] = mem[64] + 64
            mem[_473] = 7
            _474 = mem[0]
            mem[_473 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _476 = mem[64]
            mem[64] = mem[64] + 64
            mem[_476] = 7
            mem[0] = _474
            mem[_476 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _771 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            _779 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _781 = mem[_779]
            mem[_771 + 128 len floor32(mem[_779])] = mem[_779 + 32 len floor32(mem[_779])]
            mem[_771 + floor32(mem[_779]) + 128] = 256^(-(mem[_779] % 32) + 32) - 1 and mem[_771 + floor32(mem[_779]) + 128] or mem[_779 + floor32(mem[_779]) + 32] and !(256^(-(mem[_779] % 32) + 32) - 1)
            hash = sha256hash(mem[_771 + 128 len _781]) 
            mem[_771 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_771 + ceil32(return_data.size) + 128] = arg4.length
            mem[_771 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _24, arg5, mem[(2 * ceil32(return_data.size)) + 224], mem[(2 * ceil32(return_data.size)) + 256], mem[_771 + ceil32(return_data.size) + 160], mem[_771 + ceil32(return_data.size) + 192], hash
        else:
            mem[_214 + _216 + 32] = 0
            if uint8(_20) != 6:
                revert with 0, 'PK is not unregistered'
            _439 = mem[64]
            mem[64] = mem[64] + 96
            mem[_439] = arg1
            mem[_439 + 32] = arg2
            mem[_439 + 64] = arg3
            mem[mem[64]] = 0x2cd63b3300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd)
            delegate 0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd.0x2cd63b33 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _479 = mem[64]
            mem[64] = mem[64] + 64
            mem[_479] = 7
            _480 = mem[0]
            mem[_479 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _482 = mem[64]
            mem[64] = mem[64] + 64
            mem[_482] = 7
            mem[0] = _480
            mem[_482 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _772 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            _782 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _784 = mem[_782]
            mem[_772 + 128 len floor32(mem[_782])] = mem[_782 + 32 len floor32(mem[_782])]
            mem[_772 + floor32(mem[_782]) + 128] = 256^(-(mem[_782] % 32) + 32) - 1 and mem[_772 + floor32(mem[_782]) + 128] or mem[_782 + floor32(mem[_782]) + 32] and !(256^(-(mem[_782] % 32) + 32) - 1)
            hash = sha256hash(mem[_772 + 128 len _784]) 
            mem[_772 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_772 + ceil32(return_data.size) + 128] = arg4.length
            mem[_772 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _24, arg5, mem[(2 * ceil32(return_data.size)) + 224], mem[(2 * ceil32(return_data.size)) + 256], mem[_772 + ceil32(return_data.size) + 160], mem[_772 + ceil32(return_data.size) + 192], hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Signature verification failed'
    else:
        _211 = mem[ceil32(return_data.size) + 448]
        require mem[ceil32(return_data.size) + 448] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 223
        _213 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192] <= test266151307()
        _215 = mem[64]
        require mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32
        mem[_215] = _213
        require _211 + _213 + 32 <= return_data.size
        mem[_215 + 32 len ceil32(_213)] = mem[ceil32(return_data.size) + _211 + 224 len ceil32(_213)]
        if ceil32(_213) <= _213:
            if uint8(_20) != 6:
                revert with 0, 'PK is not unregistered'
            _433 = mem[64]
            mem[64] = mem[64] + 96
            mem[_433] = arg1
            mem[_433 + 32] = arg2
            mem[_433 + 64] = arg3
            mem[mem[64]] = 0x2cd63b3300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd)
            delegate 0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd.0x2cd63b33 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _461 = mem[64]
            mem[64] = mem[64] + 64
            mem[_461] = 7
            _462 = mem[0]
            mem[_461 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _464 = mem[64]
            mem[64] = mem[64] + 64
            mem[_464] = 7
            mem[0] = _462
            mem[_464 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _769 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            _773 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _775 = mem[_773]
            mem[_769 + 128 len floor32(mem[_773])] = mem[_773 + 32 len floor32(mem[_773])]
            mem[_769 + floor32(mem[_773]) + 128] = 256^(-(mem[_773] % 32) + 32) - 1 and mem[_769 + floor32(mem[_773]) + 128] or mem[_773 + floor32(mem[_773]) + 32] and !(256^(-(mem[_773] % 32) + 32) - 1)
            hash = sha256hash(mem[_769 + 128 len _775]) 
            mem[_769 + 128] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_769 + ceil32(return_data.size) + 128] = arg4.length
            mem[_769 + ceil32(return_data.size) + 160 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _24, arg5, mem[(2 * ceil32(return_data.size)) + 224], mem[(2 * ceil32(return_data.size)) + 256], mem[_769 + ceil32(return_data.size) + 160], mem[_769 + ceil32(return_data.size) + 192], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_213 + _215 + 32] = 0
            if uint8(_20) != 6:
                revert with 0, 'PK is not unregistered'
            _435 = mem[64]
            mem[64] = mem[64] + 96
            mem[_435] = arg1
            mem[_435 + 32] = arg2
            mem[_435 + 64] = arg3
            mem[mem[64]] = 0x2cd63b3300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd)
            delegate 0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd.0x2cd63b33 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _467 = mem[64]
            mem[64] = mem[64] + 64
            mem[_467] = 7
            _468 = mem[0]
            mem[_467 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _470 = mem[64]
            mem[64] = mem[64] + 64
            mem[_470] = 7
            mem[0] = _468
            mem[_470 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _770 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, 0, ('name', 'stor0', 0) % 72057594037927936)]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            _776 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _778 = mem[_776]
            mem[mem[64] len floor32(mem[_776])] = mem[_776 + 32 len floor32(mem[_776])]
            mem[mem[64] + floor32(mem[_776])] = 256^(-(mem[_776] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_776])] or mem[_776 + floor32(mem[_776]) + 32] and !(256^(-(mem[_776] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _770 + _778 + -mem[64] + 128]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _870 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _874 = mem[_870]
            _878 = mem[64]
            mem[64] = mem[64] + ceil32(arg4.length) + 32
            mem[_878] = arg4.length
            mem[_878 + 32 len arg4.length] = arg4[all]
            _882 = mem[(2 * ceil32(return_data.size)) + 224]
            _886 = mem[(2 * ceil32(return_data.size)) + 256]
            _890 = mem[_878 + 32]
            _894 = mem[_878 + 64]
            mem[mem[64] + 4] = _24
            mem[mem[64] + 36] = arg5
            mem[mem[64] + 68] = _882
            mem[mem[64] + 100] = _886
            mem[mem[64] + 132] = _890
            mem[mem[64] + 164] = _894
            mem[mem[64] + 196] = _874
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _24, arg5, _882, _886, _890, _894, _874
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _906 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_906]:
                revert with 0, 'Signature verification failed'
}

function smgMint(bytes32 arg1, bytes32 arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, bytes arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    require arg7 <= test266151307()
    require calldata.size > arg7 + 35
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    if halted:
        revert with 0, 'Smart contract is halted'
    mem[288] = 0x44cefb6900000000000000000000000000000000000000000000000000000000
    mem[292] = arg2
    require ext_code.size(stor11)
    call stor11.getStoremanGroupConfig(bytes32 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    _8 = uint32(arg2), mem[324 len 28]
    _12 = mem[448]
    _14 = mem[512]
    require mem[512] <= test266151307()
    require return_data.size + 288 > mem[512] + 319
    _15 = mem[mem[512] + 288]
    require mem[mem[512] + 288] <= test266151307()
    require ceil32(mem[mem[512] + 288]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[512] + 288]) + 320 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[512] + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[512] + 288]
    require _14 + _15 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_15)] = mem[_14 + 320 len ceil32(_15)]
    if ceil32(_15) <= _15:
        _207 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 288 > mem[544] + 319
        _209 = mem[mem[544] + 288]
        require mem[mem[544] + 288] <= test266151307()
        _211 = mem[64]
        require mem[64] + ceil32(mem[mem[544] + 288]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[544] + 288]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[544] + 288]) + 32
        mem[_211] = mem[mem[544] + 288]
        require _207 + _209 + 32 <= return_data.size
        mem[_211 + 32 len ceil32(_209)] = mem[_207 + 320 len ceil32(_209)]
        if ceil32(_209) <= _209:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _465 = mem[64]
            mem[64] = mem[64] + 192
            mem[_465] = arg1
            mem[_465 + 32] = arg2
            mem[_465 + 64] = arg3
            mem[_465 + 96] = arg4
            mem[_465 + 128] = arg5
            mem[_465 + 160] = arg6
            mem[mem[64]] = 0x674377e400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
            delegate 0xfe631743eef5418103738d41d8221423e675b249.0x674377e4 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _513 = mem[64]
            mem[64] = mem[64] + 64
            mem[_513] = 7
            _514 = mem[0]
            mem[_513 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _516 = mem[64]
            mem[64] = mem[64] + 64
            mem[_516] = 7
            mem[0] = _514
            mem[_516 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _821 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            mem[mem[64] + 128] = arg4
            mem[mem[64] + 160] = arg5
            mem[mem[64] + 192] = arg6
            _825 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            _827 = mem[_825]
            mem[mem[64] len floor32(mem[_825])] = mem[_825 + 32 len floor32(mem[_825])]
            mem[mem[64] + floor32(mem[_825])] = 256^(-(mem[_825] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_825])] or mem[_825 + floor32(mem[_825]) + 32] and !(256^(-(mem[_825] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _821 + _827 + -mem[64] + 224]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _921 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _925 = mem[_921]
            _929 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_929] = arg7.length
            mem[_929 + 32 len arg7.length] = arg7[all]
            _933 = mem[ceil32(return_data.size) + 320]
            _937 = mem[ceil32(return_data.size) + 352]
            _941 = mem[_929 + 32]
            _945 = mem[_929 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _933
            mem[mem[64] + 100] = _937
            mem[mem[64] + 132] = _941
            mem[mem[64] + 164] = _945
            mem[mem[64] + 196] = _925
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg8, _933, _937, _941, _945, _925
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _957 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_957]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_209 + _211 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _467 = mem[64]
            mem[64] = mem[64] + 192
            mem[_467] = arg1
            mem[_467 + 32] = arg2
            mem[_467 + 64] = arg3
            mem[_467 + 96] = arg4
            mem[_467 + 128] = arg5
            mem[_467 + 160] = arg6
            mem[mem[64]] = 0x674377e400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
            delegate 0xfe631743eef5418103738d41d8221423e675b249.0x674377e4 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _519 = mem[64]
            mem[64] = mem[64] + 64
            mem[_519] = 7
            _520 = mem[0]
            mem[_519 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _522 = mem[64]
            mem[64] = mem[64] + 64
            mem[_522] = 7
            mem[0] = _520
            mem[_522 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _822 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            mem[mem[64] + 128] = arg4
            mem[mem[64] + 160] = arg5
            mem[mem[64] + 192] = arg6
            _828 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            _830 = mem[_828]
            mem[mem[64] len floor32(mem[_828])] = mem[_828 + 32 len floor32(mem[_828])]
            mem[mem[64] + floor32(mem[_828])] = 256^(-(mem[_828] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_828])] or mem[_828 + floor32(mem[_828]) + 32] and !(256^(-(mem[_828] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _822 + _830 + -mem[64] + 224]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _922 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _926 = mem[_922]
            _930 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_930] = arg7.length
            mem[_930 + 32 len arg7.length] = arg7[all]
            _934 = mem[ceil32(return_data.size) + 320]
            _938 = mem[ceil32(return_data.size) + 352]
            _942 = mem[_930 + 32]
            _946 = mem[_930 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _934
            mem[mem[64] + 100] = _938
            mem[mem[64] + 132] = _942
            mem[mem[64] + 164] = _946
            mem[mem[64] + 196] = _926
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg8, _934, _938, _942, _946, _926
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _958 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_958]:
                revert with 0, 'Signature verification failed'
    else:
        mem[_15 + ceil32(return_data.size) + 320] = 0
        _208 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 288 > mem[544] + 319
        _210 = mem[mem[544] + 288]
        require mem[mem[544] + 288] <= test266151307()
        _212 = mem[64]
        require mem[64] + ceil32(mem[mem[544] + 288]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[544] + 288]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[544] + 288]) + 32
        mem[_212] = mem[mem[544] + 288]
        require _208 + _210 + 32 <= return_data.size
        mem[_212 + 32 len ceil32(_210)] = mem[_208 + 320 len ceil32(_210)]
        if ceil32(_210) <= _210:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _469 = mem[64]
            mem[64] = mem[64] + 192
            mem[_469] = arg1
            mem[_469 + 32] = arg2
            mem[_469 + 64] = arg3
            mem[_469 + 96] = arg4
            mem[_469 + 128] = arg5
            mem[_469 + 160] = arg6
            mem[mem[64]] = 0x674377e400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
            delegate 0xfe631743eef5418103738d41d8221423e675b249.0x674377e4 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[64] = mem[64] + 64
            mem[_525] = 7
            _526 = mem[0]
            mem[_525 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _528 = mem[64]
            mem[64] = mem[64] + 64
            mem[_528] = 7
            mem[0] = _526
            mem[_528 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _823 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            mem[mem[64] + 128] = arg4
            mem[mem[64] + 160] = arg5
            mem[mem[64] + 192] = arg6
            _831 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            _833 = mem[_831]
            mem[mem[64] len floor32(mem[_831])] = mem[_831 + 32 len floor32(mem[_831])]
            mem[mem[64] + floor32(mem[_831])] = 256^(-(mem[_831] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_831])] or mem[_831 + floor32(mem[_831]) + 32] and !(256^(-(mem[_831] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _823 + _833 + -mem[64] + 224]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _927 = mem[_923]
            _931 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_931] = arg7.length
            mem[_931 + 32 len arg7.length] = arg7[all]
            _935 = mem[ceil32(return_data.size) + 320]
            _939 = mem[ceil32(return_data.size) + 352]
            _943 = mem[_931 + 32]
            _947 = mem[_931 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _935
            mem[mem[64] + 100] = _939
            mem[mem[64] + 132] = _943
            mem[mem[64] + 164] = _947
            mem[mem[64] + 196] = _927
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg8, _935, _939, _943, _947, _927
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _959 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_959]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_210 + _212 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _471 = mem[64]
            mem[64] = mem[64] + 192
            mem[_471] = arg1
            mem[_471 + 32] = arg2
            mem[_471 + 64] = arg3
            mem[_471 + 96] = arg4
            mem[_471 + 128] = arg5
            mem[_471 + 160] = arg6
            mem[mem[64]] = 0x674377e400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
            delegate 0xfe631743eef5418103738d41d8221423e675b249.0x674377e4 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _531 = mem[64]
            mem[64] = mem[64] + 64
            mem[_531] = 7
            _532 = mem[0]
            mem[_531 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _534 = mem[64]
            mem[64] = mem[64] + 64
            mem[_534] = 7
            mem[0] = _532
            mem[_534 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _824 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            mem[mem[64] + 128] = arg4
            mem[mem[64] + 160] = arg5
            mem[mem[64] + 192] = arg6
            _834 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            _836 = mem[_834]
            mem[mem[64] len floor32(mem[_834])] = mem[_834 + 32 len floor32(mem[_834])]
            mem[mem[64] + floor32(mem[_834])] = 256^(-(mem[_834] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_834])] or mem[_834 + floor32(mem[_834]) + 32] and !(256^(-(mem[_834] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _824 + _836 + -mem[64] + 224]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _928 = mem[_924]
            _932 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_932] = arg7.length
            mem[_932 + 32 len arg7.length] = arg7[all]
            _936 = mem[ceil32(return_data.size) + 320]
            _940 = mem[ceil32(return_data.size) + 352]
            _944 = mem[_932 + 32]
            _948 = mem[_932 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _936
            mem[mem[64] + 100] = _940
            mem[mem[64] + 132] = _944
            mem[mem[64] + 164] = _948
            mem[mem[64] + 196] = _928
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg8, _936, _940, _944, _948, _928
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _960 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_960]:
                revert with 0, 'Signature verification failed'
}

function smgRelease(bytes32 arg1, bytes32 arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, bytes arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    require arg7 <= test266151307()
    require calldata.size > arg7 + 35
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    if halted:
        revert with 0, 'Smart contract is halted'
    mem[288] = 0x44cefb6900000000000000000000000000000000000000000000000000000000
    mem[292] = arg2
    require ext_code.size(stor11)
    call stor11.getStoremanGroupConfig(bytes32 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    _8 = uint32(arg2), mem[324 len 28]
    _12 = mem[448]
    _14 = mem[512]
    require mem[512] <= test266151307()
    require return_data.size + 288 > mem[512] + 319
    _15 = mem[mem[512] + 288]
    require mem[mem[512] + 288] <= test266151307()
    require ceil32(mem[mem[512] + 288]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[512] + 288]) + 320 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[512] + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[512] + 288]
    require _14 + _15 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_15)] = mem[_14 + 320 len ceil32(_15)]
    if ceil32(_15) <= _15:
        _207 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 288 > mem[544] + 319
        _209 = mem[mem[544] + 288]
        require mem[mem[544] + 288] <= test266151307()
        _211 = mem[64]
        require mem[64] + ceil32(mem[mem[544] + 288]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[544] + 288]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[544] + 288]) + 32
        mem[_211] = mem[mem[544] + 288]
        require _207 + _209 + 32 <= return_data.size
        mem[_211 + 32 len ceil32(_209)] = mem[_207 + 320 len ceil32(_209)]
        if ceil32(_209) <= _209:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _465 = mem[64]
            mem[64] = mem[64] + 192
            mem[_465] = arg1
            mem[_465 + 32] = arg2
            mem[_465 + 64] = arg3
            mem[_465 + 96] = arg4
            mem[_465 + 128] = arg5
            mem[_465 + 160] = arg6
            mem[mem[64]] = 0x9331851b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
            delegate 0xfe631743eef5418103738d41d8221423e675b249.0x9331851b with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _513 = mem[64]
            mem[64] = mem[64] + 64
            mem[_513] = 7
            _514 = mem[0]
            mem[_513 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _516 = mem[64]
            mem[64] = mem[64] + 64
            mem[_516] = 7
            mem[0] = _514
            mem[_516 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _821 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            mem[mem[64] + 128] = arg4
            mem[mem[64] + 160] = arg5
            mem[mem[64] + 192] = arg6
            _825 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            _827 = mem[_825]
            mem[mem[64] len floor32(mem[_825])] = mem[_825 + 32 len floor32(mem[_825])]
            mem[mem[64] + floor32(mem[_825])] = 256^(-(mem[_825] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_825])] or mem[_825 + floor32(mem[_825]) + 32] and !(256^(-(mem[_825] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _821 + _827 + -mem[64] + 224]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _921 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _925 = mem[_921]
            _929 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_929] = arg7.length
            mem[_929 + 32 len arg7.length] = arg7[all]
            _933 = mem[ceil32(return_data.size) + 320]
            _937 = mem[ceil32(return_data.size) + 352]
            _941 = mem[_929 + 32]
            _945 = mem[_929 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _933
            mem[mem[64] + 100] = _937
            mem[mem[64] + 132] = _941
            mem[mem[64] + 164] = _945
            mem[mem[64] + 196] = _925
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg8, _933, _937, _941, _945, _925
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _957 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_957]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_209 + _211 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _467 = mem[64]
            mem[64] = mem[64] + 192
            mem[_467] = arg1
            mem[_467 + 32] = arg2
            mem[_467 + 64] = arg3
            mem[_467 + 96] = arg4
            mem[_467 + 128] = arg5
            mem[_467 + 160] = arg6
            mem[mem[64]] = 0x9331851b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
            delegate 0xfe631743eef5418103738d41d8221423e675b249.0x9331851b with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _519 = mem[64]
            mem[64] = mem[64] + 64
            mem[_519] = 7
            _520 = mem[0]
            mem[_519 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _522 = mem[64]
            mem[64] = mem[64] + 64
            mem[_522] = 7
            mem[0] = _520
            mem[_522 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _822 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            mem[mem[64] + 128] = arg4
            mem[mem[64] + 160] = arg5
            mem[mem[64] + 192] = arg6
            _828 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            _830 = mem[_828]
            mem[mem[64] len floor32(mem[_828])] = mem[_828 + 32 len floor32(mem[_828])]
            mem[mem[64] + floor32(mem[_828])] = 256^(-(mem[_828] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_828])] or mem[_828 + floor32(mem[_828]) + 32] and !(256^(-(mem[_828] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _822 + _830 + -mem[64] + 224]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _922 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _926 = mem[_922]
            _930 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_930] = arg7.length
            mem[_930 + 32 len arg7.length] = arg7[all]
            _934 = mem[ceil32(return_data.size) + 320]
            _938 = mem[ceil32(return_data.size) + 352]
            _942 = mem[_930 + 32]
            _946 = mem[_930 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _934
            mem[mem[64] + 100] = _938
            mem[mem[64] + 132] = _942
            mem[mem[64] + 164] = _946
            mem[mem[64] + 196] = _926
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg8, _934, _938, _942, _946, _926
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _958 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_958]:
                revert with 0, 'Signature verification failed'
    else:
        mem[_15 + ceil32(return_data.size) + 320] = 0
        _208 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 288 > mem[544] + 319
        _210 = mem[mem[544] + 288]
        require mem[mem[544] + 288] <= test266151307()
        _212 = mem[64]
        require mem[64] + ceil32(mem[mem[544] + 288]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[544] + 288]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[544] + 288]) + 32
        mem[_212] = mem[mem[544] + 288]
        require _208 + _210 + 32 <= return_data.size
        mem[_212 + 32 len ceil32(_210)] = mem[_208 + 320 len ceil32(_210)]
        if ceil32(_210) <= _210:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _469 = mem[64]
            mem[64] = mem[64] + 192
            mem[_469] = arg1
            mem[_469 + 32] = arg2
            mem[_469 + 64] = arg3
            mem[_469 + 96] = arg4
            mem[_469 + 128] = arg5
            mem[_469 + 160] = arg6
            mem[mem[64]] = 0x9331851b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
            delegate 0xfe631743eef5418103738d41d8221423e675b249.0x9331851b with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _525 = mem[64]
            mem[64] = mem[64] + 64
            mem[_525] = 7
            _526 = mem[0]
            mem[_525 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _528 = mem[64]
            mem[64] = mem[64] + 64
            mem[_528] = 7
            mem[0] = _526
            mem[_528 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            _823 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            mem[mem[64] + 128] = arg4
            mem[mem[64] + 160] = arg5
            mem[mem[64] + 192] = arg6
            _831 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            _833 = mem[_831]
            mem[mem[64] len floor32(mem[_831])] = mem[_831 + 32 len floor32(mem[_831])]
            mem[mem[64] + floor32(mem[_831])] = 256^(-(mem[_831] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_831])] or mem[_831 + floor32(mem[_831]) + 32] and !(256^(-(mem[_831] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _823 + _833 + -mem[64] + 224]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _927 = mem[_923]
            _931 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_931] = arg7.length
            mem[_931 + 32 len arg7.length] = arg7[all]
            _935 = mem[ceil32(return_data.size) + 320]
            _939 = mem[ceil32(return_data.size) + 352]
            _943 = mem[_931 + 32]
            _947 = mem[_931 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _935
            mem[mem[64] + 100] = _939
            mem[mem[64] + 132] = _943
            mem[mem[64] + 164] = _947
            mem[mem[64] + 196] = _927
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg8, _935, _939, _943, _947, _927
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _959 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_959]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_210 + _212 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _471 = mem[64]
            mem[64] = mem[64] + 192
            mem[_471] = arg1
            mem[_471 + 32] = arg2
            mem[_471 + 64] = arg3
            mem[_471 + 96] = arg4
            mem[_471 + 128] = arg5
            mem[_471 + 160] = arg6
            mem[mem[64]] = 0x9331851b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xfe631743eef5418103738d41d8221423e675b249)
            delegate 0xfe631743eef5418103738d41d8221423e675b249.0x9331851b with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _531 = mem[64]
            mem[64] = mem[64] + 64
            mem[_531] = 7
            _532 = mem[0]
            mem[_531 + 32] = 0x63757272656e74000000000000000000000000000000000000000000000000
            _534 = mem[64]
            mem[64] = mem[64] + 64
            mem[_534] = 7
            mem[0] = _532
            mem[_534 + 32] = 0x636861696e4944000000000000000000000000000000000000000000000000
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = None
            mem[mem[64] len 0] = 0
            _824 = mem[64]
            mem[mem[64] + 32] = stor[sha3(0, 0, ('name', 'stor0', 0))]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = arg3
            mem[mem[64] + 128] = arg4
            mem[mem[64] + 160] = arg5
            mem[mem[64] + 192] = arg6
            _834 = mem[64]
            mem[mem[64]] = 192
            mem[64] = mem[64] + 224
            _836 = mem[_834]
            mem[mem[64] len floor32(mem[_834])] = mem[_834 + 32 len floor32(mem[_834])]
            mem[mem[64] + floor32(mem[_834])] = 256^(-(mem[_834] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_834])] or mem[_834 + floor32(mem[_834]) + 32] and !(256^(-(mem[_834] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _824 + _836 + -mem[64] + 224]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _928 = mem[_924]
            _932 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_932] = arg7.length
            mem[_932 + 32 len arg7.length] = arg7[all]
            _936 = mem[ceil32(return_data.size) + 320]
            _940 = mem[ceil32(return_data.size) + 352]
            _944 = mem[_932 + 32]
            _948 = mem[_932 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _936
            mem[mem[64] + 100] = _940
            mem[mem[64] + 132] = _944
            mem[mem[64] + 164] = _948
            mem[mem[64] + 196] = _928
            require ext_code.size(stor13)
            call stor13.verify(uint256 rg1, bytes32 rg2, bytes32 rg3, bytes32 rg4, bytes32 rg5, bytes32 rg6, bytes32 rg7) with:
                 gas gas_remaining wei
                args _12, arg8, _936, _940, _944, _948, _928
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _960 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_960]:
                revert with 0, 'Signature verification failed'
}



}
