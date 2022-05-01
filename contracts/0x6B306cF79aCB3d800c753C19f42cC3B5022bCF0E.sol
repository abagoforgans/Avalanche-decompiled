contract main {




// =====================  Runtime code  =====================


address masterchefAddress;
address pancakeswapAddress;
address tokenAddress;
address usdtAddress;
array of address sub_cc8a6154;
address owner;
address harvesterAddress;
address stor7;
array of uint256 pools;

function usdt() {
    return usdtAddress
}

function harvester() {
    return harvesterAddress
}

function owner() {
    return owner
}

function pools(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < pools.length
    return pools[arg1]
}

function sub_cc8a6154(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_cc8a6154.length
    return sub_cc8a6154[arg1]
}

function pancakeswap() {
    return pancakeswapAddress
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
    require msg.sender == stor7
    owner = stor7
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor7 = arg1
}

function changeHarvester(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    harvesterAddress = arg1
}

function addPool(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    pools.length++
    pools[pools.length] = arg1
}

function emergencyWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x5312ea8e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == harvesterAddress
    require ext_code.size(masterchefAddress)
    call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x441a3e70 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    tokenAddress = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pancakeswapAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setPancakeswap(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    pancakeswapAddress = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pancakeswapAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function emergencyWithdrawAll() {
    require msg.sender == owner
    idx = 0
    while idx < pools.length:
        mem[0] = 8
        mem[96] = 0x5312ea8e00000000000000000000000000000000000000000000000000000000
        mem[100] = pools[idx]
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x5312ea8e with:
             gas gas_remaining wei
            args pools[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function claimAllRewards() {
    require msg.sender == harvesterAddress
    idx = 0
    while idx < pools.length:
        mem[0] = 8
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
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function inCaseTokensGetStuck(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(masterchefAddress)
    call masterchefAddress.0x441a3e70 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function convertRewards() {
    require msg.sender == harvesterAddress
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 292
        while idx < sub_cc8a6154.length:
            mem[t] = sub_cc8a6154[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(pancakeswapAddress)
        call pancakeswapAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_cc8a6154.length, mem[ceil32(return_data.size) + 292 len 32 * sub_cc8a6154.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_28af99fb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
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
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 97] = 0
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

function harvest() {
    require msg.sender == harvesterAddress
    idx = 0
    while idx < pools.length:
        mem[0] = 8
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
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 292
        while idx < sub_cc8a6154.length:
            mem[t] = sub_cc8a6154[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(pancakeswapAddress)
        call pancakeswapAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, sub_cc8a6154.length, mem[ceil32(return_data.size) + 292 len 32 * sub_cc8a6154.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == harvesterAddress
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[160]
    if ext_call.return_data[158 len 2] > 600:
        revert with 0, '!DEPFEE'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
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

function withdrawEverythingToWallet() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    idx = 0
    while idx < pools.length:
        require ext_code.size(masterchefAddress)
        call masterchefAddress.0x5312ea8e with:
             gas gas_remaining wei
            args pools[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= pools.length:
            revert with 'NH{q', 50
        mem[0] = 8
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args pools[idx]
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _29 = mem[_28]
        require mem[_28] == mem[_28 + 12 len 20]
        require mem[_28 + 32] == mem[_28 + 32]
        require mem[_28 + 64] == mem[_28 + 64]
        require mem[_28 + 96] == mem[_28 + 96]
        require mem[_28 + 128] == mem[_28 + 158 len 2]
        require mem[_28 + 160] == mem[_28 + 160]
        require msg.sender == owner
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_29))
        staticcall address(_29).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _38 = mem[_37]
        require mem[_37] == mem[_37]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _38
        require ext_code.size(address(_29))
        call address(_29).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _38
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_41] == bool(mem[_41])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function depositAll() payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == harvesterAddress
    idx = 0
    while idx < pools.length:
        mem[0] = 8
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args pools[idx]
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _27 = mem[_26]
        require mem[_26] == mem[_26 + 12 len 20]
        require mem[_26 + 32] == mem[_26 + 32]
        require mem[_26 + 64] == mem[_26 + 64]
        require mem[_26 + 96] == mem[_26 + 96]
        require mem[_26 + 128] == mem[_26 + 158 len 2]
        require mem[_26 + 160] == mem[_26 + 160]
        if mem[_26 + 158 len 2] > 600:
            revert with 0, '!DEPFEE'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_27))
        staticcall address(_27).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _38 = mem[_37]
        require mem[_37] == mem[_37]
        if mem[_37] > 0:
            mem[mem[64] + 4] = masterchefAddress
            mem[mem[64] + 36] = _38
            require ext_code.size(address(_27))
            call address(_27).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args masterchefAddress, _38
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_41] == bool(mem[_41])
            mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = pools[idx]
            mem[mem[64] + 36] = _38
            require ext_code.size(masterchefAddress)
            call masterchefAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pools[idx], _38
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
