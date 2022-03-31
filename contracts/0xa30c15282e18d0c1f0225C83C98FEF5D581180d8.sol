contract main {




// =====================  Runtime code  =====================


address stor1;
address owner;
uint256 stor4;
uint256 stor5;
address stor6;
address stor7;
address stor8;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function flashBorrow(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    call arg1.borrow(address rg1, uint256 rg2, uint256 rg3, uint16 rg4, address rg5) with:
         gas gas_remaining wei
        args 0, 0, arg3, 1, 0, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function flashWithdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.withdraw(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args stor7, stor4, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.withdraw(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args stor8, stor5, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function flashRepay(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor6, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.repay(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
         gas gas_remaining wei
        args address(arg2), arg3, 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9d239979(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = stor7
    mem[160] = stor8
    mem[192] = 2
    stor4 = arg1
    stor5 = arg2
    idx = 0
    s = 128
    t = 676
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.flashLoan(address rg1, address[] rg2, uint256[] rg3, uint256[] rg4, address rg5, bytes rg6, uint16 rg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 320, 416, address(this.address), 512, 0, 2, mem[676 len 64], 2, arg1, arg2 >> 256, 2, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function flashDeposit(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor8)
    call stor8.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor6, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor7)
    call stor7.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor6, stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
         gas gas_remaining wei
        args stor8, stor5, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.deposit(address rg1, uint256 rg2, address rg3, uint16 rg4) with:
         gas gas_remaining wei
        args stor7, stor4, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rugPull() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg2.length
        if cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)] < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg1.length
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = stor1
        mem[mem[64] + 36] = cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        call address(cd[((32 * idx) + arg1 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, cd[((32 * idx) + arg2 + 36)] + cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        idx = idx + 1
        continue 
    return 1
}



}
