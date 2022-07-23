contract main {




// =====================  Runtime code  =====================


address masterchefAddress;
address pairAddress;
address pair2Address;
address usdcAddress;
address wavaxAddress;
address sub_0b907198Address;
address tokenAddress;
address owner;
address stor8;
address harvesterAddress;

function sub_0b907198(?) {
    return sub_0b907198Address
}

function wavax() {
    return wavaxAddress
}

function usdc() {
    return usdcAddress
}

function harvester() {
    return harvesterAddress
}

function pair2() {
    return pair2Address
}

function owner() {
    return owner
}

function pair() {
    return pairAddress
}

function masterchef() {
    return masterchefAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    require msg.sender == stor8
    owner = stor8
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor8 = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    tokenAddress = arg1
}

function setHarvester(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    harvesterAddress = arg1
}

function sub_3ac77a48(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'setMC: owner only'
    masterchefAddress = address(arg1)
}

function isLP(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[132] = 0, mem[132 len 28]
    staticcall arg1.mem[132 len 4] with:
            gas gas_remaining wei
    if not ext_call.success:
        return bool(ext_call.success)
    if not return_data.size:
        return 0
    return (96 == return_data.size)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'withdraw: owner only'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.withdrawFromSP(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimRewards() {
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'claimRewards: no permission'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.withdrawFromSP(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'inCaseTokensGetStuck: owner only'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit() {
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'deposit: no permission'
    require ext_code.size(sub_0b907198Address)
    staticcall sub_0b907198Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x78c77a24 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function inCaseTokensGetStuck(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'inCaseTokensGetStuck: owner only'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'harvest: no permission'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stake amount must be larger than 0'
    require ext_code.size(sub_0b907198Address)
    call sub_0b907198Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_0b907198Address)
    staticcall sub_0b907198Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x78c77a24 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_28af99fb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'executeTransaction: owner only'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 0
    delegate address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not delegate.return_code:
        revert with 0, 'Reverted.'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'executeTransaction: owner only'
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[arg3.length + ceil32(ceil32(arg3.length)) + 97] = 0
    call arg1.mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'Reverted.'
    if not return_data.size:
        return Array(len=arg3.length, data=arg3[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_3d4ebb4c(?) {
    if owner != msg.sender:
        revert with 0, 'harvest: no permission'
    require ext_code.size(sub_0b907198Address)
    staticcall sub_0b907198Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0b907198Address)
    call sub_0b907198Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_0b907198Address)
    staticcall sub_0b907198Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x78c77a24 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawall() {
    if owner != msg.sender:
        revert with 0, 'withdraw all: owner only'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.getCompoundedYUSDDeposit(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    call masterchefAddress.withdrawFromSP(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'inCaseTokensGetStuck: owner only'
    require ext_code.size(sub_0b907198Address)
    staticcall sub_0b907198Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0b907198Address)
    call sub_0b907198Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function convertRewards() {
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'convertRewards: no permission'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '_convertRewards: amount == 0'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args pairAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
        revert with 0, 17
    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
        revert with 0, 17
    if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
        revert with 0, 18
    require ext_code.size(pairAddress)
    call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function harvest() {
    if msg.sender == harvesterAddress:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.withdrawFromSP(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_convertRewards: amount == 0'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pairAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(pairAddress)
        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
    else:
        if owner != msg.sender:
            revert with 0, 'harvest: no permission'
        require ext_code.size(masterchefAddress)
        call masterchefAddress.withdrawFromSP(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_convertRewards: amount == 0'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pairAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(pairAddress)
        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_acc390d4(?) {
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'harvestandcompound: no permission'
        require ext_code.size(masterchefAddress)
        call masterchefAddress.withdrawFromSP(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_convertRewards: amount == 0'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pairAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(pairAddress)
        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wavaxAddress)
        staticcall wavaxAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_compoundRewards: amount == 0'
        require ext_code.size(wavaxAddress)
        call wavaxAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pair2Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(pair2Address)
        staticcall pair2Address.getReserves() with:
                gas gas_remaining wei
    else:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.withdrawFromSP(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_convertRewards: amount == 0'
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pairAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        mem[(4 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = 128
        mem[(4 * ceil32(return_data.size)) + 260] = 0
        mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(pairAddress)
        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(wavaxAddress)
        staticcall wavaxAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_compoundRewards: amount == 0', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 132] = pair2Address
        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(wavaxAddress)
        call wavaxAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pair2Address, ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 128] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        require ext_code.size(pair2Address)
        staticcall pair2Address.getReserves() with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 132 len 13 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0]):
        revert with 0, 17
    if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
        revert with 0, 17
    if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
        revert with 0, 18
    require ext_code.size(pair2Address)
    call pair2Address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_0b907198Address)
    staticcall sub_0b907198Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x78c77a24 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function compoundRewards() {
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'compoundRewards: no permission'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_convertRewards: amount == 0'
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pairAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        mem[(4 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = 128
        mem[(4 * ceil32(return_data.size)) + 260] = 0
        mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(pairAddress)
        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(wavaxAddress)
        staticcall wavaxAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_compoundRewards: amount == 0', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 132] = pair2Address
        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(wavaxAddress)
        call wavaxAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pair2Address, ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 128] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        require ext_code.size(pair2Address)
        staticcall pair2Address.getReserves() with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 132 len 13 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        require ext_code.size(pair2Address)
        call pair2Address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_0b907198Address)
        staticcall sub_0b907198Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x78c77a24 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_convertRewards: amount == 0'
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pairAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(pairAddress)
        staticcall pairAddress.getReserves() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        mem[(4 * ceil32(return_data.size)) + 164] = 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        mem[(4 * ceil32(return_data.size)) + 228] = 128
        mem[(4 * ceil32(return_data.size)) + 260] = 0
        mem[(4 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(pairAddress)
        call pairAddress.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(wavaxAddress)
        staticcall wavaxAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, '_compoundRewards: amount == 0', mem[(6 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 132] = pair2Address
        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(wavaxAddress)
        call wavaxAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pair2Address, ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 128] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        require ext_code.size(pair2Address)
        staticcall pair2Address.getReserves() with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 132 len 13 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        mem[(8 * ceil32(return_data.size)) + 196] = 0
        mem[(8 * ceil32(return_data.size)) + 228] = this.address
        mem[(8 * ceil32(return_data.size)) + 260] = 128
        mem[(8 * ceil32(return_data.size)) + 292] = 0
        mem[(8 * ceil32(return_data.size)) + 324 len 0] = None
        require ext_code.size(pair2Address)
        call pair2Address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0, None
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_0b907198Address)
        staticcall sub_0b907198Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x78c77a24 with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(10 * ceil32(return_data.size)) + 196 len 17 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
