contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c371016(?)
#  - sub_9dd980fa(?)
#
address masterchefAddress;
address routerAddress;
address usdcAddress;
address wftmAddress;
address tokenAddress;
address sub_c8c5a0b3Address;
address sub_4ef9a7e4Address;
address sub_d9847d35Address;
array of address addFish;
array of address sub_816b7c05;
array of address sub_22e97d3a;
array of address sub_46078a6f;
array of address sub_de36c980;
address owner;
address harvesterAddress;
uint256 sub_889bc1bd;
address stor16;
array of uint256 pools;
uint8 stor18;
array of address sub_70294203;
mapping of uint8 stor20;

function sub_22e97d3a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_22e97d3a.length
    return address(sub_22e97d3a[arg1])
}

function compoundLP() {
    return bool(stor18)
}

function usdc() {
    return usdcAddress
}

function sub_46078a6f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_46078a6f.length
    return address(sub_46078a6f[arg1])
}

function harvester() {
    return harvesterAddress
}

function sub_4ef9a7e4(?) {
    return sub_4ef9a7e4Address
}

function sub_70294203(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_70294203[arg1])
    return address(sub_70294203[arg1][arg2])
}

function AddFish() {
    require calldata.size - 4 >= 32
    require arg1 < addFish.length
    return address(addFish[arg1])
}

function sub_816b7c05(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_816b7c05.length
    return address(sub_816b7c05[arg1])
}

function sub_889bc1bd(?) {
    return sub_889bc1bd
}

function owner() {
    return owner
}

function sub_aa4ddd52(?) {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    return pools[arg1]
}

function sub_c8c5a0b3(?) {
    return sub_c8c5a0b3Address
}

function sub_d9847d35(?) {
    return sub_d9847d35Address
}

function sub_de36c980(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_de36c980.length
    return address(sub_de36c980[arg1])
}

function wftm() {
    return wftmAddress
}

function router() {
    return routerAddress
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
    require msg.sender == stor16
    owner = stor16
}

function sub_e426dd68(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_889bc1bd = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor16 = arg1
}

function setHarvester(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    harvesterAddress = arg1
}

function sub_690cb83b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    sub_c8c5a0b3Address = address(arg1)
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

function emergencyWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'emergencyWithdraw: owner only'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x5312ea8e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'withdraw: owner only'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x441a3e70 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'claimRewards: no permission'
    require ext_code.size(masterchefAddress)
    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addPool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'addPool: owner only'
    idx = 0
    s = 0
    while idx < pools.length:
        mem[0] = 17
        if idx == -1:
            revert with 0, 17
        if pools[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        pools.length++
        pools[pools.length] = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    tokenAddress = arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function emergencyWithdrawAll() {
    if owner != msg.sender:
        revert with 0, 'emergencyWithdrawAll: owner only'
    idx = 0
    while idx < pools.length:
        mem[0] = 17
        mem[96] = 0x5312ea8e00000000000000000000000000000000000000000000000000000000
        mem[100] = pools[idx]
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x5312ea8e with:
             gas gas_remaining wei
            args pools[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimAllRewards() {
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'claimAllRewards: no permission'
    idx = 0
    while idx < pools.length:
        mem[0] = 17
        mem[96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[100] = pools[idx]
        mem[132] = 0
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pools[idx], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function sub_9b81a4b2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == owner
    addFish.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while addFish.length > idx:
            uint256(addFish[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(addFish[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while addFish.length > idx:
            uint256(addFish[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_0d689ed7(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require msg.sender == owner
    sub_46078a6f.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_46078a6f.length > idx:
            uint256(sub_46078a6f[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_46078a6f[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_46078a6f.length > idx:
            uint256(sub_46078a6f[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_48c15f54(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == owner
    uint256(sub_70294203[cd[4]]) = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while uint256(sub_70294203[cd[4]]) > idx:
            uint256(sub_70294203[cd[4]][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            address(sub_70294203[cd[4]][s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while uint256(sub_70294203[cd[4]]) > idx:
            uint256(sub_70294203[cd[4]][idx]) = 0
            idx = idx + 1
            continue 
    stor20[cd[4]] = 1
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

function setrouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    routerAddress = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_4ef9a7e4Address)
    call sub_4ef9a7e4Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_d9847d35Address)
    call sub_d9847d35Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    if ext_call.return_data[0] > 0:
        if sub_c8c5a0b3Address != tokenAddress:
            idx = 0
            s = ceil32(return_data.size) + 292
            t = 0
            while idx < sub_46078a6f.length:
                mem[s] = address(sub_46078a6f[t])
                idx = idx + 1
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_46078a6f.length, mem[ceil32(return_data.size) + 292 len 32 * sub_46078a6f.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_f2c88f24(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'setCompoundLP: owner only'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args sub_889bc1bd
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    mem[ceil32(return_data.size) + 132] = 0, mem[ceil32(return_data.size) + 132 len 28]
    staticcall address(ext_call.return_data[0]).mem[ceil32(return_data.size) + 132 len 4] with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'depostidPID token is not a Uniswap LP token. Did you update depositPID?'
    if not return_data.size:
        if ext_call.return_data[0] != 96:
            revert with 0, 'depostidPID token is not a Uniswap LP token. Did you update depositPID?'
    else:
        if return_data.size != 96:
            revert with 0, 'depostidPID token is not a Uniswap LP token. Did you update depositPID?'
    stor18 = uint8(bool(arg1))
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'deposit: no permission'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args masterchefAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function harvest() {
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'harvest: no permission'
    idx = 0
    while idx < pools.length:
        mem[0] = 17
        mem[96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[100] = pools[idx]
        mem[132] = 0
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pools[idx], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if sub_c8c5a0b3Address != tokenAddress:
            idx = 0
            s = ceil32(return_data.size) + 292
            t = 0
            while idx < sub_46078a6f.length:
                mem[s] = address(sub_46078a6f[t])
                idx = idx + 1
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_46078a6f.length, mem[ceil32(return_data.size) + 292 len 32 * sub_46078a6f.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEverythingToWallet() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'widhrawEverythingToWallet: owner only'
    idx = 0
    while idx < pools.length:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x5312ea8e with:
             gas gas_remaining wei
            args pools[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= pools.length:
            revert with 0, 50
        mem[0] = 17
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args pools[idx]
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _32 = mem[_31]
        require mem[_31] == mem[_31 + 12 len 20]
        require mem[_31 + 128] == bool(mem[_31 + 128])
        if owner != msg.sender:
            revert with 0, 'inCaseTokensGetStuck: owner only'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_32))
        staticcall address(_32).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _42 = mem[_41]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _42
        require ext_code.size(address(_32))
        call address(_32).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _42
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_45] == bool(mem[_45])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function stake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'harvest: no permission'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Stake amount must be larger than 0'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if owner != msg.sender:
        revert with 0, 'addPool: owner only'
    idx = 0
    s = 0
    while idx < pools.length:
        mem[0] = 17
        if idx == -1:
            revert with 0, 17
        if pools[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        pools.length++
        pools[pools.length] = arg1
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args masterchefAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_c4bbe94e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'harvest: no permission'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if owner != msg.sender:
        revert with 0, 'addPool: owner only'
    idx = 0
    s = 0
    while idx < pools.length:
        mem[0] = 17
        if idx == -1:
            revert with 0, 17
        if pools[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        pools.length++
        pools[pools.length] = arg1
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args masterchefAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_1f554ddc(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'withdraw all: owner only'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x441a3e70 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    if owner != msg.sender:
        revert with 0, 'inCaseTokensGetStuck: owner only'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg2:
        if owner != msg.sender:
            revert with 0, 'inCaseTokensGetStuck: owner only'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
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
        if ext_call.return_data[0] > 0:
            if sub_c8c5a0b3Address != tokenAddress:
                idx = 0
                s = (7 * ceil32(return_data.size)) + 292
                t = 0
                while idx < sub_46078a6f.length:
                    mem[s] = address(sub_46078a6f[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_46078a6f.length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * sub_46078a6f.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if owner != msg.sender:
            revert with 0, 'inCaseTokensGetStuck: owner only'
        require ext_code.size(sub_c8c5a0b3Address)
        staticcall sub_c8c5a0b3Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_c8c5a0b3Address)
        call sub_c8c5a0b3Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setPoolTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    if sub_4ef9a7e4Address == arg1:
        if sub_d9847d35Address == arg2:
            mem[96] = sub_4ef9a7e4Address
            mem[128] = sub_d9847d35Address
            sub_816b7c05.length = 2
            s = 0
            idx = 96
            while 160 > idx:
                address(sub_816b7c05[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while sub_816b7c05.length > idx:
                uint256(sub_816b7c05[idx]) = 0
                idx = idx + 1
                continue 
            mem[160] = sub_d9847d35Address
            mem[192] = sub_4ef9a7e4Address
            sub_22e97d3a.length = 2
            s = 0
            idx = 160
            while 224 > idx:
                address(sub_22e97d3a[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
        else:
            sub_d9847d35Address = arg2
            mem[100] = routerAddress
            mem[132] = -1
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = sub_4ef9a7e4Address
            mem[ceil32(return_data.size) + 128] = sub_d9847d35Address
            sub_816b7c05.length = 2
            s = 0
            idx = ceil32(return_data.size) + 96
            while ceil32(return_data.size) + 160 > idx:
                address(sub_816b7c05[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while sub_816b7c05.length > idx:
                uint256(sub_816b7c05[idx]) = 0
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 160] = sub_d9847d35Address
            mem[ceil32(return_data.size) + 192] = sub_4ef9a7e4Address
            sub_22e97d3a.length = 2
            s = 0
            idx = ceil32(return_data.size) + 160
            while ceil32(return_data.size) + 224 > idx:
                address(sub_22e97d3a[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
    else:
        sub_4ef9a7e4Address = arg1
        mem[96] = tokenAddress
        mem[128] = arg1
        addFish.length = 2
        s = 0
        idx = 96
        while 160 > idx:
            address(addFish[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 2
        while addFish.length > idx:
            uint256(addFish[idx]) = 0
            idx = idx + 1
            continue 
        mem[164] = routerAddress
        mem[196] = -1
        require ext_code.size(sub_4ef9a7e4Address)
        call sub_4ef9a7e4Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_d9847d35Address == arg2:
            mem[ceil32(return_data.size) + 160] = sub_4ef9a7e4Address
            mem[ceil32(return_data.size) + 192] = sub_d9847d35Address
            sub_816b7c05.length = 2
            s = 0
            idx = ceil32(return_data.size) + 160
            while ceil32(return_data.size) + 224 > idx:
                address(sub_816b7c05[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while sub_816b7c05.length > idx:
                uint256(sub_816b7c05[idx]) = 0
                idx = idx + 1
                continue 
            mem[ceil32(return_data.size) + 224] = sub_d9847d35Address
            mem[ceil32(return_data.size) + 256] = sub_4ef9a7e4Address
            sub_22e97d3a.length = 2
            s = 0
            idx = ceil32(return_data.size) + 224
            while ceil32(return_data.size) + 288 > idx:
                address(sub_22e97d3a[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
        else:
            sub_d9847d35Address = arg2
            mem[ceil32(return_data.size) + 164] = routerAddress
            mem[ceil32(return_data.size) + 196] = -1
            require ext_code.size(arg2)
            call arg2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, -1
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 160] = sub_4ef9a7e4Address
            mem[(2 * ceil32(return_data.size)) + 192] = sub_d9847d35Address
            sub_816b7c05.length = 2
            s = 0
            idx = (2 * ceil32(return_data.size)) + 160
            while (2 * ceil32(return_data.size)) + 224 > idx:
                address(sub_816b7c05[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 2
            while sub_816b7c05.length > idx:
                uint256(sub_816b7c05[idx]) = 0
                idx = idx + 1
                continue 
            mem[(2 * ceil32(return_data.size)) + 224] = sub_d9847d35Address
            mem[(2 * ceil32(return_data.size)) + 256] = sub_4ef9a7e4Address
            sub_22e97d3a.length = 2
            s = 0
            idx = (2 * ceil32(return_data.size)) + 224
            while (2 * ceil32(return_data.size)) + 288 > idx:
                address(sub_22e97d3a[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
    idx = 2
    while sub_22e97d3a.length > idx:
        uint256(sub_22e97d3a[idx]) = 0
        idx = idx + 1
        continue 
}

function compoundRewards() {
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
    if bool(stor18) != 1:
        if ext_call.return_data[0]:
            require ext_code.size(sub_4ef9a7e4Address)
            staticcall sub_4ef9a7e4Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_4ef9a7e4Address == tokenAddress:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_889bc1bd
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[128] == bool(ext_call.return_data[128])
                if ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args masterchefAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_889bc1bd, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                idx = 0
                s = (2 * ceil32(return_data.size)) + 292
                t = 0
                while idx < addFish.length:
                    mem[s] = address(addFish[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, addFish.length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * addFish.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_4ef9a7e4Address)
                staticcall sub_4ef9a7e4Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_889bc1bd
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[128] == bool(ext_call.return_data[128])
    else:
        if ext_call.return_data[0]:
            if sub_4ef9a7e4Address == tokenAddress:
                idx = 0
                s = ceil32(return_data.size) + 292
                t = 0
                while idx < sub_816b7c05.length:
                    mem[s] = address(sub_816b7c05[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, sub_816b7c05.length, mem[ceil32(return_data.size) + 292 len 32 * sub_816b7c05.length]
            else:
                if sub_d9847d35Address == tokenAddress:
                    idx = 0
                    s = ceil32(return_data.size) + 292
                    t = 0
                    while idx < sub_22e97d3a.length:
                        mem[s] = address(sub_22e97d3a[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, sub_22e97d3a.length, mem[ceil32(return_data.size) + 292 len 32 * sub_22e97d3a.length]
                else:
                    idx = 0
                    s = ceil32(return_data.size) + 292
                    t = 0
                    while idx < addFish.length:
                        mem[s] = address(addFish[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, addFish.length, mem[ceil32(return_data.size) + 292 len 32 * addFish.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_4ef9a7e4Address)
                    staticcall sub_4ef9a7e4Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = 0
                    while idx < sub_816b7c05.length:
                        mem[s] = address(sub_816b7c05[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, sub_816b7c05.length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * sub_816b7c05.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_4ef9a7e4Address)
            staticcall sub_4ef9a7e4Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d9847d35Address)
            staticcall sub_d9847d35Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args sub_4ef9a7e4Address, sub_d9847d35Address, ext_call.return_data[0], ext_call.return_data[0], 0, 0, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_889bc1bd
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_call.return_data[128] == bool(ext_call.return_data[128])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args masterchefAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(masterchefAddress)
                call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_889bc1bd, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_acc390d4(?) {
    if harvesterAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'harvestandcompound: no permission'
    idx = 0
    while idx < pools.length:
        mem[0] = 17
        mem[96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[100] = pools[idx]
        mem[132] = 0
        require ext_code.size(masterchefAddress)
        call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args pools[idx], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
    if bool(stor18) != 1:
        if ext_call.return_data[0]:
            require ext_code.size(sub_4ef9a7e4Address)
            staticcall sub_4ef9a7e4Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_4ef9a7e4Address == tokenAddress:
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_889bc1bd
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[128] == bool(ext_call.return_data[128])
                if ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args masterchefAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(masterchefAddress)
                    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_889bc1bd, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                idx = 0
                s = (2 * ceil32(return_data.size)) + 292
                t = 0
                while idx < addFish.length:
                    mem[s] = address(addFish[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, addFish.length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * addFish.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_4ef9a7e4Address)
                staticcall sub_4ef9a7e4Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(masterchefAddress)
                staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_889bc1bd
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[128] == bool(ext_call.return_data[128])
    else:
        if ext_call.return_data[0]:
            if sub_4ef9a7e4Address == tokenAddress:
                idx = 0
                s = ceil32(return_data.size) + 292
                t = 0
                while idx < sub_816b7c05.length:
                    mem[s] = address(sub_816b7c05[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, sub_816b7c05.length, mem[ceil32(return_data.size) + 292 len 32 * sub_816b7c05.length]
            else:
                if sub_d9847d35Address == tokenAddress:
                    idx = 0
                    s = ceil32(return_data.size) + 292
                    t = 0
                    while idx < sub_22e97d3a.length:
                        mem[s] = address(sub_22e97d3a[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, sub_22e97d3a.length, mem[ceil32(return_data.size) + 292 len 32 * sub_22e97d3a.length]
                else:
                    idx = 0
                    s = ceil32(return_data.size) + 292
                    t = 0
                    while idx < addFish.length:
                        mem[s] = address(addFish[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, addFish.length, mem[ceil32(return_data.size) + 292 len 32 * addFish.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_4ef9a7e4Address)
                    staticcall sub_4ef9a7e4Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 292
                    t = 0
                    while idx < sub_816b7c05.length:
                        mem[s] = address(sub_816b7c05[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, sub_816b7c05.length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * sub_816b7c05.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_4ef9a7e4Address)
            staticcall sub_4ef9a7e4Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_d9847d35Address)
            staticcall sub_d9847d35Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args sub_4ef9a7e4Address, sub_d9847d35Address, ext_call.return_data[0], ext_call.return_data[0], 0, 0, this.address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(masterchefAddress)
            staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args sub_889bc1bd
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_call.return_data[128] == bool(ext_call.return_data[128])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args masterchefAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(masterchefAddress)
                call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_889bc1bd, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function removeLiquidity(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'removeLiquidity: owner only'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    mem[ceil32(return_data.size) + 132] = 0, mem[ceil32(return_data.size) + 132 len 28]
    staticcall address(ext_call.return_data[0]).mem[ceil32(return_data.size) + 132 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            if arg2 == 1:
                if owner != msg.sender:
                    revert with 0, 'inCaseTokensGetStuck: owner only'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if ext_call.return_data[0] != 96:
                if arg2 == 1:
                    if owner != msg.sender:
                        revert with 0, 'inCaseTokensGetStuck: owner only'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, '_removeLiquidity: balance must be > 0'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if arg2 == 1:
                    if owner != msg.sender:
                        revert with 0, 'inCaseTokensGetStuck: owner only'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if owner != msg.sender:
                        revert with 0, 'inCaseTokensGetStuck: owner only'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if not ext_call.success:
            if arg2 == 1:
                if owner != msg.sender:
                    revert with 0, 'inCaseTokensGetStuck: owner only'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if return_data.size != 96:
                if arg2 == 1:
                    if owner != msg.sender:
                        revert with 0, 'inCaseTokensGetStuck: owner only'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, '_removeLiquidity: balance must be > 0'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if arg2 == 1:
                    if owner != msg.sender:
                        revert with 0, 'inCaseTokensGetStuck: owner only'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if owner != msg.sender:
                        revert with 0, 'inCaseTokensGetStuck: owner only'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cfba6282(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dumpcoins: owner only'
    if bool(stor20[arg1]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token dump path not defined for this pid'
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == bool(ext_call.return_data[128])
    require ext_code.size(address(ext_call.return_data[0]))
    if bool(stor18) != 1:
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        s = (2 * ceil32(return_data.size)) + 292
        t = 0
        while idx < uint256(sub_70294203[arg1]):
            mem[s] = address(sub_70294203[arg1][t])
            idx = idx + 1
            s = s + 32
            t = t + 1
            continue 
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(2 * ceil32(return_data.size)) + 292 len 32 * uint256(sub_70294203[arg1])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] == wftmAddress:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if tokenAddress == address(ext_call.return_data[0]):
                if tokenAddress != ext_call.return_data[12 len 20]:
                    if sub_c8c5a0b3Address != ext_call.return_data[12 len 20]:
                        require ext_code.size(sub_4ef9a7e4Address)
                        staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 292
                        t = 0
                        while idx < uint256(sub_70294203[arg1]):
                            mem[s] = address(sub_70294203[arg1][t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(7 * ceil32(return_data.size)) + 292 len 32 * uint256(sub_70294203[arg1])]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if sub_c8c5a0b3Address == address(ext_call.return_data[0]):
                    if tokenAddress != ext_call.return_data[12 len 20]:
                        if sub_c8c5a0b3Address != ext_call.return_data[12 len 20]:
                            require ext_code.size(sub_4ef9a7e4Address)
                            staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = (7 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < uint256(sub_70294203[arg1]):
                                mem[s] = address(sub_70294203[arg1][t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(7 * ceil32(return_data.size)) + 292 len 32 * uint256(sub_70294203[arg1])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[(6 * ceil32(return_data.size)) + 96] = address(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                    sub_de36c980.length = 2
                    s = 0
                    idx = (6 * ceil32(return_data.size)) + 96
                    while (6 * ceil32(return_data.size)) + 160 > idx:
                        address(sub_de36c980[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while sub_de36c980.length > idx:
                        uint256(sub_de36c980[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(sub_d9847d35Address)
                    staticcall sub_d9847d35Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + 356
                    t = 0
                    while idx < sub_de36c980.length:
                        mem[s] = address(sub_de36c980[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_de36c980.length, mem[(7 * ceil32(return_data.size)) + 356 len 32 * sub_de36c980.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if tokenAddress != address(ext_call.return_data[0]):
                        if sub_c8c5a0b3Address != address(ext_call.return_data[0]):
                            require ext_code.size(sub_4ef9a7e4Address)
                            staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 356
                            t = 0
                            while idx < uint256(sub_70294203[arg1]):
                                mem[s] = address(sub_70294203[arg1][t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(8 * ceil32(return_data.size)) + 356 len 32 * uint256(sub_70294203[arg1])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != usdcAddress:
                if tokenAddress == ext_call.return_data[12 len 20]:
                    if tokenAddress != address(ext_call.return_data[0]):
                        if sub_c8c5a0b3Address != address(ext_call.return_data[0]):
                            require ext_code.size(sub_4ef9a7e4Address)
                            staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < uint256(sub_70294203[arg1]):
                                mem[s] = address(sub_70294203[arg1][t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(8 * ceil32(return_data.size)) + 292 len 32 * uint256(sub_70294203[arg1])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if sub_c8c5a0b3Address == ext_call.return_data[12 len 20]:
                        if tokenAddress != address(ext_call.return_data[0]):
                            if sub_c8c5a0b3Address != address(ext_call.return_data[0]):
                                require ext_code.size(sub_4ef9a7e4Address)
                                staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 292
                                t = 0
                                while idx < uint256(sub_70294203[arg1]):
                                    mem[s] = address(sub_70294203[arg1][t])
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(8 * ceil32(return_data.size)) + 292 len 32 * uint256(sub_70294203[arg1])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                        sub_de36c980.length = 2
                        s = 0
                        idx = (7 * ceil32(return_data.size)) + 96
                        while (7 * ceil32(return_data.size)) + 160 > idx:
                            address(sub_de36c980[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 2
                        while sub_de36c980.length > idx:
                            uint256(sub_de36c980[idx]) = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(sub_d9847d35Address)
                        staticcall sub_d9847d35Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 356
                        t = 0
                        while idx < sub_de36c980.length:
                            mem[s] = address(sub_de36c980[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_de36c980.length, mem[(8 * ceil32(return_data.size)) + 356 len 32 * sub_de36c980.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if tokenAddress != address(ext_call.return_data[0]):
                            if sub_c8c5a0b3Address != address(ext_call.return_data[0]):
                                require ext_code.size(sub_4ef9a7e4Address)
                                staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 356
                                t = 0
                                while idx < uint256(sub_70294203[arg1]):
                                    mem[s] = address(sub_70294203[arg1][t])
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(10 * ceil32(return_data.size)) + 356 len 32 * uint256(sub_70294203[arg1])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if tokenAddress == address(ext_call.return_data[0]):
                    if tokenAddress != ext_call.return_data[12 len 20]:
                        if sub_c8c5a0b3Address != ext_call.return_data[12 len 20]:
                            require ext_code.size(sub_4ef9a7e4Address)
                            staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 292
                            t = 0
                            while idx < uint256(sub_70294203[arg1]):
                                mem[s] = address(sub_70294203[arg1][t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(8 * ceil32(return_data.size)) + 292 len 32 * uint256(sub_70294203[arg1])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if sub_c8c5a0b3Address == address(ext_call.return_data[0]):
                        if tokenAddress != ext_call.return_data[12 len 20]:
                            if sub_c8c5a0b3Address != ext_call.return_data[12 len 20]:
                                require ext_code.size(sub_4ef9a7e4Address)
                                staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 292
                                t = 0
                                while idx < uint256(sub_70294203[arg1]):
                                    mem[s] = address(sub_70294203[arg1][t])
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(8 * ceil32(return_data.size)) + 292 len 32 * uint256(sub_70294203[arg1])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[(7 * ceil32(return_data.size)) + 96] = address(ext_call.return_data[0])
                        mem[(7 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
                        sub_de36c980.length = 2
                        s = 0
                        idx = (7 * ceil32(return_data.size)) + 96
                        while (7 * ceil32(return_data.size)) + 160 > idx:
                            address(sub_de36c980[s]) = mem[idx + 12 len 20]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 2
                        while sub_de36c980.length > idx:
                            uint256(sub_de36c980[idx]) = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(sub_d9847d35Address)
                        staticcall sub_d9847d35Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 356
                        t = 0
                        while idx < sub_de36c980.length:
                            mem[s] = address(sub_de36c980[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_de36c980.length, mem[(8 * ceil32(return_data.size)) + 356 len 32 * sub_de36c980.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if tokenAddress != address(ext_call.return_data[0]):
                            if sub_c8c5a0b3Address != address(ext_call.return_data[0]):
                                require ext_code.size(sub_4ef9a7e4Address)
                                staticcall sub_4ef9a7e4Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = 0
                                s = (10 * ceil32(return_data.size)) + 356
                                t = 0
                                while idx < uint256(sub_70294203[arg1]):
                                    mem[s] = address(sub_70294203[arg1][t])
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, uint256(sub_70294203[arg1]), mem[(10 * ceil32(return_data.size)) + 356 len 32 * uint256(sub_70294203[arg1])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
