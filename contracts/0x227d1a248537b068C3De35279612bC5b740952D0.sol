contract main {




// =====================  Runtime code  =====================


#
#  - sub_bfdc4a26(?)
#
address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
mapping of uint256 sub_1a9a35e6;

function sub_1a9a35e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1a9a35e6[arg1]
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0b9b1f9a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = address(arg1)
}

function sub_e77f6820(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
}

function sub_f66c5f2a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function sub_a66392d5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1a9a35e6[address(arg1)] = arg2
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

function sub_d633b9ff(?) {
    require ext_code.size(stor3)
    staticcall stor3.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0], ext_call.return_data[32]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3419ba23(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_492b1718(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor3)
    call stor3.0x2dad97d4 with:
         gas gas_remaining wei
        args address(arg1), -1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2dad97d4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor3)
    call stor3.0x2dad97d4 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7707c039(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    return ext_call.return_data[12 len 20], address(ext_call.return_data[32]), address(ext_call.return_data[64])
}

function sub_441211d2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor3)
    call stor3.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, 0, -1, arg2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function repay(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor3)
    call stor3.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[arg3.length + ceil32(arg3.length) + 128] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
}

function sub_554994f2(?) {
    require ext_code.size(stor3)
    staticcall stor3.getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[64] <= ext_call.return_data[32]:
        if ext_call.return_data[64] >= ext_call.return_data[32]:
            return 0
        if ext_call.return_data[64] > ext_call.return_data[32]:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, ext_call.return_data[32] - ext_call.return_data[64]
    if ext_call.return_data[32] > ext_call.return_data[64]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[64] >= ext_call.return_data[32]:
        return ext_call.return_data[64] - ext_call.return_data[32], 0
    if ext_call.return_data[64] > ext_call.return_data[32]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ext_call.return_data[64] - ext_call.return_data[32], ext_call.return_data[32] - ext_call.return_data[64]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'Invalid address'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Insufficient funds'
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient funds'
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Native transfer failed.'
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit LogWithdraw(arg2, msg.sender, arg1);
}

function withdrawTo(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg3:
        revert with 0, 'Invalid address'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'Insufficient funds'
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient funds'
    if not arg1:
        call arg3 with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Native transfer failed.'
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    emit LogWithdraw(arg2, arg3, arg1);
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args address(arg1), arg2, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5369e7f0(?) {
    require calldata.size - 4 >= 96
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 0x28530a4700000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 164] = uint8(cd[4])
    require ext_code.size(stor3)
    call stor3.setUserEMode(uint8 arg1) with:
         gas gas_remaining wei
        args (cd[4] << 248)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        sub_1a9a35e6[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        idx = idx + 1
        continue 
}

function sub_456528b4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor3)
    call stor3.0x2dad97d4 with:
         gas gas_remaining wei
        args address(arg1), -1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < -1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), -1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_ac0e5b5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[32]):
        if not address(ext_call.return_data[64]):
            return ext_call.return_data[0], 0
        require ext_code.size(address(ext_call.return_data[64]))
        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not address(ext_call.return_data[64]):
        return ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[64]))
    staticcall address(ext_call.return_data[64]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ext_call.return_data[0], 2 * ext_call.return_data[0]
}

function sub_46016506(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[76 len 20]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 192] = 0x236300dc00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 128
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0x236300dc with:
         gas gas_remaining wei
        args Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), arg2, address(this.address), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return 0
}

function withdrawAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not msg.sender:
            revert with 0, 'Invalid address'
        if not arg1:
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'Insufficient funds'
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < eth.balance(this.address):
                revert with 0, 'Insufficient funds'
        if not arg1:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Native transfer failed.'
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        emit LogWithdraw(eth.balance(this.address), msg.sender, arg1);
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not msg.sender:
            revert with 0, 'Invalid address'
        if not arg1:
            if eth.balance(this.address) < ext_call.return_data[0]:
                revert with 0, 'Insufficient funds'
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'Insufficient funds'
        if not arg1:
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Native transfer failed.'
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        emit LogWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function withdrawAllTo(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not arg2:
            revert with 0, 'Invalid address'
        if not arg1:
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'Insufficient funds'
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < eth.balance(this.address):
                revert with 0, 'Insufficient funds'
        if not arg1:
            call arg2 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Native transfer failed.'
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        emit LogWithdraw(eth.balance(this.address), arg2, arg1);
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            revert with 0, 'Invalid address'
        if not arg1:
            if eth.balance(this.address) < ext_call.return_data[0]:
                revert with 0, 'Insufficient funds'
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'Insufficient funds'
        if not arg1:
            call arg2 with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Native transfer failed.'
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        emit LogWithdraw(ext_call.return_data[0], arg2, arg1);
}

function sub_077d97d7(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _58 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
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
            mem[s + _82] = mem[s + _81 + 32]
            _75 = mem[96]
            s = s + 32
            continue 
        if ceil32(_83) <= _83:
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _83 + _82 + -mem[64] - 4]
            if return_data.size:
                _92 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_92] = return_data.size
                mem[_92 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_83 + _82] = 0
            call address(_77).mem[mem[64] len 4] with:
               value _79 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _83 + _82 + -mem[64] - 4]
            if return_data.size:
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_93] = return_data.size
                mem[_93 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        _75 = mem[96]
        idx = idx + 1
        continue 
}

function borrow(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    mem[196] = 0
    mem[228] = this.address
    require ext_code.size(stor3)
    call stor3.borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, 0, address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[32]):
        if address(ext_call.return_data[64]):
            require ext_code.size(address(ext_call.return_data[64]))
            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] != 0:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'Dangerous LF reached'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'Dangerous LF reached'
    else:
        require ext_code.size(address(ext_call.return_data[32]))
        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not address(ext_call.return_data[64]):
            if ext_call.return_data[0] != 0:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'Dangerous LF reached'
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < ext_call.return_data[0]:
                    revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[64]))
            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 2 * ext_call.return_data[0] != 0:
                if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                    revert with 0, 'Dangerous LF reached'
                if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -ext_call.return_data[0]:
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                else:
                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(6 * ceil32(return_data.size)) + 197 len 31]
                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
}

function claimAllRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner == msg.sender:
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[76 len 20]
        mem[ceil32(return_data.size) + 192] = 0xbb492bf500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 228] = this.address
        require ext_code.size(stor2)
        call stor2.0xbb492bf5 with:
             gas gas_remaining wei
            args Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64]), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 64
        _54 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _56 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        require return_data.size >= _54 + (32 * _56) + 32
        idx = 0
        s = ceil32(return_data.size) + _54 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _56:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[76 len 20]
        mem[ceil32(return_data.size) + 192] = 0xbb492bf500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 228] = this.address
        require ext_code.size(stor2)
        call stor2.0xbb492bf5 with:
             gas gas_remaining wei
            args Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64]), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 64
        _55 = mem[ceil32(return_data.size) + 192 len 4], 0
        require mem[ceil32(return_data.size) + 192 len 4], 0 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 223 < ceil32(return_data.size) + return_data.size + 192
        _57 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]) + 224
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 0 + 192]
        require return_data.size >= _55 + (32 * _57) + 32
        idx = 0
        s = ceil32(return_data.size) + _55 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _57:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    require mem[ceil32(return_data.size) + 224] <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 223
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192] <= test266151307()
    require mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192]) + 32 >= mem[64] and mem[64] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192]) + 32 <= test266151307()
    require return_data.size >= mem[ceil32(return_data.size) + 224] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224] + 192]) + 32
}

function claimRewards(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner == msg.sender:
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        mem[ceil32(return_data.size) + 96] = 0x6657732f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        staticcall stor2.0x6657732f with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _22 = mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64
        require mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
        _24 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]) + 128 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]) + 128
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]
        require return_data.size >= _22 + (32 * _24) + 32
        idx = 0
        s = ceil32(return_data.size) + _22 + 128
        t = (2 * ceil32(return_data.size)) + 128
        while idx < _24:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 0 < _24
        _92 = mem[(2 * ceil32(return_data.size)) + 128]
        _94 = mem[64]
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64] + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        require 0 < mem[_94]
        mem[_94 + 32] = ext_call.return_data[12 len 20]
        require 1 < mem[_94]
        mem[_94 + 64] = ext_call.return_data[76 len 20]
        mem[_94 + ceil32(return_data.size) + 100] = this.address
        require ext_code.size(address(_92))
        staticcall address(_92).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_94 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _94 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        mem[_94 + (2 * ceil32(return_data.size)) + 96] = 0x236300dc00000000000000000000000000000000000000000000000000000000
        mem[_94 + (2 * ceil32(return_data.size)) + 100] = 128
        mem[_94 + (2 * ceil32(return_data.size)) + 228] = mem[_94]
        idx = 0
        s = _94 + 32
        t = _94 + (2 * ceil32(return_data.size)) + 260
        while idx < mem[_94]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0x236300dc with:
             gas gas_remaining wei
            args 128, arg2, address(this.address), address(_92), mem[_94 + (2 * ceil32(return_data.size)) + 228 len (32 * mem[_94]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_92))
        staticcall address(_92).0x70a08231 with:
                gas gas_remaining wei
               args this.address
    else:
        mem[0] = msg.sender
        mem[32] = 1
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        mem[ceil32(return_data.size) + 96] = 0x6657732f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        staticcall stor2.0x6657732f with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _23 = mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64
        require mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
        _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96] <= test266151307()
        require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]) + 128 <= test266151307()
        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]) + 128
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]
        require return_data.size >= _23 + (32 * _25) + 32
        idx = 0
        s = ceil32(return_data.size) + _23 + 128
        t = (2 * ceil32(return_data.size)) + 128
        while idx < _25:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require 0 < _25
        _93 = mem[(2 * ceil32(return_data.size)) + 128]
        _95 = mem[64]
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64] + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        require 0 < mem[_95]
        mem[_95 + 32] = ext_call.return_data[12 len 20]
        require 1 < mem[_95]
        mem[_95 + 64] = ext_call.return_data[76 len 20]
        mem[_95 + ceil32(return_data.size) + 100] = this.address
        require ext_code.size(address(_93))
        staticcall address(_93).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_95 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _95 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        mem[_95 + (2 * ceil32(return_data.size)) + 96] = 0x236300dc00000000000000000000000000000000000000000000000000000000
        mem[_95 + (2 * ceil32(return_data.size)) + 100] = 128
        mem[_95 + (2 * ceil32(return_data.size)) + 228] = mem[_95]
        idx = 0
        s = _95 + 32
        t = _95 + (2 * ceil32(return_data.size)) + 260
        while idx < mem[_95]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor2)
        call stor2.0x236300dc with:
             gas gas_remaining wei
            args 128, arg2, address(this.address), address(_93), mem[_95 + (2 * ceil32(return_data.size)) + 228 len (32 * mem[_95]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(_93))
        staticcall address(_93).0x70a08231 with:
                gas gas_remaining wei
               args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function withdrawSupply(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        require ext_code.size(stor3)
        call stor3.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[32]):
            if address(ext_call.return_data[64]):
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not address(ext_call.return_data[64]):
                if ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 2 * ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -ext_call.return_data[0]:
                        if 0 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
                    else:
                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(10 * ceil32(return_data.size)) + 197 len 31]
                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor3)
        call stor3.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), arg2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[32]):
            if address(ext_call.return_data[64]):
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not address(ext_call.return_data[64]):
                if ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 2 * ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -ext_call.return_data[0]:
                        if 0 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
                    else:
                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(11 * ceil32(return_data.size)) + 197 len 31]
                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
}

function sub_f598388c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= -1:
        require ext_code.size(stor3)
        call stor3.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), -1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[32]):
            if address(ext_call.return_data[64]):
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not address(ext_call.return_data[64]):
                if ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 2 * ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -ext_call.return_data[0]:
                        if 0 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
                    else:
                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(10 * ceil32(return_data.size)) + 197 len 31]
                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor3)
        call stor3.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), -1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor4)
        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[32]):
            if address(ext_call.return_data[64]):
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(ext_call.return_data[32]))
            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not address(ext_call.return_data[64]):
                if ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[64]))
                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 2 * ext_call.return_data[0] != 0:
                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                        revert with 0, 'Dangerous LF reached'
                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -ext_call.return_data[0]:
                        if 0 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
                    else:
                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(11 * ceil32(return_data.size)) + 197 len 31]
                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
}

function sub_507c9ff0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor4)
    staticcall stor4.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    if not address(ext_call.return_data[32]):
        if not address(ext_call.return_data[64]):
            require ext_code.size(stor3)
            staticcall stor3.getUserEMode(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(stor3)
                staticcall stor3.getConfiguration(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[30 len 2]:
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 197 len 31]
                        else:
                            return 0
                    else:
                        return 0
                if 10^18 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] != 10^18:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(6 * ceil32(return_data.size)) + 197 len 31]
                if not ext_call.return_data[0]:
                    return 0
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[30 len 2] / 10000:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(6 * ceil32(return_data.size)) + 197 len 31]
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= 0:
                    if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 0:
                        return 0
                    if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, -10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18
                if 0 > 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 0:
                    return 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18, 0
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18, 
                       -10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18
            mem[(4 * ceil32(return_data.size)) + 96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 100] = uint8(ext_call.return_data[0])
            require ext_code.size(stor3)
            staticcall stor3.getEModeCategoryData(uint8 arg1) with:
                    gas gas_remaining wei
                   args uint8(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _41 = mem[(4 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216
            require mem[(4 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 <= test266151307()
            require return_data.size - mem[(4 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 >= 160
            require bool((6 * ceil32(return_data.size)) + 256 <= test266151307())
            mem[64] = (6 * ceil32(return_data.size)) + 256
            require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 96] == mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 126 len 2]
            mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 96]
            require mem[(4 * ceil32(return_data.size)) + _41 + 128] == mem[(4 * ceil32(return_data.size)) + _41 + 158 len 2]
            mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _41 + 128]
            require mem[(4 * ceil32(return_data.size)) + _41 + 160] == mem[(4 * ceil32(return_data.size)) + _41 + 190 len 2]
            mem[(6 * ceil32(return_data.size)) + 160] = mem[(4 * ceil32(return_data.size)) + _41 + 160]
            require mem[(4 * ceil32(return_data.size)) + _41 + 192] == mem[(4 * ceil32(return_data.size)) + _41 + 204 len 20]
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + _41 + 192]
            _84 = mem[(4 * ceil32(return_data.size)) + _41 + 224]
            require mem[(4 * ceil32(return_data.size)) + _41 + 224] <= test266151307()
            require (4 * ceil32(return_data.size)) + _41 + mem[(4 * ceil32(return_data.size)) + _41 + 224] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
            _95 = mem[(4 * ceil32(return_data.size)) + _41 + mem[(4 * ceil32(return_data.size)) + _41 + 224] + 96]
            require mem[(4 * ceil32(return_data.size)) + _41 + mem[(4 * ceil32(return_data.size)) + _41 + 224] + 96] <= test266151307()
            require ceil32(mem[(4 * ceil32(return_data.size)) + _41 + mem[(4 * ceil32(return_data.size)) + _41 + 224] + 96]) + 192 >= 160 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + _41 + mem[(4 * ceil32(return_data.size)) + _41 + 224] + 96]) + 288 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + _41 + mem[(4 * ceil32(return_data.size)) + _41 + 224] + 96]) + 288
            mem[(6 * ceil32(return_data.size)) + 256] = mem[(4 * ceil32(return_data.size)) + _41 + mem[(4 * ceil32(return_data.size)) + _41 + 224] + 96]
            require _41 + _84 + _95 + 32 <= return_data.size
            mem[(6 * ceil32(return_data.size)) + 288 len ceil32(_95)] = mem[(4 * ceil32(return_data.size)) + _41 + _84 + 128 len ceil32(_95)]
            if ceil32(_95) <= _95:
                mem[(6 * ceil32(return_data.size)) + 224] = (6 * ceil32(return_data.size)) + 256
                _761 = mem[(6 * ceil32(return_data.size)) + 96]
                if not mem[(6 * ceil32(return_data.size)) + 126 len 2]:
                    if ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        else:
                            return 0
                    else:
                        return 0
                if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / mem[(6 * ceil32(return_data.size)) + 126 len 2] != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not ext_call.return_data[0]:
                    return 0
                if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= 0:
                    if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 0:
                        return 0
                    if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, -10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18
                if 0 > 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 0:
                    mem[mem[64]] = 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18
                    return mem[mem[64]], 0
                if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64]] = 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18
                return mem[mem[64]], -10^18 * uint16(_761) / 10000 * ext_call.return_data[0] / 10^18
            mem[_95 + (6 * ceil32(return_data.size)) + 288] = 0
            mem[(6 * ceil32(return_data.size)) + 224] = (6 * ceil32(return_data.size)) + 256
            _762 = mem[(6 * ceil32(return_data.size)) + 96]
            if not mem[(6 * ceil32(return_data.size)) + 126 len 2]:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    else:
                        return 0
                else:
                    return 0
            if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / mem[(6 * ceil32(return_data.size)) + 126 len 2] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= 0:
                if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 0:
                    return 0
                if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, -10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18
            if 0 > 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 0:
                mem[mem[64]] = 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18
                return mem[mem[64]], 0
            if 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64]] = 10^18 * mem[(6 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18
            return mem[mem[64]], -10^18 * uint16(_762) / 10000 * ext_call.return_data[0] / 10^18
        require ext_code.size(address(ext_call.return_data[64]))
        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(stor3)
        staticcall stor3.getUserEMode(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor3)
            staticcall stor3.getConfiguration(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[30 len 2]:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(7 * ceil32(return_data.size)) + 197 len 31]
                if 0 <= ext_call.return_data[0]:
                    if 0 >= ext_call.return_data[0]:
                        return 0
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 >= ext_call.return_data[0]:
                    return -ext_call.return_data[0], 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0], ext_call.return_data[0]
            if 10^18 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(7 * ceil32(return_data.size)) + 197 len 31]
            if not ext_call.return_data[0]:
                if 0 <= ext_call.return_data[0]:
                    if 0 >= ext_call.return_data[0]:
                        return 0
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 >= ext_call.return_data[0]:
                    return -ext_call.return_data[0], 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0], ext_call.return_data[0]
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[30 len 2] / 10000:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(7 * ceil32(return_data.size)) + 197 len 31]
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                    return 0
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0] - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
            if ext_call.return_data[0] > 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0], 0
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0], 
                   ext_call.return_data[0] - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
        mem[(6 * ceil32(return_data.size)) + 96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 100] = uint8(ext_call.return_data[0])
        require ext_code.size(stor3)
        staticcall stor3.getEModeCategoryData(uint8 arg1) with:
                gas gas_remaining wei
               args uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _69 = mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216
        require mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 <= test266151307()
        require return_data.size - mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 >= 160
        require bool((7 * ceil32(return_data.size)) + 256 <= test266151307())
        mem[64] = (7 * ceil32(return_data.size)) + 256
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 96] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 126 len 2]
        mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 96]
        require mem[(6 * ceil32(return_data.size)) + _69 + 128] == mem[(6 * ceil32(return_data.size)) + _69 + 158 len 2]
        mem[(7 * ceil32(return_data.size)) + 128] = mem[(6 * ceil32(return_data.size)) + _69 + 128]
        require mem[(6 * ceil32(return_data.size)) + _69 + 160] == mem[(6 * ceil32(return_data.size)) + _69 + 190 len 2]
        mem[(7 * ceil32(return_data.size)) + 160] = mem[(6 * ceil32(return_data.size)) + _69 + 160]
        require mem[(6 * ceil32(return_data.size)) + _69 + 192] == mem[(6 * ceil32(return_data.size)) + _69 + 204 len 20]
        mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + _69 + 192]
        _118 = mem[(6 * ceil32(return_data.size)) + _69 + 224]
        require mem[(6 * ceil32(return_data.size)) + _69 + 224] <= test266151307()
        require (6 * ceil32(return_data.size)) + _69 + mem[(6 * ceil32(return_data.size)) + _69 + 224] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
        _137 = mem[(6 * ceil32(return_data.size)) + _69 + mem[(6 * ceil32(return_data.size)) + _69 + 224] + 96]
        require mem[(6 * ceil32(return_data.size)) + _69 + mem[(6 * ceil32(return_data.size)) + _69 + 224] + 96] <= test266151307()
        require ceil32(mem[(6 * ceil32(return_data.size)) + _69 + mem[(6 * ceil32(return_data.size)) + _69 + 224] + 96]) + 192 >= 160 and (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + _69 + mem[(6 * ceil32(return_data.size)) + _69 + 224] + 96]) + 288 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + _69 + mem[(6 * ceil32(return_data.size)) + _69 + 224] + 96]) + 288
        mem[(7 * ceil32(return_data.size)) + 256] = mem[(6 * ceil32(return_data.size)) + _69 + mem[(6 * ceil32(return_data.size)) + _69 + 224] + 96]
        require _69 + _118 + _137 + 32 <= return_data.size
        mem[(7 * ceil32(return_data.size)) + 288 len ceil32(_137)] = mem[(6 * ceil32(return_data.size)) + _69 + _118 + 128 len ceil32(_137)]
        if ceil32(_137) <= _137:
            mem[(7 * ceil32(return_data.size)) + 224] = (7 * ceil32(return_data.size)) + 256
            _763 = mem[(7 * ceil32(return_data.size)) + 96]
            if not mem[(7 * ceil32(return_data.size)) + 126 len 2]:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 <= ext_call.return_data[0]:
                    if 0 >= ext_call.return_data[0]:
                        return 0
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 >= ext_call.return_data[0]:
                    return -ext_call.return_data[0], 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0], ext_call.return_data[0]
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / mem[(7 * ceil32(return_data.size)) + 126 len 2] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not ext_call.return_data[0]:
                if 0 <= ext_call.return_data[0]:
                    if 0 >= ext_call.return_data[0]:
                        return 0
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 >= ext_call.return_data[0]:
                    return -ext_call.return_data[0], 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0], ext_call.return_data[0]
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0]:
                if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                    return 0
                if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 
                       ext_call.return_data[0] - (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18)
            if ext_call.return_data[0] > 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                mem[mem[64]] = (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
                return mem[mem[64]], 0
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64]] = (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
            return mem[mem[64]], ext_call.return_data[0] - (10^18 * uint16(_763) / 10000 * ext_call.return_data[0] / 10^18)
        mem[_137 + (7 * ceil32(return_data.size)) + 288] = 0
        mem[(7 * ceil32(return_data.size)) + 224] = (7 * ceil32(return_data.size)) + 256
        _764 = mem[(7 * ceil32(return_data.size)) + 96]
        if not mem[(7 * ceil32(return_data.size)) + 126 len 2]:
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 <= ext_call.return_data[0]:
                if 0 >= ext_call.return_data[0]:
                    return 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0]:
                return -ext_call.return_data[0], 0
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0], ext_call.return_data[0]
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / mem[(7 * ceil32(return_data.size)) + 126 len 2] != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ext_call.return_data[0]:
            if 0 <= ext_call.return_data[0]:
                if 0 >= ext_call.return_data[0]:
                    return 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0]:
                return -ext_call.return_data[0], 0
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0], ext_call.return_data[0]
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0]:
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                return 0
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 
                   ext_call.return_data[0] - (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] > 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
            mem[mem[64]] = (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
            return mem[mem[64]], 0
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64]] = (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
        return mem[mem[64]], ext_call.return_data[0] - (10^18 * uint16(_764) / 10000 * ext_call.return_data[0] / 10^18)
    require ext_code.size(address(ext_call.return_data[32]))
    staticcall address(ext_call.return_data[32]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    if not address(ext_call.return_data[64]):
        require ext_code.size(stor3)
        staticcall stor3.getUserEMode(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor3)
            staticcall stor3.getConfiguration(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[30 len 2]:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(7 * ceil32(return_data.size)) + 197 len 31]
                if 0 <= ext_call.return_data[0]:
                    if 0 >= ext_call.return_data[0]:
                        return 0
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 >= ext_call.return_data[0]:
                    return -ext_call.return_data[0], 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0], ext_call.return_data[0]
            if 10^18 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] != 10^18:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(7 * ceil32(return_data.size)) + 197 len 31]
            if not ext_call.return_data[0]:
                if 0 <= ext_call.return_data[0]:
                    if 0 >= ext_call.return_data[0]:
                        return 0
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 >= ext_call.return_data[0]:
                    return -ext_call.return_data[0], 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0], ext_call.return_data[0]
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[30 len 2] / 10000:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(7 * ceil32(return_data.size)) + 197 len 31]
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0]:
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                    return 0
                if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0] - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
            if ext_call.return_data[0] > 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0], 0
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0], 
                   ext_call.return_data[0] - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
        mem[(6 * ceil32(return_data.size)) + 96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 100] = uint8(ext_call.return_data[0])
        require ext_code.size(stor3)
        staticcall stor3.getEModeCategoryData(uint8 arg1) with:
                gas gas_remaining wei
               args uint8(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _71 = mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216
        require mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 <= test266151307()
        require return_data.size - mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 >= 160
        require bool((7 * ceil32(return_data.size)) + 256 <= test266151307())
        mem[64] = (7 * ceil32(return_data.size)) + 256
        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 96] == mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 126 len 2]
        mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 96]
        require mem[(6 * ceil32(return_data.size)) + _71 + 128] == mem[(6 * ceil32(return_data.size)) + _71 + 158 len 2]
        mem[(7 * ceil32(return_data.size)) + 128] = mem[(6 * ceil32(return_data.size)) + _71 + 128]
        require mem[(6 * ceil32(return_data.size)) + _71 + 160] == mem[(6 * ceil32(return_data.size)) + _71 + 190 len 2]
        mem[(7 * ceil32(return_data.size)) + 160] = mem[(6 * ceil32(return_data.size)) + _71 + 160]
        require mem[(6 * ceil32(return_data.size)) + _71 + 192] == mem[(6 * ceil32(return_data.size)) + _71 + 204 len 20]
        mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + _71 + 192]
        _121 = mem[(6 * ceil32(return_data.size)) + _71 + 224]
        require mem[(6 * ceil32(return_data.size)) + _71 + 224] <= test266151307()
        require (6 * ceil32(return_data.size)) + _71 + mem[(6 * ceil32(return_data.size)) + _71 + 224] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
        _138 = mem[(6 * ceil32(return_data.size)) + _71 + mem[(6 * ceil32(return_data.size)) + _71 + 224] + 96]
        require mem[(6 * ceil32(return_data.size)) + _71 + mem[(6 * ceil32(return_data.size)) + _71 + 224] + 96] <= test266151307()
        require ceil32(mem[(6 * ceil32(return_data.size)) + _71 + mem[(6 * ceil32(return_data.size)) + _71 + 224] + 96]) + 192 >= 160 and (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + _71 + mem[(6 * ceil32(return_data.size)) + _71 + 224] + 96]) + 288 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + _71 + mem[(6 * ceil32(return_data.size)) + _71 + 224] + 96]) + 288
        mem[(7 * ceil32(return_data.size)) + 256] = _138
        require _71 + _121 + _138 + 32 <= return_data.size
        mem[(7 * ceil32(return_data.size)) + 288 len ceil32(_138)] = mem[(6 * ceil32(return_data.size)) + _71 + _121 + 128 len ceil32(_138)]
        if ceil32(_138) <= _138:
            mem[(7 * ceil32(return_data.size)) + 224] = (7 * ceil32(return_data.size)) + 256
            _765 = mem[(7 * ceil32(return_data.size)) + 96]
            if not mem[(7 * ceil32(return_data.size)) + 126 len 2]:
                if ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 <= ext_call.return_data[0]:
                    if 0 >= ext_call.return_data[0]:
                        return 0
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 >= ext_call.return_data[0]:
                    return -ext_call.return_data[0], 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0], ext_call.return_data[0]
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / mem[(7 * ceil32(return_data.size)) + 126 len 2] != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not ext_call.return_data[0]:
                if 0 <= ext_call.return_data[0]:
                    if 0 >= ext_call.return_data[0]:
                        return 0
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, ext_call.return_data[0]
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 >= ext_call.return_data[0]:
                    return -ext_call.return_data[0], 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -ext_call.return_data[0], ext_call.return_data[0]
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0]:
                if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                    return 0
                if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 
                       ext_call.return_data[0] - (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18)
            if ext_call.return_data[0] > 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                mem[mem[64]] = (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
                return mem[mem[64]], 0
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64]] = (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
            return mem[mem[64]], ext_call.return_data[0] - (10^18 * uint16(_765) / 10000 * ext_call.return_data[0] / 10^18)
        mem[_138 + (7 * ceil32(return_data.size)) + 288] = 0
        mem[(7 * ceil32(return_data.size)) + 224] = (7 * ceil32(return_data.size)) + 256
        _766 = mem[(7 * ceil32(return_data.size)) + 96]
        if not mem[(7 * ceil32(return_data.size)) + 126 len 2]:
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 <= ext_call.return_data[0]:
                if 0 >= ext_call.return_data[0]:
                    return 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0]:
                return -ext_call.return_data[0], 0
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0], ext_call.return_data[0]
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / mem[(7 * ceil32(return_data.size)) + 126 len 2] != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ext_call.return_data[0]:
            if 0 <= ext_call.return_data[0]:
                if 0 >= ext_call.return_data[0]:
                    return 0
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, ext_call.return_data[0]
            if ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= ext_call.return_data[0]:
                return -ext_call.return_data[0], 0
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -ext_call.return_data[0], ext_call.return_data[0]
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0]:
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
                return 0
            if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 
                   ext_call.return_data[0] - (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] > 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0]:
            mem[mem[64]] = (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
            return mem[mem[64]], 0
        if 10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64]] = (10^18 * mem[(7 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
        return mem[mem[64]], ext_call.return_data[0] - (10^18 * uint16(_766) / 10000 * ext_call.return_data[0] / 10^18)
    require ext_code.size(address(ext_call.return_data[64]))
    staticcall address(ext_call.return_data[64]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor3)
    staticcall stor3.getUserEMode(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor3)
        staticcall stor3.getConfiguration(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[30 len 2]:
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(8 * ceil32(return_data.size)) + 197 len 31]
            if 0 <= 2 * ext_call.return_data[0]:
                if 0 >= 2 * ext_call.return_data[0]:
                    return 0
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 2 * ext_call.return_data[0]
            if 2 * ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= 2 * ext_call.return_data[0]:
                return -2 * ext_call.return_data[0], 0
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
        if 10^18 * ext_call.return_data[30 len 2] / ext_call.return_data[30 len 2] != 10^18:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(8 * ceil32(return_data.size)) + 197 len 31]
        if not ext_call.return_data[0]:
            if 0 <= 2 * ext_call.return_data[0]:
                if 0 >= 2 * ext_call.return_data[0]:
                    return 0
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 2 * ext_call.return_data[0]
            if 2 * ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= 2 * ext_call.return_data[0]:
                return -2 * ext_call.return_data[0], 0
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[30 len 2] / 10000:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(8 * ceil32(return_data.size)) + 197 len 31]
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= 2 * ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 2 * ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, (2 * ext_call.return_data[0]) - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
        if 2 * ext_call.return_data[0] > 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 2 * ext_call.return_data[0]:
            return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - (2 * ext_call.return_data[0]), 0
        if 10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (10^18 * ext_call.return_data[30 len 2] / 10000 * ext_call.return_data[0] / 10^18) - (2 * ext_call.return_data[0]), 
               (2 * ext_call.return_data[0]) - (10^18 * uint16(ext_call.return_data[0]) / 10000 * ext_call.return_data[0] / 10^18)
    mem[(7 * ceil32(return_data.size)) + 96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 100] = uint8(ext_call.return_data[0])
    require ext_code.size(stor3)
    staticcall stor3.getEModeCategoryData(uint8 arg1) with:
            gas gas_remaining wei
           args uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _100 = mem[(7 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216
    require mem[(7 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 <= test266151307()
    require return_data.size - mem[(7 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 >= 160
    require bool((8 * ceil32(return_data.size)) + 256 <= test266151307())
    mem[64] = (8 * ceil32(return_data.size)) + 256
    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 96] == mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 126 len 2]
    mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], uint8(ext_call.return_data[0]) << 216 + 96]
    require mem[(7 * ceil32(return_data.size)) + _100 + 128] == mem[(7 * ceil32(return_data.size)) + _100 + 158 len 2]
    mem[(8 * ceil32(return_data.size)) + 128] = mem[(7 * ceil32(return_data.size)) + _100 + 128]
    require mem[(7 * ceil32(return_data.size)) + _100 + 160] == mem[(7 * ceil32(return_data.size)) + _100 + 190 len 2]
    mem[(8 * ceil32(return_data.size)) + 160] = mem[(7 * ceil32(return_data.size)) + _100 + 160]
    require mem[(7 * ceil32(return_data.size)) + _100 + 192] == mem[(7 * ceil32(return_data.size)) + _100 + 204 len 20]
    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + _100 + 192]
    _197 = mem[(7 * ceil32(return_data.size)) + _100 + 224]
    require mem[(7 * ceil32(return_data.size)) + _100 + 224] <= test266151307()
    require (7 * ceil32(return_data.size)) + _100 + mem[(7 * ceil32(return_data.size)) + _100 + 224] + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
    _246 = mem[(7 * ceil32(return_data.size)) + _100 + mem[(7 * ceil32(return_data.size)) + _100 + 224] + 96]
    require mem[(7 * ceil32(return_data.size)) + _100 + mem[(7 * ceil32(return_data.size)) + _100 + 224] + 96] <= test266151307()
    require ceil32(mem[(7 * ceil32(return_data.size)) + _100 + mem[(7 * ceil32(return_data.size)) + _100 + 224] + 96]) + 192 >= 160 and (8 * ceil32(return_data.size)) + ceil32(mem[(7 * ceil32(return_data.size)) + _100 + mem[(7 * ceil32(return_data.size)) + _100 + 224] + 96]) + 288 <= test266151307()
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(mem[(7 * ceil32(return_data.size)) + _100 + mem[(7 * ceil32(return_data.size)) + _100 + 224] + 96]) + 288
    mem[(8 * ceil32(return_data.size)) + 256] = mem[(7 * ceil32(return_data.size)) + _100 + mem[(7 * ceil32(return_data.size)) + _100 + 224] + 96]
    require _100 + _197 + _246 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 288 len ceil32(_246)] = mem[(7 * ceil32(return_data.size)) + _100 + _197 + 128 len ceil32(_246)]
    if ceil32(_246) <= _246:
        mem[(8 * ceil32(return_data.size)) + 224] = (8 * ceil32(return_data.size)) + 256
        _767 = mem[(8 * ceil32(return_data.size)) + 96]
        if not mem[(8 * ceil32(return_data.size)) + 126 len 2]:
            if ext_call.return_data[0]:
                if 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 <= 2 * ext_call.return_data[0]:
                if 0 >= 2 * ext_call.return_data[0]:
                    return 0
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 2 * ext_call.return_data[0]
            if 2 * ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= 2 * ext_call.return_data[0]:
                return -2 * ext_call.return_data[0], 0
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
        if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / mem[(8 * ceil32(return_data.size)) + 126 len 2] != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not ext_call.return_data[0]:
            if 0 <= 2 * ext_call.return_data[0]:
                if 0 >= 2 * ext_call.return_data[0]:
                    return 0
                if 0 > 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 2 * ext_call.return_data[0]
            if 2 * ext_call.return_data[0] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 >= 2 * ext_call.return_data[0]:
                return -2 * ext_call.return_data[0], 0
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return -2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
        if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= 2 * ext_call.return_data[0]:
            if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 2 * ext_call.return_data[0]:
                return 0
            if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 
                   (2 * ext_call.return_data[0]) - (10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18)
        if 2 * ext_call.return_data[0] > 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 2 * ext_call.return_data[0]:
            mem[mem[64]] = (10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - (2 * ext_call.return_data[0])
            return mem[mem[64]], 0
        if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64]] = (10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - (2 * ext_call.return_data[0])
        return mem[mem[64]], (2 * ext_call.return_data[0]) - (10^18 * uint16(_767) / 10000 * ext_call.return_data[0] / 10^18)
    mem[_246 + (8 * ceil32(return_data.size)) + 288] = 0
    mem[(8 * ceil32(return_data.size)) + 224] = (8 * ceil32(return_data.size)) + 256
    _768 = mem[(8 * ceil32(return_data.size)) + 96]
    if not mem[(8 * ceil32(return_data.size)) + 126 len 2]:
        if ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 0 <= 2 * ext_call.return_data[0]:
            if 0 >= 2 * ext_call.return_data[0]:
                return 0
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 2 * ext_call.return_data[0]
        if 2 * ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 >= 2 * ext_call.return_data[0]:
            return -2 * ext_call.return_data[0], 0
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return -2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
    if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / mem[(8 * ceil32(return_data.size)) + 126 len 2] != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not ext_call.return_data[0]:
        if 0 <= 2 * ext_call.return_data[0]:
            if 0 >= 2 * ext_call.return_data[0]:
                return 0
            if 0 > 2 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 2 * ext_call.return_data[0]
        if 2 * ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 >= 2 * ext_call.return_data[0]:
            return -2 * ext_call.return_data[0], 0
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return -2 * ext_call.return_data[0], 2 * ext_call.return_data[0]
    if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 <= 2 * ext_call.return_data[0]:
        if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 2 * ext_call.return_data[0]:
            return 0
        if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, 
               (2 * ext_call.return_data[0]) - (10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18)
    if 2 * ext_call.return_data[0] > 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 >= 2 * ext_call.return_data[0]:
        mem[mem[64]] = (10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - (2 * ext_call.return_data[0])
        return mem[mem[64]], 0
    if 10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[mem[64]] = (10^18 * mem[(8 * ceil32(return_data.size)) + 126 len 2] / 10000 * ext_call.return_data[0] / 10^18) - (2 * ext_call.return_data[0])
    return mem[mem[64]], (2 * ext_call.return_data[0]) - (10^18 * uint16(_768) / 10000 * ext_call.return_data[0] / 10^18)
}

function sub_9183ca03(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor1[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7745786563757461626c653a2063616c6c6572206973206e6f7420746865206578656375746f,
                        mem[202 len 26]
    if not arg2:
        if 10^18 == arg3:
            require ext_code.size(stor3)
            call stor3.0x2dad97d4 with:
                 gas gas_remaining wei
                args address(arg1), -1, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            staticcall stor4.getReserveTokensAddresses(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_call.return_data[32] == ext_call.return_data[44 len 20]
            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[32]):
                if address(ext_call.return_data[64]):
                    require ext_code.size(address(ext_call.return_data[64]))
                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] != 0:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[32]))
                staticcall address(ext_call.return_data[32]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not address(ext_call.return_data[64]):
                    if ext_call.return_data[0] != 0:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
                else:
                    require ext_code.size(address(ext_call.return_data[64]))
                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] != 0:
                        if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                            revert with 0, 'Dangerous LF reached'
                        if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not -ext_call.return_data[0]:
                            if 0 < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                        else:
                            if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(7 * ceil32(return_data.size)) + 197 len 31]
                            if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(stor4)
            staticcall stor4.getReserveTokensAddresses(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_call.return_data[32] == ext_call.return_data[44 len 20]
            require ext_call.return_data[64] == ext_call.return_data[76 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[32]):
                if not address(ext_call.return_data[64]):
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor3)
                        call stor3.0x2dad97d4 with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], arg4
                    else:
                        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(2 * ceil32(return_data.size)) + 197 len 31]
                        if ext_call.return_data[0] > arg3 * ext_call.return_data[0] / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (arg3 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor3)
                        call stor3.0x2dad97d4 with:
                             gas gas_remaining wei
                            args address(arg1), -(arg3 * ext_call.return_data[0] / 10^18) + ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    staticcall stor4.getReserveTokensAddresses(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[32]):
                        if address(ext_call.return_data[64]):
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[32]))
                        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not address(ext_call.return_data[64]):
                            if ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 2 * ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -ext_call.return_data[0]:
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                else:
                                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(10 * ceil32(return_data.size)) + 197 len 31]
                                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                else:
                    require ext_code.size(address(ext_call.return_data[64]))
                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor3)
                    call stor3.0x2dad97d4 with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    staticcall stor4.getReserveTokensAddresses(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[32]):
                        if address(ext_call.return_data[64]):
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[32]))
                        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not address(ext_call.return_data[64]):
                            if ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 2 * ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -ext_call.return_data[0]:
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                else:
                                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(11 * ceil32(return_data.size)) + 197 len 31]
                                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(address(ext_call.return_data[32]))
                staticcall address(ext_call.return_data[32]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not address(ext_call.return_data[64]):
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(stor3)
                    call stor3.0x2dad97d4 with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    staticcall stor4.getReserveTokensAddresses(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[32]):
                        if address(ext_call.return_data[64]):
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[32]))
                        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not address(ext_call.return_data[64]):
                            if ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 2 * ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -ext_call.return_data[0]:
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                else:
                                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(11 * ceil32(return_data.size)) + 197 len 31]
                                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                else:
                    require ext_code.size(address(ext_call.return_data[64]))
                    staticcall address(ext_call.return_data[64]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -ext_call.return_data[0]:
                        if -ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor3)
                        call stor3.0x2dad97d4 with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], arg4
                    else:
                        if (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / -ext_call.return_data[0] != arg3:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 197 len 31]
                        if -ext_call.return_data[0] > (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18) - ext_call.return_data[0] > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor3)
                        call stor3.0x2dad97d4 with:
                             gas gas_remaining wei
                            args address(arg1), -((ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18) + ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    staticcall stor4.getReserveTokensAddresses(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[32]):
                        if address(ext_call.return_data[64]):
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[32]))
                        staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not address(ext_call.return_data[64]):
                            if ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[64]))
                            staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 2 * ext_call.return_data[0] != 0:
                                if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                                if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -ext_call.return_data[0]:
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                else:
                                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(12 * ceil32(return_data.size)) + 197 len 31]
                                    if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
    else:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg2:
            mem[ceil32(return_data.size) + 196] = 0
            require ext_code.size(stor3)
            call stor3.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(arg1), arg2, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 10^18 == arg3:
                require ext_code.size(stor3)
                call stor3.0x2dad97d4 with:
                     gas gas_remaining wei
                    args address(arg1), -1, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[32]):
                    if address(ext_call.return_data[64]):
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] != 0:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                else:
                    require ext_code.size(address(ext_call.return_data[32]))
                    staticcall address(ext_call.return_data[32]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not address(ext_call.return_data[64]):
                        if ext_call.return_data[0] != 0:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 2 * ext_call.return_data[0] != 0:
                            if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                            if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -ext_call.return_data[0]:
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                            else:
                                if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(8 * ceil32(return_data.size)) + 197 len 31]
                                if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(stor4)
                staticcall stor4.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[32]):
                    if not address(ext_call.return_data[64]):
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(stor3)
                            call stor3.0x2dad97d4 with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], arg4
                        else:
                            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(4 * ceil32(return_data.size)) + 197 len 31]
                            if ext_call.return_data[0] > arg3 * ext_call.return_data[0] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (arg3 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(stor3)
                            call stor3.0x2dad97d4 with:
                                 gas gas_remaining wei
                                args address(arg1), -(arg3 * ext_call.return_data[0] / 10^18) + ext_call.return_data[0], arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[32]):
                            if address(ext_call.return_data[64]):
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[32]))
                            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not address(ext_call.return_data[64]):
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                            else:
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 2 * ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -ext_call.return_data[0]:
                                        if 0 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                                    else:
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(11 * ceil32(return_data.size)) + 197 len 31]
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor3)
                        call stor3.0x2dad97d4 with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[32]):
                            if address(ext_call.return_data[64]):
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[32]))
                            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not address(ext_call.return_data[64]):
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                            else:
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 2 * ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -ext_call.return_data[0]:
                                        if 0 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                                    else:
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(12 * ceil32(return_data.size)) + 197 len 31]
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                else:
                    require ext_code.size(address(ext_call.return_data[32]))
                    staticcall address(ext_call.return_data[32]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not address(ext_call.return_data[64]):
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor3)
                        call stor3.0x2dad97d4 with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[32]):
                            if address(ext_call.return_data[64]):
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[32]))
                            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not address(ext_call.return_data[64]):
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                            else:
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 2 * ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -ext_call.return_data[0]:
                                        if 0 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                                    else:
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(12 * ceil32(return_data.size)) + 197 len 31]
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not -ext_call.return_data[0]:
                            if -ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(stor3)
                            call stor3.0x2dad97d4 with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], arg4
                        else:
                            if (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / -ext_call.return_data[0] != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(7 * ceil32(return_data.size)) + 197 len 31]
                            if -ext_call.return_data[0] > (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ((ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18) - ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(stor3)
                            call stor3.0x2dad97d4 with:
                                 gas gas_remaining wei
                                args address(arg1), -((ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18) + ext_call.return_data[0], arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[32]):
                            if address(ext_call.return_data[64]):
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[32]))
                            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not address(ext_call.return_data[64]):
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                            else:
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 2 * ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -ext_call.return_data[0]:
                                        if 0 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                                    else:
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(13 * ceil32(return_data.size)) + 197 len 31]
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
        else:
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor3, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            require ext_code.size(stor3)
            call stor3.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(arg1), arg2, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 10^18 == arg3:
                require ext_code.size(stor3)
                call stor3.0x2dad97d4 with:
                     gas gas_remaining wei
                    args address(arg1), -1, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[32]):
                    if address(ext_call.return_data[64]):
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] != 0:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                else:
                    require ext_code.size(address(ext_call.return_data[32]))
                    staticcall address(ext_call.return_data[32]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not address(ext_call.return_data[64]):
                        if ext_call.return_data[0] != 0:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 2 * ext_call.return_data[0] != 0:
                            if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                revert with 0, 'Dangerous LF reached'
                            if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -ext_call.return_data[0]:
                                if 0 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
                            else:
                                if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(10 * ceil32(return_data.size)) + 197 len 31]
                                if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                    revert with 0, 'Dangerous LF reached'
            else:
                require ext_code.size(stor4)
                staticcall stor4.getReserveTokensAddresses(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[32]):
                    if not address(ext_call.return_data[64]):
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0]:
                            if ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(stor3)
                            call stor3.0x2dad97d4 with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], arg4
                        else:
                            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 197 len 31]
                            if ext_call.return_data[0] > arg3 * ext_call.return_data[0] / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (arg3 * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(stor3)
                            call stor3.0x2dad97d4 with:
                                 gas gas_remaining wei
                                args address(arg1), -(arg3 * ext_call.return_data[0] / 10^18) + ext_call.return_data[0], arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[32]):
                            if address(ext_call.return_data[64]):
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[32]))
                            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not address(ext_call.return_data[64]):
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                            else:
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 2 * ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -ext_call.return_data[0]:
                                        if 0 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                                    else:
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(12 * ceil32(return_data.size)) + 197 len 31]
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor3)
                        call stor3.0x2dad97d4 with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[32]):
                            if address(ext_call.return_data[64]):
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[32]))
                            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not address(ext_call.return_data[64]):
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                            else:
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 2 * ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -ext_call.return_data[0]:
                                        if 0 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                                    else:
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(13 * ceil32(return_data.size)) + 197 len 31]
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                else:
                    require ext_code.size(address(ext_call.return_data[32]))
                    staticcall address(ext_call.return_data[32]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not address(ext_call.return_data[64]):
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(stor3)
                        call stor3.0x2dad97d4 with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0], arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[32]):
                            if address(ext_call.return_data[64]):
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[32]))
                            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not address(ext_call.return_data[64]):
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                            else:
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 2 * ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -ext_call.return_data[0]:
                                        if 0 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                                    else:
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(13 * ceil32(return_data.size)) + 197 len 31]
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                    else:
                        require ext_code.size(address(ext_call.return_data[64]))
                        staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not -ext_call.return_data[0]:
                            if -ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(stor3)
                            call stor3.0x2dad97d4 with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0], arg4
                        else:
                            if (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / -ext_call.return_data[0] != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(8 * ceil32(return_data.size)) + 197 len 31]
                            if -ext_call.return_data[0] > (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ((ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18) - ext_call.return_data[0] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(stor3)
                            call stor3.0x2dad97d4 with:
                                 gas gas_remaining wei
                                args address(arg1), -((ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) - (ext_call.return_data[0] * arg3) / 10^18) + ext_call.return_data[0], arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.getReserveTokensAddresses(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                        require ext_call.return_data[64] == ext_call.return_data[76 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not address(ext_call.return_data[32]):
                            if address(ext_call.return_data[64]):
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                        else:
                            require ext_code.size(address(ext_call.return_data[32]))
                            staticcall address(ext_call.return_data[32]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not address(ext_call.return_data[64]):
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 < ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                            else:
                                require ext_code.size(address(ext_call.return_data[64]))
                                staticcall address(ext_call.return_data[64]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 2 * ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0] < 2 * ext_call.return_data[0]:
                                        revert with 0, 'Dangerous LF reached'
                                    if 2 * ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -ext_call.return_data[0]:
                                        if 0 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
                                    else:
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / -ext_call.return_data[0] != sub_1a9a35e6[address(arg1)]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(14 * ceil32(return_data.size)) + 197 len 31]
                                        if (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) - (ext_call.return_data[0] * sub_1a9a35e6[address(arg1)]) / 10^18 < ext_call.return_data[0]:
                                            revert with 0, 'Dangerous LF reached'
}



}
