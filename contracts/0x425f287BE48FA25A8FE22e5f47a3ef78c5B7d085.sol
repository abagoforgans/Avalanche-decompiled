contract main {




// =====================  Runtime code  =====================


#
#  - findBestPathWithGas(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5)
#  - sub_0a7662a3(?)
#  - sub_1763c402(?)
#  - sub_1a965335(?)
#  - sub_1d80fb28(?)
#  - sub_369ad3f4(?)
#  - sub_6e08ae63(?)
#  - recoverERC20(address arg1, uint256 arg2)
#  - sub_bf824611(?)
#  - sub_d888942b(?)
#  - sub_e541560d(?)
#
const sub_bb1913f3(?) = 0

const FEE_DENOMINATOR = 10000


address owner;
address sub_1d987be7Address;
uint256 MIN_FEE;
address FEE_CLAIMERAddress;
array of address tRUSTED_TOKENS;
array of address aDAPTERS;
address sub_ee9a31a2Address;

function FEE_CLAIMER() {
    return FEE_CLAIMERAddress
}

function sub_1d987be7(?) {
    return sub_1d987be7Address
}

function TRUSTED_TOKENS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tRUSTED_TOKENS.length
    return tRUSTED_TOKENS[arg1]
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
    return aDAPTERS[arg1]
}

function sub_ee9a31a2(?) {
    return sub_ee9a31a2Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x4bb8a618: MIN_FEE, arg1
    MIN_FEE = arg1
}

function setFeeClaimer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xb2c853ac: FEE_CLAIMERAddress, arg1
    FEE_CLAIMERAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_500334a7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Router: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function queryAdapter(uint256 arg1, address arg2, address arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg4 < aDAPTERS.length
    require ext_code.size(aDAPTERS[arg4])
    staticcall aDAPTERS[arg4].0xef99893a with:
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
    require calldata.size > arg1 + 35
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
        revert with 0, 'Ownable: caller is not the owner'
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
    aDAPTERS.length = arg1.length
    if not arg1.length:
        idx = 0
        while aDAPTERS.length > idx:
            aDAPTERS[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            aDAPTERS[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while aDAPTERS.length > idx:
            aDAPTERS[idx] = 0
            idx = idx + 1
            continue 
}

function query(uint256 arg1, address arg2, address arg3) {
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
        mem[0] = 5
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg3
        require ext_code.size(aDAPTERS[uint8(idx)])
        staticcall aDAPTERS[uint8(idx)].0xef99893a with:
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
            mem[_27] = aDAPTERS[uint8(idx)]
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
        mem[_28] = aDAPTERS[uint8(idx)]
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

function sub_0d20559a(?) {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
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
    while ('cd', 100).length > uint8(idx):
        require uint8(idx) < ('cd', 100).length
        require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
        require uint8(cd[((32 * uint8(idx)) + cd[100] + 36)]) < aDAPTERS.length
        mem[0] = 5
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = address(cd[68])
        require ext_code.size(aDAPTERS[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])])
        staticcall aDAPTERS[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])].0xef99893a with:
                gas gas_remaining wei
               args cd[4], address(cd[36]), address(cd[68])
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
            mem[_27] = aDAPTERS[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]
            mem[_27 + 32] = address(cd[36])
            mem[_27 + 64] = address(cd[68])
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
        mem[_28] = aDAPTERS[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]
        mem[_28 + 32] = address(cd[36])
        mem[_28 + 64] = address(cd[68])
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

function setTrustedTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
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
        revert with 0, 'Ownable: caller is not the owner'
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
    tRUSTED_TOKENS.length = arg1.length
    mem[0] = 4
    if not arg1.length:
        idx = 0
        while tRUSTED_TOKENS.length > idx:
            tRUSTED_TOKENS[idx] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _404 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_ee9a31a2Address
            require ext_code.size(address(_404))
            staticcall address(_404).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_ee9a31a2Address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _410 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_410]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _415 = mem[64]
            mem[mem[64] + 36] = sub_ee9a31a2Address
            mem[mem[64] + 68] = -1
            _418 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_418 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_418 + 36 len 28]
            _422 = mem[_418]
            s = 0
            while s < _422:
                mem[s + _415 + 100] = mem[s + _418 + 32]
                s = s + 32
                continue 
            if ceil32(_422) <= _422:
                call address(_404).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _422 + _415 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_503] = return_data.size
                    mem[_503 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_503 + 32] == bool(mem[_503 + 32])
                        if not mem[_503 + 32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_422 + _415 + 100] = 0
                call address(_404).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _422 + _415 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_504] = return_data.size
                    mem[_504 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_504 + 32] == bool(mem[_504 + 32])
                        if not mem[_504 + 32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            tRUSTED_TOKENS[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while tRUSTED_TOKENS.length > idx:
            tRUSTED_TOKENS[idx] = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _499 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_ee9a31a2Address
            require ext_code.size(address(_499))
            staticcall address(_499).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), sub_ee9a31a2Address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _518 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_518]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _532 = mem[64]
            mem[mem[64] + 36] = sub_ee9a31a2Address
            mem[mem[64] + 68] = -1
            _538 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_538 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_538 + 36 len 28]
            _542 = mem[_538]
            s = 0
            while s < _542:
                mem[s + _532 + 100] = mem[s + _538 + 32]
                s = s + 32
                continue 
            if ceil32(_542) <= _542:
                call address(_499).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _542 + _532 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _579 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_579] = return_data.size
                    mem[_579 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_579 + 32] == bool(mem[_579 + 32])
                        if not mem[_579 + 32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_542 + _532 + 100] = 0
                call address(_499).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _542 + _532 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _580 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_580] = return_data.size
                    mem[_580 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_580 + 32] == bool(mem[_580 + 32])
                        if not mem[_580 + 32]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            idx = idx + 1
            continue 
}



}
