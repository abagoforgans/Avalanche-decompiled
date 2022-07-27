contract main {




// =====================  Runtime code  =====================


#
#  - rebalanceIfUnderThreshold()
#  - rebalanceVault()
#  - enterVault()
#  - _fallback()
#
uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
uint32 stor2;
address collateralReserveAddress;
uint256 stor2;
address sub_b16ce460Address;
address sub_d74d1a0eAddress;
address sub_fbc9a844Address;
address dollarAddress;
address shareAddress;
address collateralAddress;
address sub_adf5cda0Address;
address sub_3e0ca9aaAddress;
address controllerAddress;
address vaultAddress;
array of address sub_1189ebea;
mapping of uint8 stor14;
uint8 stor15;
uint256 stor15; offset 8
uint256 missing_decimals;

function sub_1189ebea(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1189ebea.length
    return sub_1189ebea[arg1]
}

function sub_3e0ca9aa(?) {
    return sub_3e0ca9aaAddress
}

function missing_decimals() {
    return missing_decimals
}

function collateralReserve() {
    return address(collateralReserveAddress)
}

function dollar() {
    return dollarAddress
}

function owner() {
    return owner
}

function pools(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function share() {
    return shareAddress
}

function sub_adf5cda0(?) {
    return sub_adf5cda0Address
}

function sub_b16ce460(?) {
    return sub_b16ce460Address
}

function sub_d74d1a0e(?) {
    return sub_d74d1a0eAddress
}

function collateral() {
    return collateralAddress
}

function controller() {
    return controllerAddress
}

function sub_fbc9a844(?) {
    return sub_fbc9a844Address
}

function vault() {
    return vaultAddress
}

function hasPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (1 == bool(stor14[address(arg1)]))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setOracleShare(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_d74d1a0eAddress = arg1
}

function setOracleDollar(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_b16ce460Address = arg1
}

function setOracleCollateral(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_fbc9a844Address = arg1
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    controllerAddress = arg1
    emit ControllerUpdated(arg1);
}

function setTreasuryPolicy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_3e0ca9aaAddress = arg1
    emit TreasuryPolicyUpdated(arg1);
}

function sharePrice() {
    require ext_code.size(sub_d74d1a0eAddress)
    staticcall sub_d74d1a0eAddress.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function dollarPrice() {
    require ext_code.size(sub_b16ce460Address)
    staticcall sub_b16ce460Address.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function minting_fee() {
    require ext_code.size(sub_3e0ca9aaAddress)
    staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setCollateralRatioPolicy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_adf5cda0Address = arg1
    emit CollateralPolicyUpdated(arg1);
}

function collateralPrice() {
    require ext_code.size(sub_fbc9a844Address)
    staticcall sub_fbc9a844Address.consult() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function redemption_fee() {
    require ext_code.size(sub_3e0ca9aaAddress)
    staticcall sub_3e0ca9aaAddress.0xcb73999f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function target_collateral_ratio() {
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0x4006311b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setCollateralReserve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    address(collateralReserveAddress) = arg1
    emit CollateralReserveUpdated(arg1);
}

function effective_collateral_ratio() {
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0xaf83136e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor14[address(arg1)]:
        revert with 0, 'poolExisted'
    stor14[address(arg1)] = 1
    sub_1189ebea.length++
    sub_1189ebea[sub_1189ebea.length] = arg1
    emit PoolAdded(arg1);
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

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if controllerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only controller or owner can trigger'
    if not arg1:
        revert with 0, 'invalidAddress'
    vaultAddress = arg1
    emit VaultUpdated(arg1);
}

function requestTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not stor14[msg.sender]:
        revert with 0, 'Only pools can use this function'
    require ext_code.size(address(collateralReserveAddress))
    call address(collateralReserveAddress).transferTo(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removePool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14[address(arg1)]) != 1:
        revert with 0, '!pool'
    stor14[address(arg1)] = 0
    idx = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if sub_1189ebea[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        sub_1189ebea[idx] = 0
        emit PoolRemoved(arg1);
    emit PoolRemoved(arg1);
}

function setCollateralAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    collateralAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    uint8(stor15.field_0) = uint8(-ext_call.return_data[31 len 1] + 18)
    Mask(248, 0, stor15.field_8) = 0
}

function sub_11863f84(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if controllerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only controller or owner can trigger'
    if arg1 <= 0:
        revert with 0, 'zero amount'
    if not address(arg2):
        revert with 0, 'Invalid _to'
    require ext_code.size(address(collateralReserveAddress))
    call address(collateralReserveAddress).transferTo(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args collateralAddress, address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xad8a28ba: arg1
}

function sub_95227705(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].0xba0b8a14 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_15]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_15]
        continue 
    return s
}

function totalUnclaimedBalance() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_15]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_15]
        continue 
    return s
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalidAddress'
    if not arg2:
        revert with 0, 'invalidAddress'
    dollarAddress = arg1
    shareAddress = arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        revert with 0, 'invalidAddress'
    collateralAddress = arg3
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    uint8(stor15.field_0) = uint8(-ext_call.return_data[31 len 1] + 18)
    Mask(248, 0, stor15.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg4:
        revert with 0, 'invalidAddress'
    sub_3e0ca9aaAddress = arg4
    emit TreasuryPolicyUpdated(arg4);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg5:
        revert with 0, 'invalidAddress'
    sub_adf5cda0Address = arg5
    emit CollateralPolicyUpdated(arg5);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg6:
        revert with 0, 'invalidAddress'
    address(collateralReserveAddress) = arg6
    emit CollateralReserveUpdated(arg6);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg7:
        revert with 0, 'invalidAddress'
    controllerAddress = arg7
    emit ControllerUpdated(arg7);
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function globalCollateralBalance() {
    mem[100] = address(collateralReserveAddress)
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(collateralReserveAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if not vaultAddress:
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_33]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_33]
            continue 
        if ext_call.return_data[0] > -1:
            revert with 0, 17
        if ext_call.return_data[0] < s:
            revert with 0, 17
        return (ext_call.return_data[0] - s)
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.vaultBalance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_34]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_34]
        continue 
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] < s:
        revert with 0, 17
    return ((2 * ext_call.return_data[0]) - s)
}

function recallFromVault() {
    if controllerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only controller or owner can trigger'
    if not vaultAddress:
        revert with 0, 'Vault does not exist'
    require ext_code.size(vaultAddress)
    call vaultAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = address(collateralReserveAddress)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(collateralAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call collateralAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0], 0) << 288)
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

function excessCollateralBalance() {
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0x4006311b with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0xaf83136e with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        return 0
    mem[(2 * ceil32(return_data.size)) + 100] = address(collateralReserveAddress)
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(collateralReserveAddress)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if not vaultAddress:
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_43]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_43]
            continue 
        if ext_call.return_data[0] > -1:
            revert with 0, 17
        if ext_call.return_data[0] < s:
            revert with 0, 17
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if 0 and ext_call.return_data[0] - s > -1 / 0:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6)
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.vaultBalance() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_44]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_44]
        continue 
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] < s:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if 0 and (2 * ext_call.return_data[0]) - s > -1 / 0:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6)
}

function calcCollateralReserveRatio() {
    mem[100] = address(collateralReserveAddress)
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(collateralReserveAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_45]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_45]
        continue 
    if ext_call.return_data[0] < s:
        revert with 0, 17
    mem[mem[64] + 4] = address(collateralReserveAddress)
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(collateralReserveAddress)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _46 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _48 = mem[_46]
    if not vaultAddress:
        idx = 0
        t = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_81]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + mem[_81]
            continue 
        if _48 > -1:
            revert with 0, 17
        if _48 < t:
            revert with 0, 17
        if not _48 - t:
            return 0
        if ext_call.return_data[0] - s and 10^6 > -1 / ext_call.return_data[0] - s:
            revert with 0, 17
        if not _48 - t:
            revert with 0, 18
        return ((10^6 * ext_call.return_data[0]) - (10^6 * s) / _48 - t)
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.vaultBalance() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _51 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _53 = mem[_51]
    idx = 0
    t = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if t > !mem[_82]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + mem[_82]
        continue 
    if _48 > !_53:
        revert with 0, 17
    if _48 + _53 < t:
        revert with 0, 17
    if not _48 + _53 - t:
        return 0
    if ext_call.return_data[0] - s and 10^6 > -1 / ext_call.return_data[0] - s:
        revert with 0, 17
    if not _48 + _53 - t:
        revert with 0, 18
    return ((10^6 * ext_call.return_data[0]) - (10^6 * s) / _48 + _53 - t)
}

function executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg3.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg3.length)) + arg4.length + 129] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 == arg3.length:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + arg4.length + 98] = 0
        call arg1.mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 102 len arg4.length - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            70,
                            0xfe54726561737572795661756c74416176653a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 200 len 26] >> 304,
                            0
            return Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        70,
                        0xfe54726561737572795661756c74416176653a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 201 len 26] >> 304,
                        0
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = Mask(32, 224, sha3(arg3[all]))
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 134 len ceil32(arg4.length)] = arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) <= arg4.length:
            mem[arg4.length + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 134 len floor32(arg4.length + 35)] = Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(arg4.length) + 134 len floor32(arg4.length + 35) + -ceil32(arg4.length) - 4]
            if floor32(arg4.length + 35) > arg4.length + 4:
                mem[(2 * arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 138] = 0
            call arg1.mem[arg4.length + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 134 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[arg4.length + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 138 len arg4.length]
        else:
            mem[arg4.length + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 134 len floor32(arg4.length + 35)] = Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, Mask(8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4, -(8 * floor32(arg4.length + 35) + -arg4.length - 4) + 256, 0) >> -(8 * floor32(arg4.length + 35) + -arg4.length - 4) + 256
            if floor32(arg4.length + 35) > arg4.length + 4:
                mem[(2 * arg4.length) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 138] = 0
            call arg1 with:
               funct Mask(32, -(8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4) + 224, Mask(32, 224, sha3(arg3[all])) >> 224, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[ceil32(ceil32(arg3.length)) + arg4.length + 129 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256) << (8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4) - 224
               value arg2 wei
                 gas gas_remaining wei
                args (Mask(8 * arg4.length, -(8 * arg4.length + 4) + 256, Mask(8 * floor32(arg4.length + 35) + -ceil32(arg4.length) - 4, -(8 * floor32(arg4.length + 35) + -arg4.length - 4) + 256, 0) >> -(8 * floor32(arg4.length + 35) + -arg4.length - 4) + 256) << (8 * arg4.length + 4) - 256)
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            70,
                            0xfe54726561737572795661756c74416176653a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[arg4.length + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 236 len 26] >> 304,
                            0
            return Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        70,
                        0xfe54726561737572795661756c74416176653a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[arg4.length + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 237 len 26] >> 304,
                        0
    ('bool', 'ext_call.success')
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function isAboveThreshold() {
    mem[100] = address(collateralReserveAddress)
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(collateralReserveAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_61]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_61]
        continue 
    if ext_call.return_data[0] < s:
        revert with 0, 17
    mem[mem[64] + 4] = address(collateralReserveAddress)
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(collateralReserveAddress)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _64 = mem[_62]
    if not vaultAddress:
        idx = 0
        t = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_113]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + mem[_113]
            continue 
        if _64 > -1:
            revert with 0, 17
        if _64 < t:
            revert with 0, 17
        if not _64 - t:
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.reservedCollateralThreshold() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0 >= mem[_121]
        else:
            if ext_call.return_data[0] - s and 10^6 > -1 / ext_call.return_data[0] - s:
                revert with 0, 17
            if not _64 - t:
                revert with 0, 18
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.reservedCollateralThreshold() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = (10^6 * ext_call.return_data[0]) - (10^6 * s) / _64 - t >= mem[_133]
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.vaultBalance() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _69 = mem[_67]
        idx = 0
        t = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_114]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + mem[_114]
            continue 
        if _64 > !_69:
            revert with 0, 17
        if _64 + _69 < t:
            revert with 0, 17
        if not _64 + _69 - t:
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.reservedCollateralThreshold() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = 0 >= mem[_122]
        else:
            if ext_call.return_data[0] - s and 10^6 > -1 / ext_call.return_data[0] - s:
                revert with 0, 17
            if not _64 + _69 - t:
                revert with 0, 18
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.reservedCollateralThreshold() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64]] = (10^6 * ext_call.return_data[0]) - (10^6 * s) / _64 + _69 - t >= mem[_134]
    return memory
      from mem[64]
       len 32
}

function globalCollateralValue() {
    if not missing_decimals:
        require ext_code.size(sub_fbc9a844Address)
        staticcall sub_fbc9a844Address.consult() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = address(collateralReserveAddress)
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(collateralReserveAddress)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if not vaultAddress:
            idx = 0
            s = 0
            while idx < sub_1189ebea.length:
                mem[0] = 13
                if not sub_1189ebea[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_1189ebea.length:
                    revert with 0, 50
                mem[0] = 13
                require ext_code.size(sub_1189ebea[idx])
                staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_103]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_103]
                continue 
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            if ext_call.return_data[0] < s:
                revert with 0, 17
            if ext_call.return_data[0] - s and ext_call.return_data[0] > -1 / ext_call.return_data[0] - s:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^6)
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.vaultBalance() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_104]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_104]
            continue 
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if 2 * ext_call.return_data[0] < s:
            revert with 0, 17
        if (2 * ext_call.return_data[0]) - s and ext_call.return_data[0] > -1 / (2 * ext_call.return_data[0]) - s:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^6)
    if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
        require ext_code.size(sub_fbc9a844Address)
        staticcall sub_fbc9a844Address.consult() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = address(collateralReserveAddress)
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(collateralReserveAddress)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if not vaultAddress:
            idx = 0
            s = 0
            while idx < sub_1189ebea.length:
                mem[0] = 13
                if not sub_1189ebea[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_1189ebea.length:
                    revert with 0, 50
                mem[0] = 13
                require ext_code.size(sub_1189ebea[idx])
                staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_101]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_101]
                continue 
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            if ext_call.return_data[0] < s:
                revert with 0, 17
            if ext_call.return_data[0] - s and ext_call.return_data[0] > -1 / ext_call.return_data[0] - s:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 10^missing_decimals > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^missing_decimals) - (s * ext_call.return_data[0] * 10^missing_decimals) / 10^6)
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.vaultBalance() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_102]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_102]
            continue 
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if 2 * ext_call.return_data[0] < s:
            revert with 0, 17
        if (2 * ext_call.return_data[0]) - s and ext_call.return_data[0] > -1 / (2 * ext_call.return_data[0]) - s:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 10^missing_decimals > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^missing_decimals) + (ext_call.return_data[0] * ext_call.return_data[0] * 10^missing_decimals) - (s * ext_call.return_data[0] * 10^missing_decimals) / 10^6)
    s = 10
    t = 1
    idx = missing_decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(sub_fbc9a844Address)
    staticcall sub_fbc9a844Address.consult() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = address(collateralReserveAddress)
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(collateralReserveAddress)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if not vaultAddress:
        idx = 0
        u = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = u
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _153 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if u > !mem[_153]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u + mem[_153]
            continue 
        if ext_call.return_data[0] > -1:
            revert with 0, 17
        if ext_call.return_data[0] < u:
            revert with 0, 17
        if ext_call.return_data[0] - u and ext_call.return_data[0] > -1 / ext_call.return_data[0] - u:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]):
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] * s * t) - (u * ext_call.return_data[0] * s * t) / 10^6)
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.vaultBalance() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    u = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _154 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if u > !mem[_154]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = u + mem[_154]
        continue 
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] < u:
        revert with 0, 17
    if (2 * ext_call.return_data[0]) - u and ext_call.return_data[0] > -1 / (2 * ext_call.return_data[0]) - u:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]):
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] * s * t) + (ext_call.return_data[0] * ext_call.return_data[0] * s * t) - (u * ext_call.return_data[0] * s * t) / 10^6)
}

function sub_958dcbe3(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if msg.sender == controllerAddress:
        if arg1 <= 0:
            revert with 0, 'zero amount'
        if not address(arg2):
            revert with 0, 'Invalid _to'
        require ext_code.size(sub_adf5cda0Address)
        staticcall sub_adf5cda0Address.0x4006311b with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_adf5cda0Address)
        staticcall sub_adf5cda0Address.0xaf83136e with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if arg1 > 0:
                revert with 0, 'Excess allowable amount'
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = address(collateralReserveAddress)
            require ext_code.size(collateralAddress)
            staticcall collateralAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(collateralReserveAddress)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            if not vaultAddress:
                idx = 0
                s = 0
                while idx < sub_1189ebea.length:
                    mem[0] = 13
                    if not sub_1189ebea[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_1189ebea.length:
                        revert with 0, 50
                    mem[0] = 13
                    require ext_code.size(sub_1189ebea[idx])
                    staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_143]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_143]
                    continue 
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                if ext_call.return_data[0] < s:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 and ext_call.return_data[0] - s > -1 / 0:
                    revert with 0, 17
                require ext_code.size(sub_3e0ca9aaAddress)
                staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _159 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 and mem[_159] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 < (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_159] / 10^6:
                    revert with 0, 17
                if arg1 > ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6) - ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_159] / 10^6):
                    revert with 0, 'Excess allowable amount'
            else:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.vaultBalance() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < sub_1189ebea.length:
                    mem[0] = 13
                    if not sub_1189ebea[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_1189ebea.length:
                        revert with 0, 50
                    mem[0] = 13
                    require ext_code.size(sub_1189ebea[idx])
                    staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_144]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_144]
                    continue 
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 0, 17
                if 2 * ext_call.return_data[0] < s:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 and (2 * ext_call.return_data[0]) - s > -1 / 0:
                    revert with 0, 17
                require ext_code.size(sub_3e0ca9aaAddress)
                staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 and mem[_160] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 < (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_160] / 10^6:
                    revert with 0, 17
                if arg1 > ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_160] / 10^6):
                    revert with 0, 'Excess allowable amount'
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only controller or owner can trigger'
        if arg1 <= 0:
            revert with 0, 'zero amount'
        if not address(arg2):
            revert with 0, 'Invalid _to'
        require ext_code.size(sub_adf5cda0Address)
        staticcall sub_adf5cda0Address.0x4006311b with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_adf5cda0Address)
        staticcall sub_adf5cda0Address.0xaf83136e with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if False and ext_call.return_data[0] > 0:
                revert with 0, 17
            if arg1 > 0:
                revert with 0, 'Excess allowable amount'
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = address(collateralReserveAddress)
            require ext_code.size(collateralAddress)
            staticcall collateralAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(collateralReserveAddress)
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            if not vaultAddress:
                idx = 0
                s = 0
                while idx < sub_1189ebea.length:
                    mem[0] = 13
                    if not sub_1189ebea[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_1189ebea.length:
                        revert with 0, 50
                    mem[0] = 13
                    require ext_code.size(sub_1189ebea[idx])
                    staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_145]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_145]
                    continue 
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                if ext_call.return_data[0] < s:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 and ext_call.return_data[0] - s > -1 / 0:
                    revert with 0, 17
                require ext_code.size(sub_3e0ca9aaAddress)
                staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 and mem[_161] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 < (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_161] / 10^6:
                    revert with 0, 17
                if arg1 > ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6) - ((ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_161] / 10^6):
                    revert with 0, 'Excess allowable amount'
            else:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.vaultBalance() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                idx = 0
                s = 0
                while idx < sub_1189ebea.length:
                    mem[0] = 13
                    if not sub_1189ebea[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_1189ebea.length:
                        revert with 0, 50
                    mem[0] = 13
                    require ext_code.size(sub_1189ebea[idx])
                    staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_146]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_146]
                    continue 
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 0, 17
                if 2 * ext_call.return_data[0] < s:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 and (2 * ext_call.return_data[0]) - s > -1 / 0:
                    revert with 0, 17
                require ext_code.size(sub_3e0ca9aaAddress)
                staticcall sub_3e0ca9aaAddress.excess_collateral_safety_margin() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _162 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 and mem[_162] > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 < (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_162] / 10^6:
                    revert with 0, 17
                if arg1 > ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6) - ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (s * ext_call.return_data[0]) / 10^6 * mem[_162] / 10^6):
                    revert with 0, 'Excess allowable amount'
    require ext_code.size(address(collateralReserveAddress))
    call address(collateralReserveAddress).transferTo(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args collateralAddress, address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xad8a28ba: arg1
}

function info() {
    require ext_code.size(sub_b16ce460Address)
    staticcall sub_b16ce460Address.consult() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d74d1a0eAddress)
    staticcall sub_d74d1a0eAddress.consult() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0x4006311b with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_adf5cda0Address)
    staticcall sub_adf5cda0Address.0xaf83136e with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not missing_decimals:
        require ext_code.size(sub_fbc9a844Address)
        staticcall sub_fbc9a844Address.consult() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 100] = address(collateralReserveAddress)
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(collateralReserveAddress)
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if not vaultAddress:
            idx = 0
            s = 0
            while idx < sub_1189ebea.length:
                mem[0] = 13
                if not sub_1189ebea[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_1189ebea.length:
                    revert with 0, 50
                mem[0] = 13
                require ext_code.size(sub_1189ebea[idx])
                staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_171]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_171]
                continue 
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            if ext_call.return_data[0] < s:
                revert with 0, 17
            if ext_call.return_data[0] - s and ext_call.return_data[0] > -1 / ext_call.return_data[0] - s:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
                revert with 0, 17
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _204 = mem[_198]
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.0xcb73999f with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^6,
                   _204,
                   mem[_220]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.vaultBalance() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _172 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_172]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_172]
            continue 
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if 2 * ext_call.return_data[0] < s:
            revert with 0, 17
        if (2 * ext_call.return_data[0]) - s and ext_call.return_data[0] > -1 / (2 * ext_call.return_data[0]) - s:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
            revert with 0, 17
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _205 = mem[_199]
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xcb73999f with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _221 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) / 10^6,
               _205,
               mem[_221]
    if bool(bool(missing_decimals < 78)) or bool(bool(missing_decimals < 32)):
        require ext_code.size(sub_fbc9a844Address)
        staticcall sub_fbc9a844Address.consult() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 100] = address(collateralReserveAddress)
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(collateralReserveAddress)
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if not vaultAddress:
            idx = 0
            s = 0
            while idx < sub_1189ebea.length:
                mem[0] = 13
                if not sub_1189ebea[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= sub_1189ebea.length:
                    revert with 0, 50
                mem[0] = 13
                require ext_code.size(sub_1189ebea[idx])
                staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > !mem[_169]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_169]
                continue 
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            if ext_call.return_data[0] < s:
                revert with 0, 17
            if ext_call.return_data[0] - s and ext_call.return_data[0] > -1 / ext_call.return_data[0] - s:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 10^missing_decimals > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
                revert with 0, 17
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _202 = mem[_196]
            require ext_code.size(sub_3e0ca9aaAddress)
            staticcall sub_3e0ca9aaAddress.0xcb73999f with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   (ext_call.return_data[0] * ext_call.return_data[0] * 10^missing_decimals) - (s * ext_call.return_data[0] * 10^missing_decimals) / 10^6,
                   _202,
                   mem[_218]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.vaultBalance() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        s = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > !mem[_170]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_170]
            continue 
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        if 2 * ext_call.return_data[0] < s:
            revert with 0, 17
        if (2 * ext_call.return_data[0]) - s and ext_call.return_data[0] > -1 / (2 * ext_call.return_data[0]) - s:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]) and 10^missing_decimals > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (s * ext_call.return_data[0]):
            revert with 0, 17
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _203 = mem[_197]
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xcb73999f with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _219 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0] * 10^missing_decimals) + (ext_call.return_data[0] * ext_call.return_data[0] * 10^missing_decimals) - (s * ext_call.return_data[0] * 10^missing_decimals) / 10^6,
               _203,
               mem[_219]
    s = 10
    t = 1
    idx = missing_decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(sub_fbc9a844Address)
    staticcall sub_fbc9a844Address.consult() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(8 * ceil32(return_data.size)) + 100] = address(collateralReserveAddress)
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(collateralReserveAddress)
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if not vaultAddress:
        idx = 0
        u = 0
        while idx < sub_1189ebea.length:
            mem[0] = 13
            if not sub_1189ebea[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                u = u
                continue 
            if idx >= sub_1189ebea.length:
                revert with 0, 50
            mem[0] = 13
            require ext_code.size(sub_1189ebea[idx])
            staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if u > !mem[_269]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u + mem[_269]
            continue 
        if ext_call.return_data[0] > -1:
            revert with 0, 17
        if ext_call.return_data[0] < u:
            revert with 0, 17
        if ext_call.return_data[0] - u and ext_call.return_data[0] > -1 / ext_call.return_data[0] - u:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]):
            revert with 0, 17
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _279 = mem[_277]
        require ext_code.size(sub_3e0ca9aaAddress)
        staticcall sub_3e0ca9aaAddress.0xcb73999f with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _285 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               (ext_call.return_data[0] * ext_call.return_data[0] * s * t) - (u * ext_call.return_data[0] * s * t) / 10^6,
               _279,
               mem[_285]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.vaultBalance() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (11 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    u = 0
    while idx < sub_1189ebea.length:
        mem[0] = 13
        if not sub_1189ebea[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if idx >= sub_1189ebea.length:
            revert with 0, 50
        mem[0] = 13
        require ext_code.size(sub_1189ebea[idx])
        staticcall sub_1189ebea[idx].unclaimed_pool_collateral() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _270 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if u > !mem[_270]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = u + mem[_270]
        continue 
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] < u:
        revert with 0, 17
    if (2 * ext_call.return_data[0]) - u and ext_call.return_data[0] > -1 / (2 * ext_call.return_data[0]) - u:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) - (u * ext_call.return_data[0]):
        revert with 0, 17
    require ext_code.size(sub_3e0ca9aaAddress)
    staticcall sub_3e0ca9aaAddress.0xc3355b8d with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _278 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _280 = mem[_278]
    require ext_code.size(sub_3e0ca9aaAddress)
    staticcall sub_3e0ca9aaAddress.0xcb73999f with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _286 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           (ext_call.return_data[0] * ext_call.return_data[0] * s * t) + (ext_call.return_data[0] * ext_call.return_data[0] * s * t) - (u * ext_call.return_data[0] * s * t) / 10^6,
           _280,
           mem[_286]
}



}
