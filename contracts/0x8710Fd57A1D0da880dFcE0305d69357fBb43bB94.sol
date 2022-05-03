contract main {




// =====================  Runtime code  =====================


#
#  - sub_3419ba23(?)
#  - approveToken(address arg1, address arg2, uint256 arg3)
#
address owner;
mapping of uint8 stor1;
uint32 stor10;
uint256 stor10; offset 32
uint256 stor10;
address stor2;
uint32 stor3;
address stor3;
address stor4;
address sub_17fcb39bAddress;
array of uint8 stor6;
uint256 stor7;
address stor8;
address stor9;

function sub_17fcb39b(?) {
    return sub_17fcb39bAddress
}

function sub_336e00c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor6.length
    return bool(stor('array', ('div', 0.03125, ('param', 'arg1')), ('name', 'stor6', 6))[uint8(arg1)])
}

function owner() {
    return owner
}

function executors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
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
    stor7 = arg1
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor10.field_0) = arg1
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

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor8)
    call stor8.0xe2bbb158 with:
         gas gas_remaining wei
        args uint256(stor10.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(stor8)
    call stor8.0x441a3e70 with:
         gas gas_remaining wei
        args uint256(stor10.field_0), arg1
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
    call sub_17fcb39bAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    require ext_code.size(sub_17fcb39bAddress)
    call sub_17fcb39bAddress.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a683bfba(?) {
    require ext_code.size(stor8)
    staticcall stor8.0x93f1a40b with:
            gas gas_remaining wei
           args uint256(stor10.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 224 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function sub_f53cdbcb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = address(arg1)
    require ext_code.size(stor8)
    staticcall stor8.joe() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor9 = ext_call.return_data[12 len 20]
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
    require ext_code.size(stor8)
    call stor8.0x441a3e70 with:
         gas gas_remaining wei
        args uint256(stor10.field_0), arg1
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
    stor6.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor6.length + 31 / 32 > idx:
            uint8(stor6[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            uint256(stor6) = bool(mem[idx]) * 256^s or !(255 * 256^s) and uint256(stor6)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        s = sha3(6)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5 * None + 3 / 32)
        while stor6.length + 31 / 32 > idx:
            uint8(stor6[idx]) = 0
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
            if (100 * arg2) - (stor7 * arg2) / arg2 != -stor7 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, 0, (100 * arg2) - (stor7 * arg2) / 100, address(this.address), block.timestamp + 300
    else:
        require arg1
        if (100 * arg1) - (stor7 * arg1) / arg1 != -stor7 + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, (100 * arg1) - (stor7 * arg1) / 100, 0, address(this.address), block.timestamp + 300
        else:
            require arg2
            if (100 * arg2) - (stor7 * arg2) / arg2 != -stor7 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, (100 * arg1) - (stor7 * arg1) / 100, (100 * arg2) - (stor7 * arg2) / 100, address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    emit AddLiquidity(ext_call.return_data[0], ext_call.return_data[32], msg.sender);
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'Invalid address'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Insufficient funds'
        call msg.sender with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Native transfer failed.'
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient funds'
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit LogWithdraw(arg2, msg.sender, arg1);
}

function withdrawTo(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        revert with 0, 'Invalid address'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Insufficient funds'
        call arg3 with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Native transfer failed.'
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient funds'
        mem[ceil32(return_data.size) + 132] = arg3
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit LogWithdraw(arg2, arg3, arg1);
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
            if (100 * arg2) - (stor7 * arg2) / arg2 != -stor7 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, 0, (100 * arg2) - (stor7 * arg2) / 100, address(this.address), block.timestamp + 300
    else:
        require arg1
        if (100 * arg1) - (stor7 * arg1) / arg1 != -stor7 + 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg2:
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, (100 * arg1) - (stor7 * arg1) / 100, 0, address(this.address), block.timestamp + 300
        else:
            require arg2
            if (100 * arg2) - (stor7 * arg2) / arg2 != -stor7 + 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(stor2)
            call stor2.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args 0, uint32(stor3), stor4, arg1, arg2, (100 * arg1) - (stor7 * arg1) / 100, (100 * arg2) - (stor7 * arg2) / 100, address(this.address), block.timestamp + 300
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
    require ext_code.size(stor8)
    call stor8.0xe2bbb158 with:
         gas gas_remaining wei
        args uint256(stor10.field_0), ext_call.return_data[64]
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

function sub_0a973176(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor10.field_0)
    mem[132] = this.address
    require ext_code.size(stor8)
    staticcall stor8.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor10.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], Mask(224, 0, stor10.field_32)
    require mem[96 len 4], Mask(224, 0, stor10.field_32) == mem[96 len 4], Mask(224, 0, stor10.field_32)
    require uint32(stor10.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
    _6 = 0, mem[164 len 28]
    require 0, mem[164 len 28] <= test266151307()
    require 0, mem[164 len 28] + 127 < return_data.size + 96
    _7 = mem[0, mem[164 len 28] + 96]
    require mem[0, mem[164 len 28] + 96] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[0, mem[164 len 28] + 96]) + 128 <= test266151307() and ceil32(mem[0, mem[164 len 28] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + ceil32(mem[0, mem[164 len 28] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        _129 = mem[192]
        require mem[192] == mem[192]
        if not this.address:
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131 + 64] = 1
            mem[64] = _131 + 128
            require 0 < mem[_131]
            mem[_131 + 32] = stor9
            mem[_131 + 96] = _4
            if not arg1:
                mem[_131 + 128] = 64
                mem[_131 + 192] = mem[_131]
                idx = 0
                s = _131 + 32
                t = _131 + 224
                while idx < mem[_131]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_131 + 160] = (32 * mem[_131]) + 96
                mem[_131 + (32 * mem[_131]) + 224] = 1
                mem[_131 + (32 * mem[_131]) + 256] = _4
                return memory
                  from mem[64]
                   len _131 + (32 * mem[_131]) + -mem[64] + 288
            idx = 0
            while idx < 1:
                require idx < mem[_131]
                _259 = mem[(32 * idx) + _131 + 32]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_259))
                staticcall address(_259).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_296] == mem[_296]
                require idx < mem[_131 + 64]
                if mem[(32 * idx) + _131 + 96] + mem[_296] < mem[(32 * idx) + _131 + 96]:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[_131 + 64]
                mem[(32 * idx) + _131 + 96] = mem[(32 * idx) + _131 + 96] + mem[_296]
                idx = idx + 1
                continue 
            _267 = mem[64]
            mem[mem[64]] = 64
            _275 = mem[_131]
            mem[mem[64] + 64] = mem[_131]
            idx = 0
            s = _131 + 32
            t = mem[64] + 96
            while idx < _275:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_267 + 32] = (32 * _275) + 96
            _347 = mem[_131 + 64]
            mem[_267 + (32 * _275) + 96] = mem[_131 + 64]
            mem[_267 + (32 * _275) + 128 len 32 * _347] = mem[_131 + 96 len 32 * _347]
            return memory
              from mem[64]
               len _267 + (32 * _275) + (32 * _347) + -mem[64] + 128
        _132 = mem[64]
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[mem[64] + 96] = 2
        mem[64] = mem[64] + 192
        require 0 < mem[_132]
        mem[_132 + 32] = stor9
        require 0 < mem[_132 + 96]
        mem[_132 + 128] = _4
        require 1 < mem[_132]
        mem[_132 + 64] = address(this.address) << 64
        require 1 < mem[_132 + 96]
        mem[_132 + 160] = _129
        if not arg1:
            mem[_132 + 192] = 64
            mem[_132 + 256] = mem[_132]
            idx = 0
            s = _132 + 32
            t = _132 + 288
            while idx < mem[_132]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_132 + 224] = (32 * mem[_132]) + 96
            mem[_132 + (32 * mem[_132]) + 288] = mem[_132 + 96]
            mem[_132 + (32 * mem[_132]) + 320 len 32 * mem[_132 + 96]] = mem[_132 + 128 len 32 * mem[_132 + 96]]
            return memory
              from mem[64]
               len _132 + (32 * mem[_132]) + (32 * mem[_132 + 96]) + -mem[64] + 320
        _248 = mem[_132 + 96]
        idx = 0
        while idx < _248:
            require idx < mem[_132]
            _261 = mem[(32 * idx) + _132 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_261))
            staticcall address(_261).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_298] == mem[_298]
            require idx < mem[_132 + 96]
            if mem[(32 * idx) + _132 + 128] + mem[_298] < mem[(32 * idx) + _132 + 128]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[_132 + 96]
            mem[(32 * idx) + _132 + 128] = mem[(32 * idx) + _132 + 128] + mem[_298]
            idx = idx + 1
            continue 
        _268 = mem[64]
        mem[mem[64]] = 64
        _276 = mem[_132]
        mem[mem[64] + 64] = mem[_132]
        idx = 0
        s = _132 + 32
        t = mem[64] + 96
        while idx < _276:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_268 + 32] = (32 * _276) + 96
        _348 = mem[_132 + 96]
        mem[_268 + (32 * _276) + 96] = mem[_132 + 96]
        mem[_268 + (32 * _276) + 128 len 32 * _348] = mem[_132 + 128 len 32 * _348]
        return memory
          from mem[64]
           len _268 + (32 * _276) + (32 * _348) + -mem[64] + 128
    mem[ceil32(return_data.size) + _7 + 128] = 0
    _130 = mem[192]
    require mem[192] == mem[192]
    if not this.address:
        _133 = mem[64]
        mem[64] = mem[64] + 64
        mem[_133 + 64] = 1
        mem[64] = _133 + 128
        require 0 < mem[_133]
        mem[_133 + 32] = stor9
        mem[_133 + 96] = _4
        if not arg1:
            mem[_133 + 128] = 64
            mem[_133 + 192] = mem[_133]
            idx = 0
            s = _133 + 32
            t = _133 + 224
            while idx < mem[_133]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_133 + 160] = (32 * mem[_133]) + 96
            mem[_133 + (32 * mem[_133]) + 224] = 1
            mem[_133 + (32 * mem[_133]) + 256] = _4
            return memory
              from mem[64]
               len _133 + (32 * mem[_133]) + -mem[64] + 288
        idx = 0
        while idx < 1:
            require idx < mem[_133]
            _263 = mem[(32 * idx) + _133 + 32]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_263))
            staticcall address(_263).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_300] == mem[_300]
            require idx < mem[_133 + 64]
            if mem[(32 * idx) + _133 + 96] + mem[_300] < mem[(32 * idx) + _133 + 96]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[_133 + 64]
            mem[(32 * idx) + _133 + 96] = mem[(32 * idx) + _133 + 96] + mem[_300]
            idx = idx + 1
            continue 
        _269 = mem[64]
        mem[mem[64]] = 64
        _277 = mem[_133]
        mem[mem[64] + 64] = mem[_133]
        idx = 0
        s = _133 + 32
        t = mem[64] + 96
        while idx < _277:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_269 + 32] = (32 * _277) + 96
        _349 = mem[_133 + 64]
        mem[_269 + (32 * _277) + 96] = mem[_133 + 64]
        mem[_269 + (32 * _277) + 128 len 32 * _349] = mem[_133 + 96 len 32 * _349]
        return memory
          from mem[64]
           len _269 + (32 * _277) + (32 * _349) + -mem[64] + 128
    _134 = mem[64]
    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
    mem[mem[64] + 96] = 2
    mem[64] = mem[64] + 192
    require 0 < mem[_134]
    mem[_134 + 32] = stor9
    require 0 < mem[_134 + 96]
    mem[_134 + 128] = _4
    require 1 < mem[_134]
    mem[_134 + 64] = address(this.address) << 64
    require 1 < mem[_134 + 96]
    mem[_134 + 160] = _130
    if not arg1:
        mem[_134 + 192] = 64
        mem[_134 + 256] = mem[_134]
        idx = 0
        s = _134 + 32
        t = _134 + 288
        while idx < mem[_134]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_134 + 224] = (32 * mem[_134]) + 96
        mem[_134 + (32 * mem[_134]) + 288] = mem[_134 + 96]
        mem[_134 + (32 * mem[_134]) + 320 len 32 * mem[_134 + 96]] = mem[_134 + 128 len 32 * mem[_134 + 96]]
        return memory
          from mem[64]
           len _134 + (32 * mem[_134]) + (32 * mem[_134 + 96]) + -mem[64] + 320
    _250 = mem[_134 + 96]
    idx = 0
    while idx < _250:
        require idx < mem[_134]
        _265 = mem[(32 * idx) + _134 + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_265))
        staticcall address(_265).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_302] == mem[_302]
        require idx < mem[_134 + 96]
        if mem[(32 * idx) + _134 + 128] + mem[_302] < mem[(32 * idx) + _134 + 128]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < mem[_134 + 96]
        mem[(32 * idx) + _134 + 128] = mem[(32 * idx) + _134 + 128] + mem[_302]
        idx = idx + 1
        continue 
    _270 = mem[64]
    mem[mem[64]] = 64
    _278 = mem[_134]
    mem[mem[64] + 64] = mem[_134]
    idx = 0
    s = _134 + 32
    t = mem[64] + 96
    while idx < _278:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_270 + 32] = (32 * _278) + 96
    _350 = mem[_134 + 96]
    mem[_270 + (32 * _278) + 96] = mem[_134 + 96]
    mem[_270 + (32 * _278) + 128 len 32 * _350] = mem[_134 + 128 len 32 * _350]
    return memory
      from mem[64]
       len _270 + (32 * _278) + (32 * _350) + -mem[64] + 128
}

function claimRewards() {
    if owner == msg.sender:
        mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(stor10.field_0)
        mem[132] = this.address
        require ext_code.size(stor8)
        staticcall stor8.pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args uint256(stor10.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        _10 = mem[96 len 4], Mask(224, 0, stor10.field_32)
        require mem[96 len 4], Mask(224, 0, stor10.field_32) == mem[96 len 4], Mask(224, 0, stor10.field_32)
        require uint32(stor10.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
        _14 = 0, mem[164 len 28]
        require 0, mem[164 len 28] <= test266151307()
        require 0, mem[164 len 28] + 127 < return_data.size + 96
        _16 = mem[0, mem[164 len 28] + 96]
        require mem[0, mem[164 len 28] + 96] <= test266151307()
        require ceil32(return_data.size) + ceil32(mem[0, mem[164 len 28] + 96]) + 128 <= test266151307() and ceil32(mem[0, mem[164 len 28] + 96]) + 32 >= 0
        mem[64] = ceil32(return_data.size) + ceil32(mem[0, mem[164 len 28] + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _16
        require _14 + _16 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_16)] = mem[_14 + 128 len ceil32(_16)]
        if ceil32(_16) <= _16:
            _220 = mem[192]
            require mem[192] == mem[192]
            if not this.address:
                _224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_224 + 64] = 1
                mem[64] = _224 + 128
                require 0 < mem[_224]
                mem[_224 + 32] = stor9
                mem[_224 + 96] = _10
                mem[_224 + 128] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                mem[_224 + 132] = uint256(stor10.field_0)
                mem[_224 + 164] = 0
                require ext_code.size(stor8)
                call stor8.0xe2bbb158 with:
                     gas gas_remaining wei
                    args uint256(stor10.field_0), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[_224]
                idx = 0
                while idx < _416:
                    require idx < stor6.length
                    mem[0] = 6
                    if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                        require idx < 1
                        _448 = mem[(32 * idx) + _224 + 96]
                        if owner != msg.sender:
                            mem[0] = msg.sender
                            mem[32] = 1
                            if not stor1[address(msg.sender)]:
                                revert with 0, 'Executable: caller is not the executor'
                        mem[_224 + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                        require ext_code.size(sub_17fcb39bAddress)
                        call sub_17fcb39bAddress.deposit() with:
                           value _448 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
                mem[_224 + 128] = 64
                mem[_224 + 192] = mem[_224]
                idx = 0
                s = _224 + 32
                t = _224 + 224
                while idx < mem[_224]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_224 + 160] = (32 * mem[_224]) + 96
                mem[_224 + (32 * mem[_224]) + 224] = 1
                mem[_224 + (32 * mem[_224]) + 256] = _10
                return memory
                  from mem[64]
                   len _224 + (32 * mem[_224]) + -mem[64] + 288
            _225 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 96] = 2
            mem[64] = mem[64] + 192
            require 0 < mem[_225]
            mem[_225 + 32] = stor9
            require 0 < mem[_225 + 96]
            mem[_225 + 128] = _10
            require 1 < mem[_225]
            mem[_225 + 64] = address(this.address) << 64
            require 1 < mem[_225 + 96]
            mem[_225 + 160] = _220
            mem[_225 + 192] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[_225 + 196] = uint256(stor10.field_0)
            mem[_225 + 228] = 0
            require ext_code.size(stor8)
            call stor8.0xe2bbb158 with:
                 gas gas_remaining wei
                args uint256(stor10.field_0), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[_225]
            idx = 0
            while idx < _417:
                require idx < stor6.length
                mem[0] = 6
                if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                    require idx < mem[_225 + 96]
                    _449 = mem[(32 * idx) + _225 + 128]
                    if owner != msg.sender:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if not stor1[address(msg.sender)]:
                            revert with 0, 'Executable: caller is not the executor'
                    mem[_225 + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_17fcb39bAddress)
                    call sub_17fcb39bAddress.deposit() with:
                       value _449 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[_225 + 192] = 64
            mem[_225 + 256] = mem[_225]
            idx = 0
            s = _225 + 32
            t = _225 + 288
            while idx < mem[_225]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_225 + 224] = (32 * mem[_225]) + 96
            mem[_225 + (32 * mem[_225]) + 288] = mem[_225 + 96]
            mem[_225 + (32 * mem[_225]) + 320 len 32 * mem[_225 + 96]] = mem[_225 + 128 len 32 * mem[_225 + 96]]
            return memory
              from mem[64]
               len _225 + (32 * mem[_225]) + (32 * mem[_225 + 96]) + -mem[64] + 320
        mem[ceil32(return_data.size) + _16 + 128] = 0
        _222 = mem[192]
        require mem[192] == mem[192]
        if not this.address:
            _228 = mem[64]
            mem[64] = mem[64] + 64
            mem[_228 + 64] = 1
            mem[64] = _228 + 128
            require 0 < mem[_228]
            mem[_228 + 32] = stor9
            mem[_228 + 96] = _10
            mem[_228 + 128] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[_228 + 132] = uint256(stor10.field_0)
            mem[_228 + 164] = 0
            require ext_code.size(stor8)
            call stor8.0xe2bbb158 with:
                 gas gas_remaining wei
                args uint256(stor10.field_0), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _418 = mem[_228]
            idx = 0
            while idx < _418:
                require idx < stor6.length
                mem[0] = 6
                if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                    require idx < 1
                    _450 = mem[(32 * idx) + _228 + 96]
                    if owner != msg.sender:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if not stor1[address(msg.sender)]:
                            revert with 0, 'Executable: caller is not the executor'
                    mem[_228 + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_17fcb39bAddress)
                    call sub_17fcb39bAddress.deposit() with:
                       value _450 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[_228 + 128] = 64
            mem[_228 + 192] = mem[_228]
            idx = 0
            s = _228 + 32
            t = _228 + 224
            while idx < mem[_228]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_228 + 160] = (32 * mem[_228]) + 96
            mem[_228 + (32 * mem[_228]) + 224] = 1
            mem[_228 + (32 * mem[_228]) + 256] = _10
            return memory
              from mem[64]
               len _228 + (32 * mem[_228]) + -mem[64] + 288
        _229 = mem[64]
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[mem[64] + 96] = 2
        mem[64] = mem[64] + 192
        require 0 < mem[_229]
        mem[_229 + 32] = stor9
        require 0 < mem[_229 + 96]
        mem[_229 + 128] = _10
        require 1 < mem[_229]
        mem[_229 + 64] = address(this.address) << 64
        require 1 < mem[_229 + 96]
        mem[_229 + 160] = _222
        mem[_229 + 192] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[_229 + 196] = uint256(stor10.field_0)
        mem[_229 + 228] = 0
        require ext_code.size(stor8)
        call stor8.0xe2bbb158 with:
             gas gas_remaining wei
            args uint256(stor10.field_0), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _419 = mem[_229]
        idx = 0
        while idx < _419:
            require idx < stor6.length
            mem[0] = 6
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                require idx < mem[_229 + 96]
                _451 = mem[(32 * idx) + _229 + 128]
                if owner != msg.sender:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if not stor1[address(msg.sender)]:
                        revert with 0, 'Executable: caller is not the executor'
                mem[_229 + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_17fcb39bAddress)
                call sub_17fcb39bAddress.deposit() with:
                   value _451 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[_229 + 192] = 64
        mem[_229 + 256] = mem[_229]
        idx = 0
        s = _229 + 32
        t = _229 + 288
        while idx < mem[_229]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_229 + 224] = (32 * mem[_229]) + 96
        mem[_229 + (32 * mem[_229]) + 288] = mem[_229 + 96]
        mem[_229 + (32 * mem[_229]) + 320 len 32 * mem[_229 + 96]] = mem[_229 + 128 len 32 * mem[_229 + 96]]
        return memory
          from mem[64]
           len _229 + (32 * mem[_229]) + (32 * mem[_229 + 96]) + -mem[64] + 320
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Executable: caller is not the executor'
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor10.field_0)
    mem[132] = this.address
    require ext_code.size(stor8)
    staticcall stor8.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor10.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _11 = mem[96 len 4], Mask(224, 0, stor10.field_32)
    require mem[96 len 4], Mask(224, 0, stor10.field_32) == mem[96 len 4], Mask(224, 0, stor10.field_32)
    require uint32(stor10.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
    _15 = 0, mem[164 len 28]
    require 0, mem[164 len 28] <= test266151307()
    require 0, mem[164 len 28] + 127 < return_data.size + 96
    _17 = mem[0, mem[164 len 28] + 96]
    require mem[0, mem[164 len 28] + 96] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[0, mem[164 len 28] + 96]) + 128 <= test266151307() and ceil32(mem[0, mem[164 len 28] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + ceil32(mem[0, mem[164 len 28] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _17
    require _15 + _17 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_17)] = mem[_15 + 128 len ceil32(_17)]
    if ceil32(_17) <= _17:
        _221 = mem[192]
        require mem[192] == mem[192]
        if not this.address:
            _226 = mem[64]
            mem[64] = mem[64] + 64
            mem[_226 + 64] = 1
            mem[64] = _226 + 128
            require 0 < mem[_226]
            mem[_226 + 32] = stor9
            mem[_226 + 96] = _11
            mem[_226 + 128] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[_226 + 132] = uint256(stor10.field_0)
            mem[_226 + 164] = 0
            require ext_code.size(stor8)
            call stor8.0xe2bbb158 with:
                 gas gas_remaining wei
                args uint256(stor10.field_0), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _420 = mem[_226]
            idx = 0
            while idx < _420:
                require idx < stor6.length
                mem[0] = 6
                if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                    require idx < 1
                    _452 = mem[(32 * idx) + _226 + 96]
                    if owner != msg.sender:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if not stor1[address(msg.sender)]:
                            revert with 0, 'Executable: caller is not the executor'
                    mem[_226 + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(sub_17fcb39bAddress)
                    call sub_17fcb39bAddress.deposit() with:
                       value _452 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[_226 + 128] = 64
            mem[_226 + 192] = mem[_226]
            idx = 0
            s = _226 + 32
            t = _226 + 224
            while idx < mem[_226]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_226 + 160] = (32 * mem[_226]) + 96
            mem[_226 + (32 * mem[_226]) + 224] = 1
            mem[_226 + (32 * mem[_226]) + 256] = _11
            return memory
              from mem[64]
               len _226 + (32 * mem[_226]) + -mem[64] + 288
        _227 = mem[64]
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[mem[64] + 96] = 2
        mem[64] = mem[64] + 192
        require 0 < mem[_227]
        mem[_227 + 32] = stor9
        require 0 < mem[_227 + 96]
        mem[_227 + 128] = _11
        require 1 < mem[_227]
        mem[_227 + 64] = address(this.address) << 64
        require 1 < mem[_227 + 96]
        mem[_227 + 160] = _221
        mem[_227 + 192] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[_227 + 196] = uint256(stor10.field_0)
        mem[_227 + 228] = 0
        require ext_code.size(stor8)
        call stor8.0xe2bbb158 with:
             gas gas_remaining wei
            args uint256(stor10.field_0), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _421 = mem[_227]
        idx = 0
        while idx < _421:
            require idx < stor6.length
            mem[0] = 6
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                require idx < mem[_227 + 96]
                _453 = mem[(32 * idx) + _227 + 128]
                if owner != msg.sender:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if not stor1[address(msg.sender)]:
                        revert with 0, 'Executable: caller is not the executor'
                mem[_227 + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_17fcb39bAddress)
                call sub_17fcb39bAddress.deposit() with:
                   value _453 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[_227 + 192] = 64
        mem[_227 + 256] = mem[_227]
        idx = 0
        s = _227 + 32
        t = _227 + 288
        while idx < mem[_227]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_227 + 224] = (32 * mem[_227]) + 96
        mem[_227 + (32 * mem[_227]) + 288] = mem[_227 + 96]
        mem[_227 + (32 * mem[_227]) + 320 len 32 * mem[_227 + 96]] = mem[_227 + 128 len 32 * mem[_227 + 96]]
        return memory
          from mem[64]
           len _227 + (32 * mem[_227]) + (32 * mem[_227 + 96]) + -mem[64] + 320
    mem[ceil32(return_data.size) + _17 + 128] = 0
    _223 = mem[192]
    require mem[192] == mem[192]
    if not this.address:
        _230 = mem[64]
        mem[64] = mem[64] + 64
        mem[_230 + 64] = 1
        mem[64] = _230 + 128
        require 0 < mem[_230]
        mem[_230 + 32] = stor9
        mem[_230 + 96] = _11
        mem[_230 + 128] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
        mem[_230 + 132] = uint256(stor10.field_0)
        mem[_230 + 164] = 0
        require ext_code.size(stor8)
        call stor8.0xe2bbb158 with:
             gas gas_remaining wei
            args uint256(stor10.field_0), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _422 = mem[_230]
        idx = 0
        while idx < _422:
            require idx < stor6.length
            mem[0] = 6
            if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
                require idx < 1
                _454 = mem[(32 * idx) + _230 + 96]
                if owner != msg.sender:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if not stor1[address(msg.sender)]:
                        revert with 0, 'Executable: caller is not the executor'
                mem[_230 + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(sub_17fcb39bAddress)
                call sub_17fcb39bAddress.deposit() with:
                   value _454 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[_230 + 128] = 64
        mem[_230 + 192] = mem[_230]
        idx = 0
        s = _230 + 32
        t = _230 + 224
        while idx < mem[_230]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_230 + 160] = (32 * mem[_230]) + 96
        mem[_230 + (32 * mem[_230]) + 224] = 1
        mem[_230 + (32 * mem[_230]) + 256] = _11
        return memory
          from mem[64]
           len _230 + (32 * mem[_230]) + -mem[64] + 288
    _231 = mem[64]
    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
    mem[mem[64] + 96] = 2
    mem[64] = mem[64] + 192
    require 0 < mem[_231]
    mem[_231 + 32] = stor9
    require 0 < mem[_231 + 96]
    mem[_231 + 128] = _11
    require 1 < mem[_231]
    mem[_231 + 64] = address(this.address) << 64
    require 1 < mem[_231 + 96]
    mem[_231 + 160] = _223
    mem[_231 + 192] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
    mem[_231 + 196] = uint256(stor10.field_0)
    mem[_231 + 228] = 0
    require ext_code.size(stor8)
    call stor8.0xe2bbb158 with:
         gas gas_remaining wei
        args uint256(stor10.field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _423 = mem[_231]
    idx = 0
    while idx < _423:
        require idx < stor6.length
        mem[0] = 6
        if stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor6', 6))[uint8(idx)]:
            require idx < mem[_231 + 96]
            _455 = mem[(32 * idx) + _231 + 128]
            if owner != msg.sender:
                mem[0] = msg.sender
                mem[32] = 1
                if not stor1[address(msg.sender)]:
                    revert with 0, 'Executable: caller is not the executor'
            mem[_231 + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_17fcb39bAddress)
            call sub_17fcb39bAddress.deposit() with:
               value _455 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[_231 + 192] = 64
    mem[_231 + 256] = mem[_231]
    idx = 0
    s = _231 + 32
    t = _231 + 288
    while idx < mem[_231]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_231 + 224] = (32 * mem[_231]) + 96
    mem[_231 + (32 * mem[_231]) + 288] = mem[_231 + 96]
    mem[_231 + (32 * mem[_231]) + 320 len 32 * mem[_231 + 96]] = mem[_231 + 128 len 32 * mem[_231 + 96]]
    return memory
      from mem[64]
       len _231 + (32 * mem[_231]) + (32 * mem[_231 + 96]) + -mem[64] + 320
}



}
