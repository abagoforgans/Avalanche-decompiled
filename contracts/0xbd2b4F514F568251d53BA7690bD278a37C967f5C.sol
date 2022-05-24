contract main {




// =====================  Runtime code  =====================


#
#  - sub_3419ba23(?)
#  - withdrawAllTo(address arg1, address arg2)
#  - withdrawTo(address arg1, uint256 arg2, address arg3)
#  - approveToken(address arg1, address arg2, uint256 arg3)
#  - withdraw(address arg1, uint256 arg2)
#  - withdrawAll(address arg1)
#
address owner;
mapping of uint8 stor1;
address stor10;
address stor11;
uint256 stor12;
address stor2;
uint32 stor3;
address stor3;
address stor4;
address sub_17fcb39bAddress;
uint256 stor6;
array of uint8 stor7;
array of uint8 stor8;
array of address sub_52cc9199;

function sub_17fcb39b(?) {
    return sub_17fcb39bAddress
}

function sub_336e00c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor7.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor7', 7))[uint8(arg1)])
}

function sub_52cc9199(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_52cc9199.length
    return sub_52cc9199[arg1]
}

function owner() {
    return owner
}

function executors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_fcddaeee(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor8.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor8', 8))[uint8(arg1)])
}

function _fallback() payable {
    revert
}

function getTokens() {
    return address(stor3), stor4
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f3bdca51(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function sub_a0fd0e5b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_17fcb39bAddress = address(arg1)
}

function addExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit ExecutorUpdated(1, arg1);
    stor1[address(arg1)] = 1
}

function removeExecutor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit ExecutorUpdated(0, arg1);
    stor1[address(arg1)] = 0
}

function sub_e7aa29e3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor3) = address(arg1)
    stor4 = address(arg2)
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

function sub_a683bfba(?) {
    require ext_code.size(stor10)
    staticcall stor10.0x93f1a40b with:
            gas gas_remaining wei
           args stor12, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function wrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(sub_17fcb39bAddress)
    call sub_17fcb39bAddress.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unwrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(sub_17fcb39bAddress)
    call sub_17fcb39bAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f53cdbcb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = address(arg1)
    require ext_code.size(stor10)
    staticcall stor10.REWARD() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor11 = ext_call.return_data[12 len 20]
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor10)
    call stor10.deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor12, arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor10)
    call stor10.withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor12, arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + arg3.length + 128] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
}

function removeLiquidity(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor2)
    call stor2.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, uint32(stor3), stor4, arg1, arg2, arg3, address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender);
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_dd730467(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg3:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if arg3:
            if arg3 * ext_call.return_data[0] / arg3 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (arg3 * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function sub_0a973176(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    mem[160] = 1
    mem[128] = stor11
    require ext_code.size(stor10)
    staticcall stor10.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor12, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg1:
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 320
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 64, 128, 1, mem[ceil32(return_data.size) + 320], 1, ext_call.return_data[0]
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 320
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 64, 128, 1, mem[(2 * ceil32(return_data.size)) + 320], 1, 2 * ext_call.return_data[0]
}

function sub_601fca25(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0, 'Executable: caller is not the executor'
    stor7.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor7.length + 31 / 32 > idx:
            uint8(stor7[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            uint256(stor7) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor7)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        s = sha3(7)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5 * None + 3 / 32)
        while stor7.length + 31 / 32 > idx:
            uint8(stor7[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_4d7805a3(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
        if owner != msg.sender:
            if not stor1[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor10)
    call stor10.withdrawAndHarvest(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor12, arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor2)
    call stor2.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, uint32(stor3), stor4, arg1, arg2, arg3, address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    emit RemoveLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender);
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_87bd19d1(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0, 'Executable: caller is not the executor'
    stor8.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor8.length + 31 / 32 > idx:
            uint8(stor8[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            uint256(stor8) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor8)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        s = sha3(8)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5 * None + 3 / 32)
        while stor8.length + 31 / 32 > idx:
            uint8(stor8[idx]) = 0
            idx = idx + 1
            continue 
    sub_52cc9199.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_52cc9199.length > idx:
            sub_52cc9199[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * ('cd', 4).length) + 160
        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
            sub_52cc9199[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_52cc9199.length > idx:
            sub_52cc9199[idx] = 0
            idx = idx + 1
            continue 
}

function addLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    if not arg1:
        if not arg2:
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, 0, 0, address(this.address), block.timestamp + 300
        else:
            require arg2
            if (100 * arg2) - (stor6 * arg2) / arg2 != -stor6 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, 0, (100 * arg2) - (stor6 * arg2) / 100, address(this.address), block.timestamp + 300
    else:
        require arg1
        if (100 * arg1) - (stor6 * arg1) / arg1 != -stor6 + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, (100 * arg1) - (stor6 * arg1) / 100, 0, address(this.address), block.timestamp + 300
        else:
            require arg2
            if (100 * arg2) - (stor6 * arg2) / arg2 != -stor6 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, (100 * arg1) - (stor6 * arg1) / 100, (100 * arg2) - (stor6 * arg2) / 100, address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    emit AddLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender);
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function addLiquidityAndStake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
        if owner != msg.sender:
            if not stor1[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    if not arg1:
        if not arg2:
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, 0, 0, address(this.address), block.timestamp + 300
        else:
            require arg2
            if (100 * arg2) - (stor6 * arg2) / arg2 != -stor6 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, 0, (100 * arg2) - (stor6 * arg2) / 100, address(this.address), block.timestamp + 300
    else:
        require arg1
        if (100 * arg1) - (stor6 * arg1) / arg1 != -stor6 + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, (100 * arg1) - (stor6 * arg1) / 100, 0, address(this.address), block.timestamp + 300
        else:
            require arg2
            if (100 * arg2) - (stor6 * arg2) / arg2 != -stor6 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, (100 * arg1) - (stor6 * arg1) / 100, (100 * arg2) - (stor6 * arg2) / 100, address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    emit AddLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender);
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0, 'Executable: caller is not the executor'
    require ext_code.size(stor10)
    call stor10.deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor12, ext_call.return_data[64], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_077d97d7(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _58 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_58] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_58 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_58 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _58
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _75 = mem[96]
    idx = 0
    while idx < _75:
        require idx < mem[96]
        _77 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _79 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _81 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        _82 = mem[64]
        _83 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
        s = 0
        while s < _83:
            mem[_82 + s] = mem[_81 + s + 32]
            _75 = mem[96]
            s = s + 32
            continue 
        if ceil32(_83) <= _83:
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _82 + _83 + -mem[64] - 4]
            if return_data.size:
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_91] = return_data.size
                mem[_91 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_82 + _83] = 0
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _82 + _83 + -mem[64] - 4]
            if return_data.size:
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_93] = return_data.size
                mem[_93 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _75 = mem[96]
        idx = idx + 1
        continue 
}

function claimRewards() {
    if owner == msg.sender:
        mem[96] = 1
        mem[160] = 1
        mem[128] = stor11
        mem[228] = stor12
        mem[260] = this.address
        require ext_code.size(stor10)
        staticcall stor10.pendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor12, this.address
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[192] = ext_call.return_data[0]
        require ext_code.size(stor10)
        call stor10.harvest(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args stor12, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224] = 1
        mem[ceil32(return_data.size) + 256] = call.data[calldata.size]
        mem[ceil32(return_data.size) + 288] = 1
        mem[64] = ceil32(return_data.size) + 352
        mem[ceil32(return_data.size) + 320] = call.data[calldata.size]
        idx = 0
        while idx < 1:
            require idx < stor7.length
            require idx < stor8.length
            mem[0] = 8
            require idx < mem[160]
            _394 = mem[(32 * idx) + 192]
            require idx < mem[96]
            _407 = mem[(32 * idx) + 128]
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
                if owner != msg.sender:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if not stor1[address(msg.sender)]:
                        revert with 0, 'Executable: caller is not the executor'
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_17fcb39bAddress)
                call sub_17fcb39bAddress.0xd0e30db0 with:
                   value _394 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = address(_407)
                require idx < mem[ceil32(return_data.size) + 288]
                mem[(32 * idx) + ceil32(return_data.size) + 320] = _394
            else:
                if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]:
                    require idx < mem[ceil32(return_data.size) + 224]
                    mem[(32 * idx) + ceil32(return_data.size) + 256] = mem[(32 * idx) + 140 len 20]
                    require idx < mem[ceil32(return_data.size) + 288]
                    mem[(32 * idx) + ceil32(return_data.size) + 320] = mem[(32 * idx) + 192]
                else:
                    require idx < sub_52cc9199.length
                    mem[0] = 9
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_52cc9199[idx])
                    staticcall sub_52cc9199[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _587 = mem[_567]
                    require mem[_567] == mem[_567]
                    require ext_code.size(address(_407))
                    call address(_407).leave(uint256 arg1) with:
                         gas gas_remaining wei
                        args _394
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_52cc9199[idx])
                    staticcall sub_52cc9199[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _631 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _639 = mem[_631]
                    require mem[_631] == mem[_631]
                    require idx < mem[ceil32(return_data.size) + 224]
                    mem[(32 * idx) + ceil32(return_data.size) + 256] = sub_52cc9199[idx]
                    require idx < mem[ceil32(return_data.size) + 288]
                    mem[(32 * idx) + ceil32(return_data.size) + 320] = _639 - _587
            idx = idx + 1
            continue 
        _373 = mem[64]
        mem[mem[64]] = 64
        _415 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
        idx = 0
        s = ceil32(return_data.size) + 256
        t = mem[64] + 96
        while idx < _415:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_373 + 32] = (32 * _415) + 96
        _671 = mem[ceil32(return_data.size) + 288]
        mem[_373 + (32 * _415) + 96] = mem[ceil32(return_data.size) + 288]
        mem[_373 + (32 * _415) + 128 len 32 * _671] = mem[ceil32(return_data.size) + 320 len 32 * _671]
        return memory
          from mem[64]
           len _373 + (32 * _415) + (32 * _671) + -mem[64] + 128
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    mem[96] = 1
    mem[160] = 1
    mem[128] = stor11
    mem[228] = stor12
    mem[260] = this.address
    require ext_code.size(stor10)
    staticcall stor10.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor12, this.address
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[192] = ext_call.return_data[0]
    require ext_code.size(stor10)
    call stor10.harvest(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args stor12, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224] = 1
    mem[ceil32(return_data.size) + 256] = call.data[calldata.size]
    mem[ceil32(return_data.size) + 288] = 1
    mem[64] = ceil32(return_data.size) + 352
    mem[ceil32(return_data.size) + 320] = call.data[calldata.size]
    idx = 0
    while idx < 1:
        require idx < stor7.length
        require idx < stor8.length
        mem[0] = 8
        require idx < mem[160]
        _402 = mem[(32 * idx) + 192]
        require idx < mem[96]
        _411 = mem[(32 * idx) + 128]
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor7', 7))[uint8(idx)]:
            if owner != msg.sender:
                mem[0] = msg.sender
                mem[32] = 1
                if not stor1[address(msg.sender)]:
                    revert with 0, 'Executable: caller is not the executor'
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_17fcb39bAddress)
            call sub_17fcb39bAddress.0xd0e30db0 with:
               value _402 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[ceil32(return_data.size) + 224]
            mem[(32 * idx) + ceil32(return_data.size) + 256] = address(_411)
            require idx < mem[ceil32(return_data.size) + 288]
            mem[(32 * idx) + ceil32(return_data.size) + 320] = _402
        else:
            if not stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor8', 8))[uint8(idx)]:
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = mem[(32 * idx) + 140 len 20]
                require idx < mem[ceil32(return_data.size) + 288]
                mem[(32 * idx) + ceil32(return_data.size) + 320] = mem[(32 * idx) + 192]
            else:
                require idx < sub_52cc9199.length
                mem[0] = 9
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_52cc9199[idx])
                staticcall sub_52cc9199[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _571 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _595 = mem[_571]
                require mem[_571] == mem[_571]
                require ext_code.size(address(_411))
                call address(_411).leave(uint256 arg1) with:
                     gas gas_remaining wei
                    args _402
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_52cc9199[idx])
                staticcall sub_52cc9199[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _643 = mem[_635]
                require mem[_635] == mem[_635]
                require idx < mem[ceil32(return_data.size) + 224]
                mem[(32 * idx) + ceil32(return_data.size) + 256] = sub_52cc9199[idx]
                require idx < mem[ceil32(return_data.size) + 288]
                mem[(32 * idx) + ceil32(return_data.size) + 320] = _643 - _595
        idx = idx + 1
        continue 
    _385 = mem[64]
    mem[mem[64]] = 64
    _419 = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    idx = 0
    s = ceil32(return_data.size) + 256
    t = mem[64] + 96
    while idx < _419:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_385 + 32] = (32 * _419) + 96
    _675 = mem[ceil32(return_data.size) + 288]
    mem[_385 + (32 * _419) + 96] = mem[ceil32(return_data.size) + 288]
    mem[_385 + (32 * _419) + 128 len 32 * _675] = mem[ceil32(return_data.size) + 320 len 32 * _675]
    return memory
      from mem[64]
       len _385 + (32 * _419) + (32 * _675) + -mem[64] + 128
}



}
