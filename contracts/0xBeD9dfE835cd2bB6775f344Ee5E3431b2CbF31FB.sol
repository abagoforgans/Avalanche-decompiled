contract main {




// =====================  Runtime code  =====================


#
#  - findBestPathWithGas(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5)
#  - swapNoSplitToAVAXWithPermit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6, uint256 arg7, uint8 arg8, bytes32 arg9, bytes32 arg10)
#  - findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4)
#  - swapNoSplit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6)
#  - swapNoSplitWithPermit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6, uint256 arg7, uint8 arg8, bytes32 arg9, bytes32 arg10)
#  - recoverERC20(address arg1, uint256 arg2)
#  - swapNoSplitToAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6)
#  - swapNoSplitFromAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6)
#
const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const NAME = 'AxialRouter', 0

const AVAX = 0

const FEE_DENOMINATOR = 10000


address owner;
uint256 MIN_FEE;
address FEE_CLAIMERAddress;
array of address tRUSTED_TOKENS;
array of address aDAPTERS;

function FEE_CLAIMER() {
    return FEE_CLAIMERAddress
}

function TRUSTED_TOKENS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tRUSTED_TOKENS.length
    return address(tRUSTED_TOKENS[arg1])
}

function MIN_FEE() {
    return MIN_FEE
}

function trustedTokensCount() {
    return tRUSTED_TOKENS.length
}

function adaptersCount() {
    return aDAPTERS.length
}

function owner() {
    return owner
}

function ADAPTERS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < aDAPTERS.length
    return address(aDAPTERS[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit 0x4bb8a618: MIN_FEE, arg1
    MIN_FEE = arg1
}

function setFeeClaimer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit 0xb2c853ac: FEE_CLAIMERAddress, arg1
    FEE_CLAIMERAddress = arg1
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'AxialRouter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a204e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function queryAdapter(uint256 arg1, address arg2, address arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg4 < aDAPTERS.length
    require ext_code.size(address(aDAPTERS[arg4]))
    staticcall address(aDAPTERS[arg4]).query(uint256 arg1, address arg2, address arg3) with:
            gas gas_remaining wei
           args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setAdapters(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    mem[(32 * arg1.length) + 128] = 32
    mem[(32 * arg1.length) + 160] = arg1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xebf7325f: mem[mem[64] len (64 * arg1.length) + -mem[64] + 192]
    aDAPTERS.length = mem[96]
    if not mem[96]:
        idx = 0
        while aDAPTERS.length > idx:
            uint256(aDAPTERS[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            address(aDAPTERS[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while aDAPTERS.length > idx:
            uint256(aDAPTERS[idx]) = 0
            idx = idx + 1
            continue 
}

function setTrustedTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    mem[(32 * arg1.length) + 128] = 32
    mem[(32 * arg1.length) + 160] = arg1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x658ff168: mem[mem[64] len (64 * arg1.length) + -mem[64] + 192]
    tRUSTED_TOKENS.length = mem[96]
    if not mem[96]:
        idx = 0
        while tRUSTED_TOKENS.length > idx:
            uint256(tRUSTED_TOKENS[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            address(tRUSTED_TOKENS[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while tRUSTED_TOKENS.length > idx:
            uint256(tRUSTED_TOKENS[idx]) = 0
            idx = idx + 1
            continue 
}

function queryNoSplit(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 352
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    idx = 0
    s = 224
    while uint8(idx) < aDAPTERS.length:
        mem[0] = 4
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg3
        require ext_code.size(address(aDAPTERS[uint8(idx)]))
        staticcall address(aDAPTERS[uint8(idx)]).query(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args arg1, address(arg2), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        if not uint8(idx):
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = address(aDAPTERS[uint8(idx)])
            mem[_27 + 32] = arg2
            mem[_27 + 64] = arg3
            mem[_27 + 96] = _25
            idx = idx + 1
            s = _27
            continue 
        if mem[_24] <= mem[s + 96]:
            idx = idx + 1
            s = s
            continue 
        _28 = mem[64]
        mem[64] = mem[64] + 128
        mem[_28] = address(aDAPTERS[uint8(idx)])
        mem[_28 + 32] = arg2
        mem[_28 + 64] = arg3
        mem[_28 + 96] = _25
        idx = idx + 1
        s = _28
        continue 
    mem[mem[64]] = mem[s + 12 len 20]
    mem[mem[64] + 32] = mem[s + 44 len 20]
    mem[mem[64] + 64] = mem[s + 76 len 20]
    mem[mem[64] + 96] = mem[s + 96]
    return memory
      from mem[64]
       len 128
}

function queryNoSplit(uint256 arg1, address arg2, address arg3, uint8[] arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 352
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    idx = 0
    s = 224
    while arg4.length > uint8(idx):
        require uint8(idx) < arg4.length
        require cd[((32 * uint8(idx)) + arg4 + 36)] == uint8(cd[((32 * uint8(idx)) + arg4 + 36)])
        require uint8(cd[((32 * uint8(idx)) + arg4 + 36)]) < aDAPTERS.length
        mem[0] = 4
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg3
        require ext_code.size(address(aDAPTERS[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])]))
        staticcall address(aDAPTERS[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])]).query(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args arg1, address(arg2), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        if not uint8(idx):
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = address(aDAPTERS[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])])
            mem[_27 + 32] = arg2
            mem[_27 + 64] = arg3
            mem[_27 + 96] = _25
            idx = idx + 1
            s = _27
            continue 
        if mem[_24] <= mem[s + 96]:
            idx = idx + 1
            s = s
            continue 
        _28 = mem[64]
        mem[64] = mem[64] + 128
        mem[_28] = address(aDAPTERS[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])])
        mem[_28 + 32] = arg2
        mem[_28 + 64] = arg3
        mem[_28 + 96] = _25
        idx = idx + 1
        s = _28
        continue 
    mem[mem[64]] = mem[s + 12 len 20]
    mem[mem[64] + 32] = mem[s + 44 len 20]
    mem[mem[64] + 64] = mem[s + 76 len 20]
    mem[mem[64] + 96] = mem[s + 96]
    return memory
      from mem[64]
       len 128
}



}
