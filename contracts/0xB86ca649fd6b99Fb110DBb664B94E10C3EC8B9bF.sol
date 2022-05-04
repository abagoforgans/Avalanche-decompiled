contract main {




// =====================  Runtime code  =====================


const MAX_FEE = 1000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address wNativeAddress;
address bifiAddress;
uint32 stor103;
address treasuryAddress;
uint256 stor103;
address rewardPoolAddress;
address unirouterAddress;
uint256 treasuryFee;
uint256 rewardPoolFee;
array of address wNativeToBifiRoute;
uint8 routerInitialized;

function unirouter() {
    return unirouterAddress
}

function routerInitialized() {
    return bool(routerInitialized)
}

function wNative() {
    return wNativeAddress
}

function bifi() {
    return bifiAddress
}

function treasury() {
    return address(treasuryAddress)
}

function rewardPool() {
    return rewardPoolAddress
}

function owner() {
    return owner
}

function wNativeToBifiRoute(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wNativeToBifiRoute.length
    return address(wNativeToBifiRoute[arg1])
}

function rewardPoolFee() {
    return rewardPoolFee
}

function treasuryFee() {
    return treasuryFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRewardPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit NewRewardPool(rewardPoolAddress, arg1);
    rewardPoolAddress = arg1
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit NewTreasury(address(treasuryAddress), arg1);
    address(treasuryAddress) = arg1
}

function setTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, '!cap'
    treasuryFee = arg1
    if 1000 < arg1:
        revert with 0, 17
    rewardPoolFee = -arg1 + 1000
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

function transferRewardPoolOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardPoolAddress)
    call rewardPoolAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setNativeToBifiRoute(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(arg1.length) + 97
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
    if not arg1.length:
        revert with 0, 50
    if mem[140 len 20] != wNativeAddress:
        revert with 0, '!wNative'
    if arg1.length < 1:
        revert with 0, 17
    if arg1.length - 1 >= arg1.length:
        revert with 0, 50
    if mem[(32 * arg1.length - 1) + 140 len 20] != bifiAddress:
        revert with 0, '!bifi'
    mem[floor32(arg1.length) + 97] = 64
    mem[floor32(arg1.length) + 161] = wNativeToBifiRoute.length
    mem[0] = 108
    idx = 0
    s = 0
    t = mem[64] + 96
    while idx < wNativeToBifiRoute.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[floor32(arg1.length) + 129] = (32 * wNativeToBifiRoute.length) + 96
    mem[floor32(arg1.length) + (32 * wNativeToBifiRoute.length) + 193] = mem[96]
    idx = 0
    s = floor32(arg1.length) + (32 * wNativeToBifiRoute.length) + 225
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit NewBifiRoute(address[] arg1, address[] arg2):
                      mem[mem[64] len floor32(arg1.length) + (32 * wNativeToBifiRoute.length) + (32 * mem[96]) + -mem[64] + 225],
    wNativeToBifiRoute.length = mem[96]
    if not mem[96]:
        idx = 0
        while wNativeToBifiRoute.length > idx:
            uint256(wNativeToBifiRoute[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            address(wNativeToBifiRoute[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while wNativeToBifiRoute.length > idx:
            uint256(wNativeToBifiRoute[idx]) = 0
            idx = idx + 1
            continue 
}

function inCaseTokensGetStuck(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if wNativeAddress == arg1:
        revert with 0, '!safe'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function initRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
    mem[100] = this.address
    mem[132] = arg1
    require ext_code.size(wNativeAddress)
    staticcall wNativeAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(wNativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call wNativeAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), address(arg1) << 64 == bool(uint32(this.address), address(arg1) << 64)
            if not uint32(this.address), address(arg1) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    routerInitialized = 1
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    bifiAddress = arg1
    wNativeAddress = arg2
    address(treasuryAddress) = arg3
    rewardPoolAddress = arg4
    treasuryFee = 140
    rewardPoolFee = 860
    if not arg5:
        mem[96] = arg2
        mem[128] = arg1
        wNativeToBifiRoute.length = 2
        s = 0
        idx = 96
        while 160 > idx:
            address(wNativeToBifiRoute[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
    else:
        unirouterAddress = arg5
        mem[100] = this.address
        mem[132] = arg5
        require ext_code.size(wNativeAddress)
        staticcall wNativeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg5
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(return_data.size) + 132] = arg5
        mem[ceil32(return_data.size) + 164] = -1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg5) << 64
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg5) << 64, 0, -1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call wNativeAddress with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg5) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg5) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(arg5) << 64 == bool(uint32(this.address), address(arg5) << 64)
                if not uint32(this.address), address(arg5) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            routerInitialized = 1
            mem[ceil32(return_data.size) + 260] = arg2
            mem[ceil32(return_data.size) + 292] = arg1
            wNativeToBifiRoute.length = 2
            s = 0
            idx = ceil32(return_data.size) + 260
            while ceil32(return_data.size) + 324 > idx:
                address(wNativeToBifiRoute[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            routerInitialized = 1
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = arg2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = arg1
            wNativeToBifiRoute.length = 2
            s = 0
            idx = ceil32(return_data.size) + ceil32(return_data.size) + 261
            while ceil32(return_data.size) + ceil32(return_data.size) + 325 > idx:
                address(wNativeToBifiRoute[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
    idx = 2
    while wNativeToBifiRoute.length > idx:
        uint256(wNativeToBifiRoute[idx]) = 0
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function setUnirouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not routerInitialized:
        revert with 0, '!initialized'
    emit NewUnirouter(unirouterAddress, arg1);
    mem[100] = this.address
    mem[132] = arg1
    require ext_code.size(wNativeAddress)
    staticcall wNativeAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(wNativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call wNativeAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), address(arg1) << 64 == bool(uint32(this.address), address(arg1) << 64)
            if not uint32(this.address), address(arg1) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 296] = unirouterAddress
        mem[ceil32(return_data.size) + 328] = 0
        mem[ceil32(return_data.size) + 260] = 68
        mem[ceil32(return_data.size) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 360] = 32
        mem[ceil32(return_data.size) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 424 len 96] = 0, unirouterAddress, 0, 0
        mem[ceil32(return_data.size) + 492] = 0
        call wNativeAddress with:
           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), address(arg1) << 64 == bool(uint32(this.address), address(arg1) << 64)
                if not uint32(this.address), address(arg1) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                if not mem[ceil32(return_data.size) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        unirouterAddress = arg1
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
        if not mem[ceil32(return_data.size) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = unirouterAddress
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(wNativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, unirouterAddress, 0, 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
    call wNativeAddress with:
       funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), address(arg1) << 64 == bool(uint32(this.address), address(arg1) << 64)
            if not uint32(this.address), address(arg1) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        unirouterAddress = arg1
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        unirouterAddress = arg1
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
        unirouterAddress = arg1
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function harvest() {
    mem[100] = this.address
    require ext_code.size(wNativeAddress)
    staticcall wNativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and treasuryFee > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
    if not routerInitialized:
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] * treasuryFee / 1000
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor103)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor103), uint32(stor103), ext_call.return_data[0] * treasuryFee / 1000, 0
        mem[ceil32(return_data.size) + 328] = 0
        call wNativeAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor103), uint32(stor103), ext_call.return_data[0] * treasuryFee / 1000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor103), uint32(stor103), ext_call.return_data[0] * treasuryFee / 1000, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_call.return_data[0] and rewardPoolFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 296] = rewardPoolAddress
            mem[ceil32(return_data.size) + 328] = ext_call.return_data[0] * rewardPoolFee / 1000
            mem[ceil32(return_data.size) + 260] = 68
            mem[ceil32(return_data.size) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 360] = 32
            mem[ceil32(return_data.size) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 424 len 96] = 0, rewardPoolAddress, ext_call.return_data[0] * rewardPoolFee / 1000, 0
            mem[ceil32(return_data.size) + 492] = 0
            call wNativeAddress with:
               funct Mask(32, 224, 0, rewardPoolAddress, ext_call.return_data[0] * rewardPoolFee / 1000, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, rewardPoolAddress, ext_call.return_data[0] * rewardPoolFee / 1000, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                    if not mem[ceil32(return_data.size) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.notifyRewardAmount(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * rewardPoolFee / 1000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if ext_call.return_data[0] and rewardPoolFee > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = rewardPoolAddress
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * rewardPoolFee / 1000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(wNativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, rewardPoolAddress, ext_call.return_data[0] * rewardPoolFee / 1000, 0
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
        call wNativeAddress with:
           funct Mask(32, 224, 0, rewardPoolAddress, ext_call.return_data[0] * rewardPoolFee / 1000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, rewardPoolAddress, ext_call.return_data[0] * rewardPoolFee / 1000, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.notifyRewardAmount(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * rewardPoolFee / 1000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 430] = 32
            mem[(4 * ceil32(return_data.size)) + 462] = 32
            mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 426
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.notifyRewardAmount(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * rewardPoolFee / 1000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
        if mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.notifyRewardAmount(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * rewardPoolFee / 1000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 42
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
        mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] * treasuryFee / 1000 / 2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor103)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(wNativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor103), uint32(stor103), ext_call.return_data[0] * treasuryFee / 1000 / 2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call wNativeAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor103), uint32(stor103), ext_call.return_data[0] * treasuryFee / 1000 / 2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor103), uint32(stor103), ext_call.return_data[0] * treasuryFee / 1000 / 2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 264] = ext_call.return_data[0] * treasuryFee / 1000 / 2
            mem[ceil32(return_data.size) + 296] = 0
            mem[ceil32(return_data.size) + 328] = 160
            mem[ceil32(return_data.size) + 424] = wNativeToBifiRoute.length
            mem[0] = 108
            idx = 0
            s = 0
            t = ceil32(return_data.size) + 456
            while idx < wNativeToBifiRoute.length:
                mem[t] = address(wNativeToBifiRoute[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 360] = address(treasuryAddress)
            mem[ceil32(return_data.size) + 392] = block.timestamp
            require ext_code.size(unirouterAddress)
            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0] * treasuryFee / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[ceil32(return_data.size) + 456 len 32 * wNativeToBifiRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 260
            require return_data.size >= 32
            _2977 = mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32
            require mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 260 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 291
            _3049 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260] > test266151307():
                revert with 0, 65
            if floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]) + 1 < 0 or (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]) + 261 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]) + 261
            mem[(2 * ceil32(return_data.size)) + 260] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]
            require return_data.size >= _2977 + (32 * _3049) + 32
            mem[(2 * ceil32(return_data.size)) + 292 len 32 * _3049] = mem[ceil32(return_data.size) + _2977 + 292 len 32 * _3049]
            if ext_call.return_data[0] and rewardPoolFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            _4257 = mem[64]
            mem[mem[64] + 36] = rewardPoolAddress
            mem[mem[64] + 68] = ext_call.return_data[0] * rewardPoolFee / 1000
            _4269 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4257 + 100] = 32
            mem[_4257 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            _4325 = mem[_4269]
            mem[_4257 + 164 len ceil32(mem[_4269])] = mem[_4269 + 32 len ceil32(mem[_4269])]
            if ceil32(_4325) > _4325:
                mem[_4257 + _4325 + 164] = 0
            call wNativeAddress with:
                 gas gas_remaining wei
                args mem[_4257 + 168 len _4325 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4257 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4257 + 196] == bool(mem[_4257 + 196])
                    if not mem[_4257 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 264] = ext_call.return_data[0] * treasuryFee / 1000 / 2
            mem[ceil32(return_data.size) + 296] = 0
            mem[ceil32(return_data.size) + 328] = 160
            mem[ceil32(return_data.size) + 424] = wNativeToBifiRoute.length
            mem[0] = 108
            idx = 0
            s = 0
            t = ceil32(return_data.size) + 456
            while idx < wNativeToBifiRoute.length:
                mem[t] = address(wNativeToBifiRoute[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 360] = address(treasuryAddress)
            mem[ceil32(return_data.size) + 392] = block.timestamp
            require ext_code.size(unirouterAddress)
            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0] * treasuryFee / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[ceil32(return_data.size) + 456 len 32 * wNativeToBifiRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 260
            require return_data.size >= 32
            _2978 = mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32
            require mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 260 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 291
            _3050 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260] > test266151307():
                revert with 0, 65
            if floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]) + 1 < 0 or (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]) + 261 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]) + 261
            mem[(2 * ceil32(return_data.size)) + 260] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 260 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 260]
            require return_data.size >= _2978 + (32 * _3050) + 32
            mem[(2 * ceil32(return_data.size)) + 292 len 32 * _3050] = mem[ceil32(return_data.size) + _2978 + 292 len 32 * _3050]
            if ext_call.return_data[0] and rewardPoolFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            _4258 = mem[64]
            mem[mem[64] + 36] = rewardPoolAddress
            mem[mem[64] + 68] = ext_call.return_data[0] * rewardPoolFee / 1000
            _4271 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4258 + 100] = 32
            mem[_4258 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            _4327 = mem[_4271]
            mem[_4258 + 164 len ceil32(mem[_4271])] = mem[_4271 + 32 len ceil32(mem[_4271])]
            if ceil32(_4327) > _4327:
                mem[_4258 + _4327 + 164] = 0
            call wNativeAddress with:
                 gas gas_remaining wei
                args mem[_4258 + 168 len _4327 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4258 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4258 + 196] == bool(mem[_4258 + 196])
                    if not mem[_4258 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = ext_call.return_data[0] * treasuryFee / 1000 / 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 160
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = wNativeToBifiRoute.length
            mem[0] = 108
            idx = 0
            s = 0
            t = ceil32(return_data.size) + ceil32(return_data.size) + 457
            while idx < wNativeToBifiRoute.length:
                mem[t] = address(wNativeToBifiRoute[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = address(treasuryAddress)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = block.timestamp
            require ext_code.size(unirouterAddress)
            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0] * treasuryFee / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len 32 * wNativeToBifiRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _2979 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32
            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 <= test266151307()
            require ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 261 > ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 292
            _3051 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]
            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261] > test266151307():
                revert with 0, 65
            if floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]) + 262 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]) + 262
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]
            require return_data.size >= _2979 + (32 * _3051) + 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _3051] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _2979 + 293 len 32 * _3051]
            if ext_call.return_data[0] and rewardPoolFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            _4259 = mem[64]
            mem[mem[64] + 36] = rewardPoolAddress
            mem[mem[64] + 68] = ext_call.return_data[0] * rewardPoolFee / 1000
            _4273 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4259 + 100] = 32
            mem[_4259 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            _4329 = mem[_4273]
            mem[_4259 + 164 len ceil32(mem[_4273])] = mem[_4273 + 32 len ceil32(mem[_4273])]
            if ceil32(_4329) > _4329:
                mem[_4259 + _4329 + 164] = 0
            call wNativeAddress with:
                 gas gas_remaining wei
                args mem[_4259 + 168 len _4329 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4259 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4259 + 196] == bool(mem[_4259 + 196])
                    if not mem[_4259 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = ext_call.return_data[0] * treasuryFee / 1000 / 2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = 0
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 160
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = wNativeToBifiRoute.length
            mem[0] = 108
            idx = 0
            s = 0
            t = ceil32(return_data.size) + ceil32(return_data.size) + 457
            while idx < wNativeToBifiRoute.length:
                mem[t] = address(wNativeToBifiRoute[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = address(treasuryAddress)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = block.timestamp
            require ext_code.size(unirouterAddress)
            call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, ext_call.return_data[0] * treasuryFee / 1000), 0, 160, address(treasuryAddress), block.timestamp, wNativeToBifiRoute.length, mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len 32 * wNativeToBifiRoute.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
            require return_data.size >= 32
            _2980 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32
            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 <= test266151307()
            require ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 261 > ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 292
            _3052 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]
            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261] > test266151307():
                revert with 0, 65
            if floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]) + 262 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]) + 262
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4], Mask(224, 32, ext_call.return_data[0] * treasuryFee / 1000) >> 32 + 261]
            require return_data.size >= _2980 + (32 * _3052) + 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 32 * _3052] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _2980 + 293 len 32 * _3052]
            if ext_call.return_data[0] and rewardPoolFee > -1 / ext_call.return_data[0]:
                revert with 0, 17
            _4260 = mem[64]
            mem[mem[64] + 36] = rewardPoolAddress
            mem[mem[64] + 68] = ext_call.return_data[0] * rewardPoolFee / 1000
            _4275 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4260 + 100] = 32
            mem[_4260 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(wNativeAddress):
                revert with 0, 'Address: call to non-contract'
            _4331 = mem[_4275]
            mem[_4260 + 164 len ceil32(mem[_4275])] = mem[_4275 + 32 len ceil32(mem[_4275])]
            if ceil32(_4331) > _4331:
                mem[_4260 + _4331 + 164] = 0
            call wNativeAddress with:
                 gas gas_remaining wei
                args mem[_4260 + 168 len _4331 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4260 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4260 + 196] == bool(mem[_4260 + 196])
                    if not mem[_4260 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(rewardPoolAddress)
    call rewardPoolAddress.notifyRewardAmount(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * rewardPoolFee / 1000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
