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
#  - _fallback()
#
const sub_bb1913f3(?) = 0

const FEE_DENOMINATOR = 10000


address owner;
address sub_ee9a31a2Address;
address FEE_CLAIMERAddress;
address sub_1d987be7Address;
array of address aDAPTERS;
array of address tRUSTED_TOKENS;
uint256 MIN_FEE;

function FEE_CLAIMER() {
    return FEE_CLAIMERAddress
}

function sub_1d987be7(?) {
    return sub_1d987be7Address
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

function sub_ee9a31a2(?) {
    return sub_ee9a31a2Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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
    if arg4 >= aDAPTERS.length:
        revert with 'NH{q', 50
    staticcall address(aDAPTERS[arg4]).0xef99893a with:
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
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * arg1.length) + 97] = 32
    mem[ceil32(32 * arg1.length) + 129] = arg1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < arg1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xebf7325f: mem[mem[64] len ceil32(32 * arg1.length) + (32 * arg1.length) + -mem[64] + 161]
    aDAPTERS.length = arg1.length
    if not arg1.length:
        idx = 0
        while aDAPTERS.length > idx:
            uint256(aDAPTERS[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(aDAPTERS[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while aDAPTERS.length > idx:
            uint256(aDAPTERS[idx]) = 0
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
        mem[0] = 4
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg3
        staticcall address(aDAPTERS[uint8(idx)]).0xef99893a with:
                gas gas_remaining wei
               args arg1, address(arg2), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_23]
        if not uint8(idx):
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = address(aDAPTERS[uint8(idx)])
            mem[_27 + 32] = arg2
            mem[_27 + 64] = arg3
            mem[_27 + 96] = _25
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = _27
            continue 
        if mem[_23] <= mem[s + 96]:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = s
            continue 
        _28 = mem[64]
        mem[64] = mem[64] + 128
        mem[_28] = address(aDAPTERS[uint8(idx)])
        mem[_28 + 32] = arg2
        mem[_28 + 64] = arg3
        mem[_28 + 96] = _25
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
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
        if uint8(idx) >= ('cd', 100).length:
            revert with 'NH{q', 50
        require cd[((32 * uint8(idx)) + cd[100] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])
        if uint8(cd[((32 * uint8(idx)) + cd[100] + 36)]) >= aDAPTERS.length:
            revert with 'NH{q', 50
        mem[0] = 4
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = address(cd[68])
        staticcall address(aDAPTERS[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])]).0xef99893a with:
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
            mem[_27] = address(aDAPTERS[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])])
            mem[_27 + 32] = address(cd[36])
            mem[_27 + 64] = address(cd[68])
            mem[_27 + 96] = _25
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = _27
            continue 
        if mem[_24] <= mem[s + 96]:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = s
            continue 
        _28 = mem[64]
        mem[64] = mem[64] + 128
        mem[_28] = address(aDAPTERS[uint8(cd[((32 * uint8(idx)) + cd[100] + 36)])])
        mem[_28 + 32] = address(cd[36])
        mem[_28 + 64] = address(cd[68])
        mem[_28 + 96] = _25
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
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
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * arg1.length) + 97] = 32
    mem[ceil32(32 * arg1.length) + 129] = arg1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < arg1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x658ff168: mem[mem[64] len ceil32(32 * arg1.length) + (32 * arg1.length) + -mem[64] + 161]
    tRUSTED_TOKENS.length = arg1.length
    mem[0] = 5
    if not arg1.length:
        idx = 0
        while tRUSTED_TOKENS.length > idx:
            uint256(tRUSTED_TOKENS[idx]) = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _604 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_ee9a31a2Address
            staticcall address(_604).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, sub_ee9a31a2Address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _608 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_608]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _615 = mem[64]
            mem[mem[64] + 36] = sub_ee9a31a2Address
            mem[mem[64] + 68] = -1
            _617 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_617 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_617 + 36 len 28]
            mem[64] = _615 + 164
            mem[_615 + 100] = 32
            mem[_615 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_604)):
                revert with 0, 'Address: call to non-contract'
            _632 = mem[_617]
            s = 0
            while s < _632:
                mem[s + _615 + 164] = mem[s + _617 + 32]
                s = s + 32
                continue 
            if ceil32(_632) > _632:
                mem[_632 + _615 + 164] = 0
            call address(_604).mem[_615 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_615 + 168 len _632 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_615 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_615 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _615 + 232] = mem[idx + _615 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_615 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _615 + ceil32(return_data.size) + 165
                mem[_615 + 164] = return_data.size
                mem[_615 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_615 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_615 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _615 + ceil32(return_data.size) + 233] = mem[idx + _615 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_615 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_615 + 196] == bool(mem[_615 + 196])
                    if not mem[_615 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(tRUSTED_TOKENS[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while tRUSTED_TOKENS.length > idx:
            uint256(tRUSTED_TOKENS[idx]) = 0
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _749 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_ee9a31a2Address
            staticcall address(_749).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, sub_ee9a31a2Address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _756 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_756]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            _774 = mem[64]
            mem[mem[64] + 36] = sub_ee9a31a2Address
            mem[mem[64] + 68] = -1
            _776 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_776 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_776 + 36 len 28]
            mem[64] = _774 + 164
            mem[_774 + 100] = 32
            mem[_774 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_749)):
                revert with 0, 'Address: call to non-contract'
            _808 = mem[_776]
            s = 0
            while s < _808:
                mem[s + _774 + 164] = mem[s + _776 + 32]
                s = s + 32
                continue 
            if ceil32(_808) > _808:
                mem[_808 + _774 + 164] = 0
            call address(_749).mem[_774 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_774 + 168 len _808 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_774 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_774 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _774 + 232] = mem[idx + _774 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_774 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _774 + ceil32(return_data.size) + 165
                mem[_774 + 164] = return_data.size
                mem[_774 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_774 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_774 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _774 + ceil32(return_data.size) + 233] = mem[idx + _774 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_774 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_774 + 196] == bool(mem[_774 + 196])
                    if not mem[_774 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}



}
