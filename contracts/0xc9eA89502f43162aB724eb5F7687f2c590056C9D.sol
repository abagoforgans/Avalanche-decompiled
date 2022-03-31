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
uint8 stor20; offset 160
uint128 stor20; offset 160
address newOwner;

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
    return bool(uint8(stor20.field_160))
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

function setWithdrawFeeTimeout(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    smgFeeReceiverTimeout = arg1
}

function setHalt(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    Mask(96, 0, stor20.field_160) = Mask(96, 0, arg1)
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
    require ext_code.size(0x3a0e4388bab1bb7564bc2f76dc2f962a71339d3e)
    delegate 0x3a0e4388bab1bb7564bc2f76dc2f962a71339d3e.0xa8cee80d with:
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
    if not arg4:
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
    if uint8(stor20.field_160):
        revert with 0, 'Smart contract is halted'
    require ext_code.size(stor11)
    call stor11.0x95e8d68a with:
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
    require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
    delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0xa7d07f75 with:
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
    if uint8(stor20.field_160):
        revert with 0, 'Smart contract is halted'
    require ext_code.size(stor11)
    call stor11.0x95e8d68a with:
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
    require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
    delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x87c66fb with:
         gas gas_remaining wei
        args 5, 64, arg1, arg2, arg3, arg4, address(arg5), 192, arg6.length, arg6[all], mem[ceil32(return_data.size) + arg6.length + 512 len ceil32(arg6.length) - arg6.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
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
    call stor11.0x44cefb69 with:
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
        _135 = mem[352]
        require mem[352] <= test266151307()
        require return_data.size + 96 > mem[352] + 127
        _137 = mem[mem[352] + 96]
        require mem[mem[352] + 96] <= test266151307()
        _139 = mem[64]
        require mem[64] + ceil32(mem[mem[352] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[352] + 96]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[352] + 96]) + 32
        mem[_139] = _137
        require _135 + _137 + 32 <= return_data.size
        mem[_139 + 32 len ceil32(_137)] = mem[_135 + 128 len ceil32(_137)]
        if ceil32(_137) <= _137:
            _253 = mem[64]
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg3
            _257 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _259 = mem[_257]
            mem[_253 + 96 len floor32(mem[_257])] = mem[_257 + 32 len floor32(mem[_257])]
            mem[_253 + floor32(mem[_257]) + 96] = 256^(-(mem[_257] % 32) + 32) - 1 and mem[_253 + floor32(mem[_257]) + 96] or mem[_257 + floor32(mem[_257]) + 32] and !(256^(-(mem[_257] % 32) + 32) - 1)
            hash = sha256hash(mem[_253 + 96 len _259]) 
            mem[_253 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_253 + ceil32(return_data.size) + 96] = arg4.length
            mem[_253 + ceil32(return_data.size) + 128 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _20, arg5, mem[ceil32(return_data.size) + 128], mem[ceil32(return_data.size) + 160], mem[_253 + ceil32(return_data.size) + 128], mem[_253 + ceil32(return_data.size) + 160], hash
        else:
            mem[_137 + _139 + 32] = 0
            _254 = mem[64]
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg3
            _260 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _262 = mem[_260]
            mem[_254 + 96 len floor32(mem[_260])] = mem[_260 + 32 len floor32(mem[_260])]
            mem[_254 + floor32(mem[_260]) + 96] = 256^(-(mem[_260] % 32) + 32) - 1 and mem[_254 + floor32(mem[_260]) + 96] or mem[_260 + floor32(mem[_260]) + 32] and !(256^(-(mem[_260] % 32) + 32) - 1)
            hash = sha256hash(mem[_254 + 96 len _262]) 
            mem[_254 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_254 + ceil32(return_data.size) + 96] = arg4.length
            mem[_254 + ceil32(return_data.size) + 128 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _20, arg5, mem[ceil32(return_data.size) + 128], mem[ceil32(return_data.size) + 160], mem[_254 + ceil32(return_data.size) + 128], mem[_254 + ceil32(return_data.size) + 160], hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Signature verification failed'
    else:
        mem[_23 + ceil32(return_data.size) + 128] = 0
        _136 = mem[352]
        require mem[352] <= test266151307()
        require return_data.size + 96 > mem[352] + 127
        _138 = mem[mem[352] + 96]
        require mem[mem[352] + 96] <= test266151307()
        _140 = mem[64]
        require mem[64] + ceil32(mem[mem[352] + 96]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[352] + 96]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[352] + 96]) + 32
        mem[_140] = _138
        require _136 + _138 + 32 <= return_data.size
        mem[_140 + 32 len ceil32(_138)] = mem[_136 + 128 len ceil32(_138)]
        if ceil32(_138) <= _138:
            _255 = mem[64]
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg3
            _263 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _265 = mem[_263]
            mem[_255 + 96 len floor32(mem[_263])] = mem[_263 + 32 len floor32(mem[_263])]
            mem[_255 + floor32(mem[_263]) + 96] = 256^(-(mem[_263] % 32) + 32) - 1 and mem[_255 + floor32(mem[_263]) + 96] or mem[_263 + floor32(mem[_263]) + 32] and !(256^(-(mem[_263] % 32) + 32) - 1)
            hash = sha256hash(mem[_255 + 96 len _265]) 
            mem[_255 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_255 + ceil32(return_data.size) + 96] = arg4.length
            mem[_255 + ceil32(return_data.size) + 128 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _20, arg5, mem[ceil32(return_data.size) + 128], mem[ceil32(return_data.size) + 160], mem[_255 + ceil32(return_data.size) + 128], mem[_255 + ceil32(return_data.size) + 160], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_138 + _140 + 32] = 0
            _256 = mem[64]
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg3
            _266 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _268 = mem[_266]
            mem[mem[64] len floor32(mem[_266])] = mem[_266 + 32 len floor32(mem[_266])]
            mem[mem[64] + floor32(mem[_266])] = 256^(-(mem[_266] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_266])] or mem[_266 + floor32(mem[_266]) + 32] and !(256^(-(mem[_266] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _256 + _268 + -mem[64] + 96]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _364 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _368 = mem[_364]
            _372 = mem[64]
            mem[64] = mem[64] + ceil32(arg4.length) + 32
            mem[_372] = arg4.length
            mem[_372 + 32 len arg4.length] = arg4[all]
            _376 = mem[ceil32(return_data.size) + 128]
            _380 = mem[ceil32(return_data.size) + 160]
            _384 = mem[_372 + 32]
            _388 = mem[_372 + 64]
            mem[mem[64] + 4] = _20
            mem[mem[64] + 36] = arg5
            mem[mem[64] + 68] = _376
            mem[mem[64] + 100] = _380
            mem[mem[64] + 132] = _384
            mem[mem[64] + 164] = _388
            mem[mem[64] + 196] = _368
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _20, arg5, _376, _380, _384, _388, _368
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_400]:
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
    if uint8(stor20.field_160):
        revert with 0, 'Smart contract is halted'
    mem[192] = 0x44cefb6900000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    require ext_code.size(stor11)
    call stor11.0x44cefb69 with:
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
        _155 = mem[448]
        require mem[448] <= test266151307()
        require return_data.size + 192 > mem[448] + 223
        _157 = mem[mem[448] + 192]
        require mem[mem[448] + 192] <= test266151307()
        _159 = mem[64]
        require mem[64] + ceil32(mem[mem[448] + 192]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[448] + 192]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[448] + 192]) + 32
        mem[_159] = mem[mem[448] + 192]
        require _155 + _157 + 32 <= return_data.size
        mem[_159 + 32 len ceil32(_157)] = mem[_155 + 224 len ceil32(_157)]
        if ceil32(_157) <= _157:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[480]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[512]:
                revert with 0, 'PK is not ready'
            _325 = mem[64]
            mem[64] = mem[64] + 96
            mem[_325] = arg1
            mem[_325 + 32] = arg2
            mem[_325 + 64] = arg3
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x841d8919f37ba52abc6ca36df1583917ea5183ee)
            delegate 0x841d8919f37ba52abc6ca36df1583917ea5183ee.0x14f790c8 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _361 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg2
            _365 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _367 = mem[_365]
            mem[_361 + 96 len floor32(mem[_365])] = mem[_365 + 32 len floor32(mem[_365])]
            mem[_361 + floor32(mem[_365]) + 96] = 256^(-(mem[_365] % 32) + 32) - 1 and mem[_361 + floor32(mem[_365]) + 96] or mem[_365 + floor32(mem[_365]) + 32] and !(256^(-(mem[_365] % 32) + 32) - 1)
            hash = sha256hash(mem[_361 + 96 len _367]) 
            mem[_361 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_361 + ceil32(return_data.size) + 96] = arg4.length
            mem[_361 + ceil32(return_data.size) + 128 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg5, mem[ceil32(return_data.size) + 224], mem[ceil32(return_data.size) + 256], mem[_361 + ceil32(return_data.size) + 128], mem[_361 + ceil32(return_data.size) + 160], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_157 + _159 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[480]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[512]:
                revert with 0, 'PK is not ready'
            _327 = mem[64]
            mem[64] = mem[64] + 96
            mem[_327] = arg1
            mem[_327 + 32] = arg2
            mem[_327 + 64] = arg3
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x841d8919f37ba52abc6ca36df1583917ea5183ee)
            delegate 0x841d8919f37ba52abc6ca36df1583917ea5183ee.0x14f790c8 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _362 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg2
            _368 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _370 = mem[_368]
            mem[mem[64] len floor32(mem[_368])] = mem[_368 + 32 len floor32(mem[_368])]
            mem[mem[64] + floor32(mem[_368])] = 256^(-(mem[_368] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_368])] or mem[_368 + floor32(mem[_368]) + 32] and !(256^(-(mem[_368] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _362 + _370 + -mem[64] + 96]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _462 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _466 = mem[_462]
            _470 = mem[64]
            mem[64] = mem[64] + ceil32(arg4.length) + 32
            mem[_470] = arg4.length
            mem[_470 + 32 len arg4.length] = arg4[all]
            _474 = mem[ceil32(return_data.size) + 224]
            _478 = mem[ceil32(return_data.size) + 256]
            _482 = mem[_470 + 32]
            _486 = mem[_470 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg5
            mem[mem[64] + 68] = _474
            mem[mem[64] + 100] = _478
            mem[mem[64] + 132] = _482
            mem[mem[64] + 164] = _486
            mem[mem[64] + 196] = _466
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg5, _474, _478, _482, _486, _466
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _498 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_498]:
                revert with 0, 'Signature verification failed'
    else:
        mem[_15 + ceil32(return_data.size) + 224] = 0
        _156 = mem[448]
        require mem[448] <= test266151307()
        require return_data.size + 192 > mem[448] + 223
        _158 = mem[mem[448] + 192]
        require mem[mem[448] + 192] <= test266151307()
        _160 = mem[64]
        require mem[64] + ceil32(mem[mem[448] + 192]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[448] + 192]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[448] + 192]) + 32
        mem[_160] = mem[mem[448] + 192]
        require _156 + _158 + 32 <= return_data.size
        mem[_160 + 32 len ceil32(_158)] = mem[_156 + 224 len ceil32(_158)]
        if ceil32(_158) > _158:
            mem[_158 + _160 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[480]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[512]:
                revert with 0, 'PK is not ready'
            _331 = mem[64]
            mem[64] = mem[64] + 96
            mem[_331] = arg1
            mem[_331 + 32] = arg2
            mem[_331 + 64] = arg3
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x841d8919f37ba52abc6ca36df1583917ea5183ee)
            delegate 0x841d8919f37ba52abc6ca36df1583917ea5183ee.0x14f790c8 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _364 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg2
            _374 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _376 = mem[_374]
            mem[_364 + 96 len floor32(mem[_374])] = mem[_374 + 32 len floor32(mem[_374])]
            mem[_364 + floor32(mem[_374]) + 96] = 256^(-(mem[_374] % 32) + 32) - 1 and mem[_364 + floor32(mem[_374]) + 96] or mem[_374 + floor32(mem[_374]) + 32] and !(256^(-(mem[_374] % 32) + 32) - 1)
            hash = sha256hash(mem[_364 + 96 len _376]) 
            mem[_364 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_364 + ceil32(return_data.size) + 96] = arg4.length
            mem[_364 + ceil32(return_data.size) + 128 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg5, mem[ceil32(return_data.size) + 224], mem[ceil32(return_data.size) + 256], mem[_364 + ceil32(return_data.size) + 128], mem[_364 + ceil32(return_data.size) + 160], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[480]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[512]:
                revert with 0, 'PK is not ready'
            _329 = mem[64]
            mem[64] = mem[64] + 96
            mem[_329] = arg1
            mem[_329 + 32] = arg2
            mem[_329 + 64] = arg3
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x841d8919f37ba52abc6ca36df1583917ea5183ee)
            delegate 0x841d8919f37ba52abc6ca36df1583917ea5183ee.0x14f790c8 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg2
            _371 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _373 = mem[_371]
            mem[mem[64] len floor32(mem[_371])] = mem[_371 + 32 len floor32(mem[_371])]
            mem[mem[64] + floor32(mem[_371])] = 256^(-(mem[_371] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_371])] or mem[_371 + floor32(mem[_371]) + 32] and !(256^(-(mem[_371] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _363 + _373 + -mem[64] + 96]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _467 = mem[_463]
            _471 = mem[64]
            mem[64] = mem[64] + ceil32(arg4.length) + 32
            mem[_471] = arg4.length
            mem[_471 + 32 len arg4.length] = arg4[all]
            _475 = mem[ceil32(return_data.size) + 224]
            _479 = mem[ceil32(return_data.size) + 256]
            _483 = mem[_471 + 32]
            _487 = mem[_471 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg5
            mem[mem[64] + 68] = _475
            mem[mem[64] + 100] = _479
            mem[mem[64] + 132] = _483
            mem[mem[64] + 164] = _487
            mem[mem[64] + 196] = _467
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg5, _475, _479, _483, _487, _467
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _499 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_499]:
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
    if uint8(stor20.field_160):
        revert with 0, 'Smart contract is halted'
    require ext_code.size(stor11)
    call stor11.0x95e8d68a with:
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
    call stor11.0x44cefb69 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 416] + 192]
    require _26 + _27 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(_27)] = mem[ceil32(return_data.size) + _26 + 224 len ceil32(_27)]
    if ceil32(_27) <= _27:
        _143 = mem[ceil32(return_data.size) + 448]
        require mem[ceil32(return_data.size) + 448] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 223
        _145 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192] <= test266151307()
        _147 = mem[64]
        require mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32
        mem[_147] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]
        require _143 + _145 + 32 <= return_data.size
        mem[_147 + 32 len ceil32(_145)] = mem[ceil32(return_data.size) + _143 + 224 len ceil32(_145)]
        if ceil32(_145) <= _145:
            if uint8(_20) != 6:
                revert with 0, 'PK is not unregistered'
            _289 = mem[64]
            mem[64] = mem[64] + 96
            mem[_289] = arg1
            mem[_289 + 32] = arg2
            mem[_289 + 64] = arg3
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x841d8919f37ba52abc6ca36df1583917ea5183ee)
            delegate 0x841d8919f37ba52abc6ca36df1583917ea5183ee.0x2cd63b33 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _317 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            _321 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _323 = mem[_321]
            mem[_317 + 96 len floor32(mem[_321])] = mem[_321 + 32 len floor32(mem[_321])]
            mem[_317 + floor32(mem[_321]) + 96] = 256^(-(mem[_321] % 32) + 32) - 1 and mem[_317 + floor32(mem[_321]) + 96] or mem[_321 + floor32(mem[_321]) + 32] and !(256^(-(mem[_321] % 32) + 32) - 1)
            hash = sha256hash(mem[_317 + 96 len _323]) 
            mem[_317 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_317 + ceil32(return_data.size) + 96] = arg4.length
            mem[_317 + ceil32(return_data.size) + 128 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _24, arg5, mem[(2 * ceil32(return_data.size)) + 224], mem[(2 * ceil32(return_data.size)) + 256], mem[_317 + ceil32(return_data.size) + 128], mem[_317 + ceil32(return_data.size) + 160], hash
        else:
            mem[_145 + _147 + 32] = 0
            if uint8(_20) != 6:
                revert with 0, 'PK is not unregistered'
            _291 = mem[64]
            mem[64] = mem[64] + 96
            mem[_291] = arg1
            mem[_291 + 32] = arg2
            mem[_291 + 64] = arg3
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x841d8919f37ba52abc6ca36df1583917ea5183ee)
            delegate 0x841d8919f37ba52abc6ca36df1583917ea5183ee.0x2cd63b33 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _318 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            _324 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _326 = mem[_324]
            mem[_318 + 96 len floor32(mem[_324])] = mem[_324 + 32 len floor32(mem[_324])]
            mem[_318 + floor32(mem[_324]) + 96] = 256^(-(mem[_324] % 32) + 32) - 1 and mem[_318 + floor32(mem[_324]) + 96] or mem[_324 + floor32(mem[_324]) + 32] and !(256^(-(mem[_324] % 32) + 32) - 1)
            hash = sha256hash(mem[_318 + 96 len _326]) 
            mem[_318 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_318 + ceil32(return_data.size) + 96] = arg4.length
            mem[_318 + ceil32(return_data.size) + 128 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _24, arg5, mem[(2 * ceil32(return_data.size)) + 224], mem[(2 * ceil32(return_data.size)) + 256], mem[_318 + ceil32(return_data.size) + 128], mem[_318 + ceil32(return_data.size) + 160], hash
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Signature verification failed'
    else:
        mem[_27 + (2 * ceil32(return_data.size)) + 224] = 0
        _144 = mem[ceil32(return_data.size) + 448]
        require mem[ceil32(return_data.size) + 448] <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 223
        _146 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192] <= test266151307()
        _148 = mem[64]
        require mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]) + 32
        mem[_148] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 448] + 192]
        require _144 + _146 + 32 <= return_data.size
        mem[_148 + 32 len ceil32(_146)] = mem[ceil32(return_data.size) + _144 + 224 len ceil32(_146)]
        if ceil32(_146) <= _146:
            if uint8(_20) != 6:
                revert with 0, 'PK is not unregistered'
            _293 = mem[64]
            mem[64] = mem[64] + 96
            mem[_293] = arg1
            mem[_293 + 32] = arg2
            mem[_293 + 64] = arg3
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x841d8919f37ba52abc6ca36df1583917ea5183ee)
            delegate 0x841d8919f37ba52abc6ca36df1583917ea5183ee.0x2cd63b33 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _319 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            _327 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _329 = mem[_327]
            mem[_319 + 96 len floor32(mem[_327])] = mem[_327 + 32 len floor32(mem[_327])]
            mem[_319 + floor32(mem[_327]) + 96] = 256^(-(mem[_327] % 32) + 32) - 1 and mem[_319 + floor32(mem[_327]) + 96] or mem[_327 + floor32(mem[_327]) + 32] and !(256^(-(mem[_327] % 32) + 32) - 1)
            hash = sha256hash(mem[_319 + 96 len _329]) 
            mem[_319 + 96] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_319 + ceil32(return_data.size) + 96] = arg4.length
            mem[_319 + ceil32(return_data.size) + 128 len arg4.length] = arg4[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _24, arg5, mem[(2 * ceil32(return_data.size)) + 224], mem[(2 * ceil32(return_data.size)) + 256], mem[_319 + ceil32(return_data.size) + 128], mem[_319 + ceil32(return_data.size) + 160], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_146 + _148 + 32] = 0
            if uint8(_20) != 6:
                revert with 0, 'PK is not unregistered'
            _295 = mem[64]
            mem[64] = mem[64] + 96
            mem[_295] = arg1
            mem[_295 + 32] = arg2
            mem[_295 + 64] = arg3
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            require ext_code.size(0x841d8919f37ba52abc6ca36df1583917ea5183ee)
            delegate 0x841d8919f37ba52abc6ca36df1583917ea5183ee.0x2cd63b33 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _320 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            _330 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _332 = mem[_330]
            mem[mem[64] len floor32(mem[_330])] = mem[_330 + 32 len floor32(mem[_330])]
            mem[mem[64] + floor32(mem[_330])] = 256^(-(mem[_330] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_330])] or mem[_330 + floor32(mem[_330]) + 32] and !(256^(-(mem[_330] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _320 + _332 + -mem[64] + 96]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _420 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _424 = mem[_420]
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(arg4.length) + 32
            mem[_428] = arg4.length
            mem[_428 + 32 len arg4.length] = arg4[all]
            _432 = mem[(2 * ceil32(return_data.size)) + 224]
            _436 = mem[(2 * ceil32(return_data.size)) + 256]
            _440 = mem[_428 + 32]
            _444 = mem[_428 + 64]
            mem[mem[64] + 4] = _24
            mem[mem[64] + 36] = arg5
            mem[mem[64] + 68] = _432
            mem[mem[64] + 100] = _436
            mem[mem[64] + 132] = _440
            mem[mem[64] + 164] = _444
            mem[mem[64] + 196] = _424
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _24, arg5, _432, _436, _440, _444, _424
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _456 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_456]:
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
    if uint8(stor20.field_160):
        revert with 0, 'Smart contract is halted'
    mem[288] = 0x44cefb6900000000000000000000000000000000000000000000000000000000
    mem[292] = arg2
    require ext_code.size(stor11)
    call stor11.0x44cefb69 with:
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
        _151 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 288 > mem[544] + 319
        _153 = mem[mem[544] + 288]
        require mem[mem[544] + 288] <= test266151307()
        _155 = mem[64]
        require mem[64] + ceil32(mem[mem[544] + 288]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[544] + 288]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[544] + 288]) + 32
        mem[_155] = mem[mem[544] + 288]
        require _151 + _153 + 32 <= return_data.size
        mem[_155 + 32 len ceil32(_153)] = mem[_151 + 320 len ceil32(_153)]
        if ceil32(_153) <= _153:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _333 = mem[64]
            mem[64] = mem[64] + 192
            mem[_333] = arg1
            mem[_333 + 32] = arg2
            mem[_333 + 64] = arg3
            mem[_333 + 96] = arg4
            mem[_333 + 128] = arg5
            mem[_333 + 160] = arg6
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
            delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x674377e4 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _381 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg5
            mem[mem[64] + 160] = arg6
            _385 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _387 = mem[_385]
            mem[_381 + 192 len floor32(mem[_385])] = mem[_385 + 32 len floor32(mem[_385])]
            mem[_381 + floor32(mem[_385]) + 192] = 256^(-(mem[_385] % 32) + 32) - 1 and mem[_381 + floor32(mem[_385]) + 192] or mem[_385 + floor32(mem[_385]) + 32] and !(256^(-(mem[_385] % 32) + 32) - 1)
            hash = sha256hash(mem[_381 + 192 len _387]) 
            mem[_381 + 192] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_381 + ceil32(return_data.size) + 192] = arg7.length
            mem[_381 + ceil32(return_data.size) + 224 len arg7.length] = arg7[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg8, mem[ceil32(return_data.size) + 320], mem[ceil32(return_data.size) + 352], mem[_381 + ceil32(return_data.size) + 224], mem[_381 + ceil32(return_data.size) + 256], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_153 + _155 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _335 = mem[64]
            mem[64] = mem[64] + 192
            mem[_335] = arg1
            mem[_335 + 32] = arg2
            mem[_335 + 64] = arg3
            mem[_335 + 96] = arg4
            mem[_335 + 128] = arg5
            mem[_335 + 160] = arg6
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
            delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x674377e4 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg5
            mem[mem[64] + 160] = arg6
            _388 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _390 = mem[_388]
            mem[mem[64] len floor32(mem[_388])] = mem[_388 + 32 len floor32(mem[_388])]
            mem[mem[64] + floor32(mem[_388])] = 256^(-(mem[_388] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_388])] or mem[_388 + floor32(mem[_388]) + 32] and !(256^(-(mem[_388] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _382 + _390 + -mem[64] + 192]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _486 = mem[_482]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_490] = arg7.length
            mem[_490 + 32 len arg7.length] = arg7[all]
            _494 = mem[ceil32(return_data.size) + 320]
            _498 = mem[ceil32(return_data.size) + 352]
            _502 = mem[_490 + 32]
            _506 = mem[_490 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _494
            mem[mem[64] + 100] = _498
            mem[mem[64] + 132] = _502
            mem[mem[64] + 164] = _506
            mem[mem[64] + 196] = _486
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg8, _494, _498, _502, _506, _486
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _518 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_518]:
                revert with 0, 'Signature verification failed'
    else:
        mem[_15 + ceil32(return_data.size) + 320] = 0
        _152 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 288 > mem[544] + 319
        _154 = mem[mem[544] + 288]
        require mem[mem[544] + 288] <= test266151307()
        _156 = mem[64]
        require mem[64] + ceil32(mem[mem[544] + 288]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[544] + 288]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[544] + 288]) + 32
        mem[_156] = mem[mem[544] + 288]
        require _152 + _154 + 32 <= return_data.size
        mem[_156 + 32 len ceil32(_154)] = mem[_152 + 320 len ceil32(_154)]
        if ceil32(_154) <= _154:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _337 = mem[64]
            mem[64] = mem[64] + 192
            mem[_337] = arg1
            mem[_337 + 32] = arg2
            mem[_337 + 64] = arg3
            mem[_337 + 96] = arg4
            mem[_337 + 128] = arg5
            mem[_337 + 160] = arg6
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
            delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x674377e4 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg5
            mem[mem[64] + 160] = arg6
            _391 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _393 = mem[_391]
            mem[mem[64] len floor32(mem[_391])] = mem[_391 + 32 len floor32(mem[_391])]
            mem[mem[64] + floor32(mem[_391])] = 256^(-(mem[_391] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_391])] or mem[_391 + floor32(mem[_391]) + 32] and !(256^(-(mem[_391] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _383 + _393 + -mem[64] + 192]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _487 = mem[_483]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_491] = arg7.length
            mem[_491 + 32 len arg7.length] = arg7[all]
            _495 = mem[ceil32(return_data.size) + 320]
            _499 = mem[ceil32(return_data.size) + 352]
            _503 = mem[_491 + 32]
            _507 = mem[_491 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _495
            mem[mem[64] + 100] = _499
            mem[mem[64] + 132] = _503
            mem[mem[64] + 164] = _507
            mem[mem[64] + 196] = _487
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg8, _495, _499, _503, _507, _487
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_519]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_154 + _156 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _339 = mem[64]
            mem[64] = mem[64] + 192
            mem[_339] = arg1
            mem[_339 + 32] = arg2
            mem[_339 + 64] = arg3
            mem[_339 + 96] = arg4
            mem[_339 + 128] = arg5
            mem[_339 + 160] = arg6
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
            delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x674377e4 with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg5
            mem[mem[64] + 160] = arg6
            _394 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _396 = mem[_394]
            mem[mem[64] len floor32(mem[_394])] = mem[_394 + 32 len floor32(mem[_394])]
            mem[mem[64] + floor32(mem[_394])] = 256^(-(mem[_394] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_394])] or mem[_394 + floor32(mem[_394]) + 32] and !(256^(-(mem[_394] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _384 + _396 + -mem[64] + 192]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _488 = mem[_484]
            _492 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_492] = arg7.length
            mem[_492 + 32 len arg7.length] = arg7[all]
            _496 = mem[ceil32(return_data.size) + 320]
            _500 = mem[ceil32(return_data.size) + 352]
            _504 = mem[_492 + 32]
            _508 = mem[_492 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _496
            mem[mem[64] + 100] = _500
            mem[mem[64] + 132] = _504
            mem[mem[64] + 164] = _508
            mem[mem[64] + 196] = _488
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg8, _496, _500, _504, _508, _488
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _520 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_520]:
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
    if uint8(stor20.field_160):
        revert with 0, 'Smart contract is halted'
    mem[288] = 0x44cefb6900000000000000000000000000000000000000000000000000000000
    mem[292] = arg2
    require ext_code.size(stor11)
    call stor11.0x44cefb69 with:
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
        _151 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 288 > mem[544] + 319
        _153 = mem[mem[544] + 288]
        require mem[mem[544] + 288] <= test266151307()
        _155 = mem[64]
        require mem[64] + ceil32(mem[mem[544] + 288]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[544] + 288]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[544] + 288]) + 32
        mem[_155] = mem[mem[544] + 288]
        require _151 + _153 + 32 <= return_data.size
        mem[_155 + 32 len ceil32(_153)] = mem[_151 + 320 len ceil32(_153)]
        if ceil32(_153) <= _153:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _333 = mem[64]
            mem[64] = mem[64] + 192
            mem[_333] = arg1
            mem[_333 + 32] = arg2
            mem[_333 + 64] = arg3
            mem[_333 + 96] = arg4
            mem[_333 + 128] = arg5
            mem[_333 + 160] = arg6
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
            delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x9331851b with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _381 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg5
            mem[mem[64] + 160] = arg6
            _385 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _387 = mem[_385]
            mem[_381 + 192 len floor32(mem[_385])] = mem[_385 + 32 len floor32(mem[_385])]
            mem[_381 + floor32(mem[_385]) + 192] = 256^(-(mem[_385] % 32) + 32) - 1 and mem[_381 + floor32(mem[_385]) + 192] or mem[_385 + floor32(mem[_385]) + 32] and !(256^(-(mem[_385] % 32) + 32) - 1)
            hash = sha256hash(mem[_381 + 192 len _387]) 
            mem[_381 + 192] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_381 + ceil32(return_data.size) + 192] = arg7.length
            mem[_381 + ceil32(return_data.size) + 224 len arg7.length] = arg7[all]
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg8, mem[ceil32(return_data.size) + 320], mem[ceil32(return_data.size) + 352], mem[_381 + ceil32(return_data.size) + 224], mem[_381 + ceil32(return_data.size) + 256], hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_153 + _155 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _335 = mem[64]
            mem[64] = mem[64] + 192
            mem[_335] = arg1
            mem[_335 + 32] = arg2
            mem[_335 + 64] = arg3
            mem[_335 + 96] = arg4
            mem[_335 + 128] = arg5
            mem[_335 + 160] = arg6
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
            delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x9331851b with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _382 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg5
            mem[mem[64] + 160] = arg6
            _388 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _390 = mem[_388]
            mem[mem[64] len floor32(mem[_388])] = mem[_388 + 32 len floor32(mem[_388])]
            mem[mem[64] + floor32(mem[_388])] = 256^(-(mem[_388] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_388])] or mem[_388 + floor32(mem[_388]) + 32] and !(256^(-(mem[_388] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _382 + _390 + -mem[64] + 192]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _486 = mem[_482]
            _490 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_490] = arg7.length
            mem[_490 + 32 len arg7.length] = arg7[all]
            _494 = mem[ceil32(return_data.size) + 320]
            _498 = mem[ceil32(return_data.size) + 352]
            _502 = mem[_490 + 32]
            _506 = mem[_490 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _494
            mem[mem[64] + 100] = _498
            mem[mem[64] + 132] = _502
            mem[mem[64] + 164] = _506
            mem[mem[64] + 196] = _486
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg8, _494, _498, _502, _506, _486
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _518 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_518]:
                revert with 0, 'Signature verification failed'
    else:
        mem[_15 + ceil32(return_data.size) + 320] = 0
        _152 = mem[544]
        require mem[544] <= test266151307()
        require return_data.size + 288 > mem[544] + 319
        _154 = mem[mem[544] + 288]
        require mem[mem[544] + 288] <= test266151307()
        _156 = mem[64]
        require mem[64] + ceil32(mem[mem[544] + 288]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[544] + 288]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[mem[544] + 288]) + 32
        mem[_156] = mem[mem[544] + 288]
        require _152 + _154 + 32 <= return_data.size
        mem[_156 + 32 len ceil32(_154)] = mem[_152 + 320 len ceil32(_154)]
        if ceil32(_154) <= _154:
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _337 = mem[64]
            mem[64] = mem[64] + 192
            mem[_337] = arg1
            mem[_337 + 32] = arg2
            mem[_337 + 64] = arg3
            mem[_337 + 96] = arg4
            mem[_337 + 128] = arg5
            mem[_337 + 160] = arg6
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
            delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x9331851b with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg5
            mem[mem[64] + 160] = arg6
            _391 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _393 = mem[_391]
            mem[mem[64] len floor32(mem[_391])] = mem[_391 + 32 len floor32(mem[_391])]
            mem[mem[64] + floor32(mem[_391])] = 256^(-(mem[_391] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_391])] or mem[_391 + floor32(mem[_391]) + 32] and !(256^(-(mem[_391] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _383 + _393 + -mem[64] + 192]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _487 = mem[_483]
            _491 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_491] = arg7.length
            mem[_491 + 32 len arg7.length] = arg7[all]
            _495 = mem[ceil32(return_data.size) + 320]
            _499 = mem[ceil32(return_data.size) + 352]
            _503 = mem[_491 + 32]
            _507 = mem[_491 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _495
            mem[mem[64] + 100] = _499
            mem[mem[64] + 132] = _503
            mem[mem[64] + 164] = _507
            mem[mem[64] + 196] = _487
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg8, _495, _499, _503, _507, _487
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _519 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_519]:
                revert with 0, 'Signature verification failed'
        else:
            mem[_154 + _156 + 32] = 0
            if uint8(_8) != 5:
                revert with 0, 'PK is not ready'
            if block.timestamp < mem[576]:
                revert with 0, 'PK is not ready'
            if block.timestamp > mem[608]:
                revert with 0, 'PK is not ready'
            _339 = mem[64]
            mem[64] = mem[64] + 192
            mem[_339] = arg1
            mem[_339 + 32] = arg2
            mem[_339 + 64] = arg3
            mem[_339 + 96] = arg4
            mem[_339 + 128] = arg5
            mem[_339 + 160] = arg6
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(0xa7cdb63be5707007b155ebaf5b72336522c6aa7)
            delegate 0xa7cdb63be5707007b155ebaf5b72336522c6aa7.0x9331851b with:
                 gas gas_remaining wei
                args 5, arg1, arg2, arg3, arg4, address(arg5), arg6
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            mem[mem[64] + 128] = arg5
            mem[mem[64] + 160] = arg6
            _394 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _396 = mem[_394]
            mem[mem[64] len floor32(mem[_394])] = mem[_394 + 32 len floor32(mem[_394])]
            mem[mem[64] + floor32(mem[_394])] = 256^(-(mem[_394] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_394])] or mem[_394 + floor32(mem[_394]) + 32] and !(256^(-(mem[_394] % 32) + 32) - 1)
            hash = sha256hash(mem[mem[64] len _384 + _396 + -mem[64] + 192]) 
            mem[mem[64]] = hash
            if not sha256hash.result:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _488 = mem[_484]
            _492 = mem[64]
            mem[64] = mem[64] + ceil32(arg7.length) + 32
            mem[_492] = arg7.length
            mem[_492 + 32 len arg7.length] = arg7[all]
            _496 = mem[ceil32(return_data.size) + 320]
            _500 = mem[ceil32(return_data.size) + 352]
            _504 = mem[_492 + 32]
            _508 = mem[_492 + 64]
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = arg8
            mem[mem[64] + 68] = _496
            mem[mem[64] + 100] = _500
            mem[mem[64] + 132] = _504
            mem[mem[64] + 164] = _508
            mem[mem[64] + 196] = _488
            require ext_code.size(stor13)
            call stor13.0x4587b7b4 with:
                 gas gas_remaining wei
                args _12, arg8, _496, _500, _504, _508, _488
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _520 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_520]:
                revert with 0, 'Signature verification failed'
}



}
